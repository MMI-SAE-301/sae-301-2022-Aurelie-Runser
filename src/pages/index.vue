<template>
  <div>

    <!--Cover-->
    <div class="px-5 md:px-20 pt-40 h-screen bg-cover_phone lg:bg-cover bg-right-bottom">
      <logo class="h-16 md:h-32 xl:h-40"/>
  
      <div class="md:w-2/3 my-10 md:my-20">
        <h1 class="my-0 font-palatino-linotype font-bold italic text-lg xl:text-xl text-secondaire_claire">Le meilleur des cadeaux, une montre unique.</h1>

        <bouton_clair class="mx-auto my-10 md:my-18">
          <RouterLink to="/new">
              Créer ma montre
            </RouterLink>          
        </bouton_clair>
      </div>
    </div>

    <!--Personnalisation-->
    <section>
      <h1>Nouveau : une Tik●Tak personnalisée pour les fêtes</h1>

      <div class="flex flex-wrap justify-between gap-x-20">
        <montre_profil class="hidden lg:block w-1/4"/>

        <div class="basis-96 flex-auto flex flex-col gap-y-10">
          <p>
            Pour un cadeau vraiment unique et personnel,
            <span>créer vous-même votre montre Tik●Tak</span>.
          </p>

          <p>
            Profité de cette nouvelle offre, à
            <span>-30%</span>
            j’usqu’au 31 décembre.
          </p>

          <p>
            Soyez
            <span>livré pour les fêtes de fin d’année</span>
            si vous commandez avant le 15 décembre.
          </p>

          <bouton_fonce class="mx-auto">
            <RouterLink to="/new">
              Créer ma montre
            </RouterLink>
          </bouton_fonce>

        </div>
      </div>
    </section>

    <!--Autres montres-->
    <section>
      <h1>Montres Tik●Tak</h1>
      <h2 class="text-center">Portez une montre connectée, recevez des notifications, envoyez des messages, mais dans l’ambiance old school.</h2>

      <carrouselMontre/>

      <bouton_fonce class="mx-auto">
        <RouterLink to="/montres">
          Voir plus
        </RouterLink>
      </bouton_fonce>
    </section>

  </div>
</template>

<script setup lang="ts">
import logo from "@/components/icons/logo.vue"

import bouton_clair from "@/components/bouton_clair.vue"
import bouton_fonce from "@/components/bouton_fonce.vue"

import montre_profil from "@/components/montre_profil.vue"

import carrouselMontre from "@/components/carrouselMontre.vue"


</script>