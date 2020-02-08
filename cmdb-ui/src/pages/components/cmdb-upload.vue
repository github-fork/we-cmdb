<template>
  <div class="cmdb-upload">
    <Button type="primary" @click="uploadFile" v-show="showButton">
      <slot></slot>
    </Button>
    <Upload
      :accept="fileTypes"
      :action="href"
      :autoUpload="autoUpload"
      :headers="headers"
      name="file"
      :on-error="onError"
      :on-progress="onProgress"
      :on-success="onSuccess"
      ref="uploadButton"
      :showButton="showButton"
      show-upload-list
    >
      <slot name="uploadTitle"></slot>
    </Upload>
  </div>
</template>

<script>
import { baseURL, refreshToken } from '@/api/base.js'
export default {
  props: {
    autoUpload: {
      default: false,
      required: false
    },
    fileTypes: {
      default: '.zip',
      required: false
    },
    href: {
      default: '',
      required: true
    },
    showButton: {
      default: true,
      required: false
    },
    onError: {
      type: Function,
      required: false
    },
    onProgress: {
      type: Function,
      required: false
    },
    onSuccess: {
      type: Function,
      required: false
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
    }
  },
  mounted () {
    this.autoUpload && this.uploadFile()
  }
}
</script>
