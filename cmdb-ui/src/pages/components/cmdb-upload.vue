<template>
  <div class="cmdb-upload">
    <Button type="primary" @click="uploadFile">
      <slot></slot>
    </Button>
    <Upload
      :accept="fileTypes"
      :action="href"
      :headers="headers"
      name="file"
      :on-error="error"
      :on-success="success"
      ref="uploadButton"
      show-upload-list
    >
      <Button style="display:none"></Button>
    </Upload>
  </div>
</template>

<script>
import { baseURL, refreshToken } from '@/api/base.js'
export default {
  props: {
    fileTypes: {
      default: '.zip',
      required: false
    },
    href: {
      default: '',
      required: true
    }
  },
  data () {
    return {
      headers: {},
      baseURL
    }
  },
  methods: {
    uploadFile () {
      if (window.request) {
        refreshToken(() => {
          let session = window.sessionStorage
          const token = JSON.parse(session.getItem('token'))
          this.headers = {
            Authorization:
              'Bearer ' + token.find(t => t.tokenType === 'accessToken').token
          }
          this.$refs.uploadButton.handleClick()
        })
      } else {
        this.$refs.uploadButton.handleClick()
      }
    },
    error () {},
    success () {}
  }
}
</script>
