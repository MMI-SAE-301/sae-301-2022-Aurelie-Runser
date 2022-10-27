<template>
    <div class="px-5 md:px-20 pt-20">

        <!-- si l'utilisateur n'est pas connecté-->
        <div v-if="!user">
            <h1>Connexion</h1>

            <button class="block my-14 mx-auto px-10 py-5 rounded-full border-2 
                        text-sm md:text-base 
                        border-black hover:bg-gray-200 text-tertiaire_fonce
                        dark:border-tertiaire_claire dark:hover:bg-gray-700 dark:text-tertiaire_claire"
                @pointerdown="supabase.auth.signIn({provider: 'google'})">
                   Se connecter avec Google
            </button>

            <button class="block my-14 mx-auto px-10 py-5 rounded-full 
                        text-sm md:text-base
                        bg-blue-700 text-tertiaire_claire 
                        hover:bg-blue-500"
                @pointerdown="supabase.auth.signIn({provider: 'facebook'})">
                    Se connecter avec Facebook
            </button>
        </div>

        <!--Si l'utilisateur est connecté-->
        <div v-if="user">
            <h1>Bonjour 
                <span class="text-base sm:text-lg md:text-xl lg:text-2xl">
                    {{user.email}}
                </span>
            </h1>


            <div>
                <div class="flex flex-wrap gap-x-10 items-center my-10">
                    <h2 class="m-0">Tik●Tak que vous avez créées</h2>
                    <p class="font-palatino-linotype font-bold italic">Nouveau</p>
                </div>

                <div>
                    <boutonFonce class="my-10">
                        <RouterLink to="/new">
                        Créer une montre
                        </RouterLink>
                    </boutonFonce>
                    
                    <listeMesMontres/>
                </div>
                
            </div>

            <div class="flex justify-end my-20">
                <boutonClair class="md:text-base"
                    @pointerdown="supabase.auth.signOut()">
                        Se déconnecter
                </boutonClair>
            </div>

        </div>
    
        

    </div>
</template>   

<script setup lang="ts">
import { supabase, user } from '@/supabase';

import boutonFonce from "@/components/boutonFonce.vue"
import boutonClair from "@/components/boutonClair.vue"
import listeMesMontres from "@/components/listeMesMontres.vue"

</script>
