<template>
    <div class="px-5 md:px-20 pt-20">
        <h1 class="text-lg sm:text-xl md:text-2xl">Personnalisation</h1>

        <p class="my-10">Choisissez vous-même les couleurs et matériau de votre Tik●Tak .</p>

        <!-- si l'utilisateur n'est pas connecté, on lui propose de le faire-->
        <div v-if="!user" class="flex flex-wrap gap-10 justify-between items-center">
            <p class="flex-auto basis-96 font-extrabold">Attention, vous devez être connecté(e) pour créer et commander une montre.</p>

            <bouton_fonce class="mx-auto">
                <RouterLink to="/comptes">
                    Se connecter
                </RouterLink>
            </bouton_fonce>
        </div>

        <form_montre></form_montre>
        

    </div>
</template>  

<script setup lang="ts">
import { user } from '@/supabase';
import form_montre from "@/components/form_montre.vue"
import bouton_fonce from "@/components/bouton_fonce.vue"
</script>
