<template>
  <div class="cmdb-upload">
    <Button type="primary" @click="uploadFile">
      <slot></slot>
    </Button>
    <Upload
      accept=".json"
      :action="`${baseURL}/model/showDifferences`"
      :headers="headers"
      name="uploadFile"
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
  // props: {
  //   fileTypes: '.zip',
  //   href: ''
  // },
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
            Authorization: 'Bearer ' + token.find(t => t.tokenType === 'accessToken').token
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
