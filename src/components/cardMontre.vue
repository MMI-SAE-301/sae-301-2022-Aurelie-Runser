<template>
    <div class="w-1/2 md:w-[320px] h-auto md:h-[470px] rounded shadow-md shadow-gray-300 dark:shadow-gray-800 overflow-hidden">
        <img class="hover:scale-110 motion-safe:duration-500 motion-safe:transition-transform" :src=image alt="photo d'une montre">
    </div>
</template>

<script setup lang="ts">
const props = defineProps({
    image:{ type: String,   default: "Image d'un maison"},
})

props.image
</script>