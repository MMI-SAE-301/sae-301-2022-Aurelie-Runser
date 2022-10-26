<template>
    <div class="px-5 md:px-20 pt-20 h-screen">

        <!-- si l'utilisateur n'est pas connecté-->
        <div v-if="!user">
            <h1>Connexion</h1>

            <button class="block my-14 mx-auto px-10 py-5 rounded-full border-2 border-black text-sm md:text-base hover:bg-gray-200"
                @pointerdown="supabase.auth.signIn({provider: 'google'})">
                   Se connecter avec Google
            </button>

            <button class="block my-14 mx-auto px-10 py-5 rounded-full bg-blue-700 text-sm md:text-base text-fond hover:bg-blue-500"
                @pointerdown="supabase.auth.signIn({provider: 'facebook'})">
                    Se connecter avec Facebook
            </button>
        </div>

        <!--Si l'utilisateur est connecté-->
        <div v-if="user">
            <h1>Bonjour, {{user.email}}</h1>

            <div>
                <div class="flex flex-wrap gap-x-10 items-center my-10">
                    <h2 class="m-0">Tik●Tak que vous avez créées</h2>
                    <p class="font-palatino-linotype font-bold italic">Nouveau</p>
                </div>

                <div>
                    <bouton_fonce>Créer une montre</bouton_fonce>
                </div>
                
            </div>

            <div class="flex justify-end my-20">
                <bouton_clair class="md:text-base"
                    @pointerdown="supabase.auth.signOut()">
                        Se déconnecter
                </bouton_clair>
            </div>
        </div>
    
        

    </div>
</template>   

<script setup lang="ts">
import { supabase, user } from '@/supabase';
import bouton_fonce from "@/components/bouton_fonce.vue"
import bouton_clair from "@/components/bouton_clair.vue"
</script>
