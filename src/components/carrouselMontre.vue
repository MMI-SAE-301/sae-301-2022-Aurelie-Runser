<template>
    <div class="my-10 py-5 carousel gap-x-5 w-full">
        <p class="sr-only">Photos de 5 montre Tik Tak.</p>
        <cardMontre class="carousel-item" sr-only="Photo de la montre Tik Tak numéro 1" image="montres/montre1.jpg"/>
        <cardMontre class="carousel-item" sr-only="Photo de la montre Tik Tak numéro 2" image="montres/montre2.jpg"/>
        <cardMontre class="carousel-item" sr-only="Photo de la montre Tik Tak numéro 3" image="montres/montre3.jpg"/>
        <cardMontre class="carousel-item" sr-only="Photo de la montre Tik Tak numéro 4" image="montres/montre4.jpg"/>
        <cardMontre class="carousel-item" sr-only="Photo de la montre Tik Tak numéro 5" image="montres/montre5.jpg"/>
    </div>
</template>

<script setup lang="ts">
import cardMontre from "@/components/cardMontre.vue"
</script>