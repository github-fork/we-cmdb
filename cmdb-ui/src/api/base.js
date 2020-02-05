import Vue from 'vue'
import axios from 'axios'
export const baseURL = '/wecmdb/ui/v2'
export const req = axios.create({
  withCredentials: true,
  baseURL,
  timeout: 50000
})

const throwError = res => new Error(res.message || 'error')
req.interceptors.response.use(
  res => {
    if (res.status === 200) {
      if (res.data.statusCode.startsWith('ERR')) {
        const errorMes = Array.isArray(res.data.data)
          ? res.data.data.map(_ => _.errorMessage).join('<br/>')
          : res.data.statusMessage
        Vue.prototype.$Notice.error({
          title: 'Error',
          desc: errorMes,
          duration: 0
        })
      }
      if (!res.headers['username']) {
        window.location.href = '/wecmdb/logout'
      }
      return {
        ...res.data,
        user: res.headers['username'] || ' - '
      }
    } else {
      return {
        data: throwError(res)
      }
    }
  },
  error => {
    const { response } = error
    Vue.prototype.$Notice.error({
      title: 'error',
      desc:
        (response.data &&
          'status:' +
            response.data.status +
            '<br/> error:' +
            response.data.error +
            '<br/> message:' +
            response.data.message) ||
        'error'
    })
    return new Promise((resolve, reject) => {
      resolve({
        data: throwError(error)
      })
    })
  }
)

export const setHeaders = obj => {
  Object.keys(obj).forEach(key => {
    req.defaults.headers.common[key] = obj[key]
  })
}

export const refreshToken = callback => {
  let refreshRequest = null
  const currentTime = new Date().getTime()
  let session = window.sessionStorage
  const token = JSON.parse(session.getItem('token'))
  if (token) {
    const accessToken = token.find(t => t.tokenType === 'accessToken')
    const expiration = accessToken.expiration * 1 - currentTime
    if (expiration < 1 * 60 * 1000 && !refreshRequest) {
      refreshRequest = axios.get('/auth/v1/api/token', {
        headers: {
          Authorization:
            'Bearer ' + token.find(t => t.tokenType === 'refreshToken').token
        }
      })
      refreshRequest.then(
        res => {
          session.setItem('token', JSON.stringify(res.data.data))
          callback instanceof Function && callback()
        },
        // eslint-disable-next-line handle-callback-err
        err => {
          refreshRequest = null
          window.location.href = window.location.origin + '/#/login'
        }
      )
    } else {
      callback instanceof Function && callback()
    }
  } else {
    window.location.href = window.location.origin + '/#/login'
  }
}

const sendHttpRequest = (url, callback) => {
  let xhr = new XMLHttpRequest()
  xhr.open('GET', url, true)
  // 设置请求头
  const session = window.sessionStorage
  const token = JSON.parse(session.getItem('token'))
  const accessToken =
    token && token.find(t => t.tokenType === 'accessToken')
      ? token.find(t => t.tokenType === 'accessToken').token
      : ''
  if (accessToken) {
    xhr.setRequestHeader(
      'Authorization',
      'Bearer ' + token.find(t => t.tokenType === 'accessToken').token
    )
  }
  // 设置响应类型为 blob
  xhr.responseType = 'blob'

  xhr.onload = e => {
    if (xhr.status === 200) {
      let contentDisposition = {}
      xhr
        .getResponseHeader('content-disposition')
        .split(';')
        .forEach(_ => {
          const key = _.split('=')[0]
          const value = _.split('=')[1] || ''
          contentDisposition[key] = value
        })
      const filename = contentDisposition.filename || 'CI_MODEL.JSON'
      const blob = new Blob([xhr.response])

      if ('msSaveOrOpenBlob' in navigator) {
        // Microsoft Edge and Microsoft Internet Explorer 10-11
        window.navigator.msSaveOrOpenBlob(blob, filename)
      } else {
        if ('download' in document.createElement('a')) {
          // 非IE下载
          let a = document.createElement('a')
          a.style.display = 'none'
          a.href = URL.createObjectURL(blob)
          a.download = filename
          a.click()
          // 释放之前创建的URL对象
          window.URL.revokeObjectURL(a.href)
        } else {
          navigator.msSaveOrOpenBlob(blob, filename)
        }
      }
    }
    callback instanceof Function && callback()
  }
  // 发送请求
  xhr.send()
}

export const downLoadByUrl = (url, callback) => {
  if (window.request) {
    refreshToken(() => {
      sendHttpRequest(url, callback)
    })
  } else {
    sendHttpRequest(url, callback)
  }
}
