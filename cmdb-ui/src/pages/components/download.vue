<template>
  <Button
    type="primary"
    @click="exportModel"
    class="float-right"
    :loading="loading"
  >
    <slot></slot>
  </Button>
</template>

<script>
import { downLoadByUrl } from '@/api/base.js'
export default {
  props: {
    href: {
      default: '',
      required: true
    }
  },
  data () {
    return {
      loading: false
    }
  },
  methods: {
    exportModel () {
      this.loading = true
      downLoadByUrl(this.href, () => {
        this.loading = false
      })
    }
  }
}
</script>
