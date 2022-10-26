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

            <carrouselMontre/>
        </section>
    </div>
</template>

<script setup lang="ts">
import { supabase, user } from '@/supabase';

import carrouselMontre from "@/components/carrouselMontre.vue"
import listeMesMontres from "@/components/listeMesMontres.vue"
import listeMontres from "@/components/listeMontres.vue"

</script>
