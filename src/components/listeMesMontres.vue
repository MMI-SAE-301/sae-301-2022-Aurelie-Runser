<script setup lang="ts">

import { supabase, user} from "@/supabase";
import montreProfil from "@/components/montreProfil.vue";



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
  <div v-if="user">
  <ul class="flex flex-wrap gap-10">
      <li v-for="m in montres" :key="m.id">
        <router-link
        :to="`/edit/${m.id_montre}`"
          v-if="user.id == m.id_utilisateur">
          <montreProfil class="w-36 md:w-64" v-bind="m" />
        </router-link>
      </li>     
    </ul>
  </div>
</template>