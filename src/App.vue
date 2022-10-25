<template>
  <monHeader/>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view />
  </Suspense>

  <monFooter/>
</template>

<script setup lang="ts">
import monHeader from "@/components/monHeader.vue"
import monFooter from "@/components/monFooter.vue"
</script>
