<template>
    <div class="my-10 py-5 carousel gap-x-5 w-full">
        <card_montre class="carousel-item" image="montres/montre1.jpg"/>
        <card_montre class="carousel-item" image="montres/montre2.jpg"/>
        <card_montre class="carousel-item" image="montres/montre3.jpg"/>
        <card_montre class="carousel-item" image="montres/montre4.jpg"/>
        <card_montre class="carousel-item" image="montres/montre5.jpg"/>
    </div>
</template>

<script setup lang="ts">
import card_montre from "@/components/card_montre.vue"
</script>