<template>
  <section class="pt-40 h-screen bg-cover_phone lg:bg-cover bg-right-bottom">
    <logo class="h-16 md:h-32 xl:h-40"/>

    <div class="md:w-2/3 my-10 md:my-20">
      <h2 class="font-palatino-linotype font-bold italic text-lg xl:text-xl 2xl:text-2xl text-secondaire_claire">Le meilleur des cadeaux, une montre unique.</h2>
      <bouton_clair class="mx-auto my-10 md:my-18">Créer ma montre</bouton_clair>
    </div>
  </section>
</template>

<script setup lang="ts">
import logo from "@/components/icons/logo.vue"

import bouton_clair from "@/components/bouton_clair.vue"

</script>