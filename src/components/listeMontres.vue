<script setup lang="ts">

import { supabase } from "@/supabase";
import montre_profil from "@/components/montre_profil.vue";
import bouton_fonce from "@/components/bouton_fonce.vue"

let user = supabase.auth.user()

const props = defineProps<{
    max?: number;
}>();

const { data: montres, error } = await supabase
    .from("montre")
    .select("*")
    .limit(props.max ?? 100);
    if (error) {
        console.log("n'a pas pu récupérer les montres", { error });
}


</script>

<template>
  <ul class="flex flex-wrap gap-10">

    <li v-for="m in montres" :key="m.id">
      <router-link
      :to="`/edit/${m.id_montre}`"
        v-if="user.id == m.id_utilisateur">
        <montre_profil class="w-36 md:w-64" v-bind="m" />
      </router-link>

      <montre_profil v-else class="w-36 md:w-64" v-bind="m" />
    </li>

  </ul>
</template>