<template>
    <nav class="z-40 w-full h-24 bg-black flex flex-row items-center justify-between px-10">
        <div>
            <RouterLink to="/">
                <hr class="w-14"/>
                <span class="sr-only">Accueil</span>
            </RouterLink>
        </div>
        <div>
            <button class="relative z-50 md:hidden"
                    aria-haspopup="true"
                    aria-controls="menu"
                    
                    :aria-expanded="menuOuvert" @click="menuOuvert = !menuOuvert">

                <div v-if="!menuOuvert">
                    <menuButonFerme class="w-10 h-10"/>
                    <span class="sr-only">boutton pour ouvrir le menu</span>
                </div>

                <div v-else>
                    <menuButonOuvert class="w-12 h-12"/>
                    <span class="sr-only">boutton pour fermer le menu</span>
                </div>

            </button>
        </div>

        <!-- Menu phone -->
        <div id="menu"
            class="fixed overflow-y-hidden -translate-y-full px-12 inset-0 bg-black motion-safe:duration-500 motion-safe:transition-transform md:hidden"
            :class="{ 'translate-y-0': menuOuvert }">

            <ul class="my-24 font-h2 text-2xl text-white leading-loose">
                <li><RouterLink to="/" :aria-expanded="menuOuvert" @click="menuOuvert = !menuOuvert"
                        class="hover:text-gray-400 focus:text-gray-400">Accueil</RouterLink>
                </li>
            </ul>
        </div>

        <!-- Menu ordi -->
        <ul class="hidden my-2 ml-12 max-w-3xl flex-auto justify-between font-h3 text-[1.75rem] lg:text-xl text-white md:flex">
            <li><RouterLink to="/" class="hover:text-gray-400 focus:text-gray-400">Accueil</RouterLink></li>
        </ul>

    </nav>
</template>

<script setup lang="ts">
import {ref} from "vue"

import menuButonOuvert from "@/components/icons/menuButonOuvert.vue"
import menuButonFerme from "@/components/icons/menuButonFerme.vue"


const menuOuvert= ref(false)


</script>
