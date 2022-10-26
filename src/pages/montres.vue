<template>
    <div  class="pt-10">

        <section>
            <h1>Tik●Tak que vous avez créées</h1>

            <listeMesMontres :max="3"/>
        </section>

        <section>
            <h1>Tik●Tak créées par des clients</h1>

            <listeMontres/>
        </section>

        <section>
            <h1>Tik●Tak officielles</h1>

            <listeMontres/>
        </section>
    </div>
</template>

<script setup lang="ts">
import { supabase, user } from '@/supabase';

import bouton_fonce from "@/components/bouton_fonce.vue"
import bouton_clair from "@/components/bouton_clair.vue"
import listeMesMontres from "@/components/listeMesMontres.vue"
import listeMontres from "@/components/listeMontres.vue"

</script>
