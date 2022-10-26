<template>
    <div class="my-10 py-5 carousel gap-x-5 w-full">
        <cardMontre class="carousel-item" image="montres/montre1.jpg"/>
        <cardMontre class="carousel-item" image="montres/montre2.jpg"/>
        <cardMontre class="carousel-item" image="montres/montre3.jpg"/>
        <cardMontre class="carousel-item" image="montres/montre4.jpg"/>
        <cardMontre class="carousel-item" image="montres/montre5.jpg"/>
    </div>
</template>

<script setup lang="ts">
import cardMontre from "@/components/cardMontre.vue"
</script>