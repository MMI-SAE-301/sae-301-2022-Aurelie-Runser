<template>
  <monHeader/>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2 border-2 p-2" />
  </Suspense>
</template>

<script setup lang="ts">
import monHeader from "@/components/monHeader.vue"
</script>
