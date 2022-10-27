<template>
    <div class="w-full p-20 
            bg-tertiaire_claire dark:bg-tertiaire_fonce
            text-tertiaire_fonce dark:text-tertiaire_claire">
        <div class="w-full flex flex-wrap justify-between gap-10">

            <div class="w-max font-catamaran font-medium text-base">
                <ul class="flex flex-col gap-5 lg:gap-14">
                    <li><RouterLink to="/"
                            class="hover:text-secondaire_fonce focus:text-secondaire_fonce">Accueil</RouterLink>
                    </li>
                    <li><RouterLink to="/new"
                            class="hover:text-secondaire_fonce focus:text-secondaire_fonce">Personnaliser</RouterLink>
                    </li>
                    <li><RouterLink to="/montres"
                            class="hover:text-secondaire_fonce focus:text-secondaire_fonce">Montres</RouterLink>
                    </li>
                    <li><RouterLink to="/comptes"
                            class="hover:text-secondaire_fonce focus:text-secondaire_fonce">Compte</RouterLink>
                    </li>
                </ul>
            </div>
            
            <div class="w-max">
                <ul class="flex flex-wrap gap-8 sm:flex-col lg:gap-8">
                    <li>
                        <a href="https://fr-fr.facebook.com/">
                            <facebookIcon class="w-12 h-12"/>
                        </a>
                    </li>

                    <li>
                        <a href="https://www.instagram.com/">
                                <instaIcon class="w-14 h-14"/>
                        </a>
                    </li>

                    <li>
                        <a href="https://twitter.com/?lang=fr">
                                <twitterIcon class="w-12 h-12"/>
                        </a>
                    </li>

                    <li>
                        <a href="https://www.pinterest.fr/">
                                <pinterestIcon class="w-12 h-12"/>
                        </a>
                    </li>
                </ul>         
            </div>

            
            <div class="flex w-full md:w-max justify-center md:my-24">
               <RouterLink to="/">
                    <logo class="h-14 lg:h-24"/>
                    <span class="sr-only">Accueil</span>
                </RouterLink>
            </div>
        </div>

    </div>
</template>

<script setup lang="ts">
import logo from "../components/icons/logo.vue"
import facebookIcon from "./icons/facebook.vue"
import instaIcon from "./icons/insta.vue"
import twitterIcon from "./icons/twitter.vue"
import pinterestIcon from "./icons/pinterest.vue"

</script>
