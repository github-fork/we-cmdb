<template>
  <div class="upload-model">
    <CMDBUpload
      :autoUpload="true"
      class="float-right"
      fileTypes=".json"
      :href="`${baseURL}/model/showDifferences`"
      :showButton="false"
      :onProgress="onProgress"
      :onSuccess="onSuccess"
      :onError="onError"
    >
      <template v-slot:uploadTitle>
        <span>{{ uploadTips }}</span>
      </template>
    </CMDBUpload>
    <!-- <pre v-if="currentModel.length">{{currentModel}}</pre>
    <pre v-if="incomingModel.length">{{incomingModel}}</pre> -->
  </div>
</template>

<script>
import { baseURL } from '@/api/base.js'
import CMDBUpload from '../components/cmdb-upload'

export default {
  components: {
    CMDBUpload
  },
  data () {
    return {
      baseURL,
      uploadTips: '',
      currentModel: [],
      incomingModel: []
    }
  },
  methods: {
    onError (err) {
      this.$Notice.error({
        title: 'error',
        desc:
          (err.data &&
            'status:' +
              err.data.status +
              '<br/> error:' +
              err.data.error +
              '<br/> message:' +
              err.data.message) ||
          'error'
      })
    },
    onProgress () {
      this.uploadTips = this.$t('upload_and_comparing')
    },
    onSuccess (res) {
      if (res.statusCode === 'OK') {
        this.uploadTips = this.$t('compare_success')
        this.currentModel = res.data.currentModel
        this.incomingModel = res.data.importModel
        this.$emit('readyToImport')
        this.$emit('updataImportModelData', this.incomingModel)
      } else if (res.statusCode.startsWith('ERR')) {
        const errorMes = Array.isArray(res.data)
          ? res.data.map(_ => _.errorMessage).join('<br/>')
          : res.statusMessage
        this.$Notice.error({
          title: 'Error',
          desc: errorMes,
          duration: 0
        })
      } else {
        this.$Notice.error({
          title: 'Error',
          desc: this.$t('model_upload_fail'),
          duration: 0
        })
      }
    }
  }
}
</script>
