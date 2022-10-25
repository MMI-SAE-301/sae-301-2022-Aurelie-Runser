<template>
  <monHeader/>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="px-5 md:px-20" />
  </Suspense>

  <monFooter/>
</template>

<script setup lang="ts">
import monHeader from "@/components/monHeader.vue"
import monFooter from "@/components/monFooter.vue"
</script>
