<template>
    <nav class="fixed z-40 w-full h-24 flex flex-row items-center justify-between px-5 md:px-10 xl:px-20
            font-palatino-linotype font-bold italic text-base xl:text-lg
            bg-tertiaire_claire text-tonic
            dark:bg-tertiaire_fonce dark:text-tonic-dark_mode">

        <!--Logo-->
        <div>
            <RouterLink to="/">
                <logo class="h-10 xl:h-16"/>
                <span class="sr-only">Accueil</span>
            </RouterLink>
        </div>

        <!--menu burger si phone-->
        <div>
            <button class="relative z-50 md:hidden"
                    aria-haspopup="true"
                    aria-controls="menu"
                    
                    :aria-expanded="menuOuvert" @click="menuOuvert = !menuOuvert">

                <div v-if="!menuOuvert">
                    <menuButonOuvert class="w-14 h-14"/>
                    <span class="sr-only">boutton pour ouvrir le menu</span>
                </div>

                <div v-else>
                    <menuButonFerme class="w-12 h-12"/>
                    <span class="sr-only">boutton pour fermer le menu</span>
                </div>

            </button>
        </div>

        <!-- Menu phone -->
        <div id="menu"
            class="fixed overflow-y-hidden -translate-y-full px-12 inset-0 motion-safe:duration-500 motion-safe:transition-transform md:hidden
                bg-tertiaire_claire dark:bg-tertiaire_fonce"
            :class="{ 'translate-y-0': menuOuvert }">

            <ul class="my-24 text-lg leading-[6rem]">
                <li>
                    <RouterLink to="/" :aria-expanded="menuOuvert" @click="menuOuvert = !menuOuvert"
                        class="hover:text-secondaire_fonce focus:text-secondaire_fonce
                                dark:hover:text-secondaire_claire dark:focus:text-secondaire_claire">
                        Accueil
                    </RouterLink>
                </li>

                <li>
                    <RouterLink to="/new" :aria-expanded="menuOuvert" @click="menuOuvert = !menuOuvert"
                        class="hover:text-secondaire_fonce focus:text-secondaire_fonce
                                dark:hover:text-secondaire_claire dark:focus:text-secondaire_claire">
                        Personnaliser
                    </RouterLink>
                </li>

                <li>
                    <RouterLink to="/montres" :aria-expanded="menuOuvert" @click="menuOuvert = !menuOuvert"
                        class="hover:text-secondaire_fonce focus:text-secondaire_fonce
                                dark:hover:text-secondaire_claire dark:focus:text-secondaire_claire">
                        Montres
                    </RouterLink>
                </li>

                <li>
                    <RouterLink to="/comptes" :aria-expanded="menuOuvert" @click="menuOuvert = !menuOuvert"
                        class="hover:text-secondaire_fonce focus:text-secondaire_fonce
                                dark:hover:text-secondaire_claire dark:focus:text-secondaire_claire">
                        Compte
                    </RouterLink>
                </li>

            </ul>
        </div>

        <!-- Menu ordi -->
        <ul class="hidden justify-end gap-10 xl:gap-20 md:flex">
            <li>
                <RouterLink to="/new"
                    class="hover:text-secondaire_fonce focus:text-secondaire_fonce
                        dark:hover:text-secondaire_claire dark:focus:text-secondaire_claire">
                    Personnaliser
            </RouterLink>

            </li>

            <li>
                <RouterLink to="/montres"
                    class="hover:text-secondaire_fonce focus:text-secondaire_fonce
                        dark:hover:text-secondaire_claire dark:focus:text-secondaire_claire">
                    Montres
            </RouterLink>
            </li>

            <li>
                <RouterLink to="/comptes"
                    class="hover:text-secondaire_fonce focus:text-secondaire_fonce
                        dark:hover:text-secondaire_claire dark:focus:text-secondaire_claire">
                    Compte
            </RouterLink>
            </li>

        </ul>

    </nav>
</template>

<script setup lang="ts">
import {ref} from "vue"

import logo from "@/components/icons/logo.vue"
import menuButonOuvert from "@/components/icons/menuButonOuvert.vue"
import menuButonFerme from "@/components/icons/menuButonFerme.vue"


const menuOuvert= ref(false)


</script>
