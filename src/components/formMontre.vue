<template>
    <div class="flex justify-between gap-10 flex-col md:flex-row">
        <div class="sticky h-full top-0 lg:top-20 pb-10 bg-fond">
            <h2 class="flex-none w-full">Votre montre</h2>
            
            <div class="sticky w-full md:w-80 lg:w-96 xl:w-auto
                    flex carousel">
                <montreFace class="flex-initial basis-60 md:flex-none md:w-64 lg:w-72 carousel-item" v-bind="montre" id="face"/>
                <montreProfil class="flex-initial basis-60 md:flex-none md:w-64 lg:w-72 carousel-item" v-bind="montre" id="dessus"/>
            </div>
        </div>

                <div class="flex-initial basis-2/5">

                    <h2>Vos choix</h2>
                    <FormKit
                        type="form"
                        v-model="montre"
                        id="form_montre" 
                        submit-label="Enregistrer"
                        @submit="upsertMontre"
                        :submit-attrs="{
                            classes:{
                                input: `w-full rounded bg-secondaire_fonce font-catamaran font-semibold text-tertiaire_claire 
                                        my-10 p-5
                                        text-base md:text-lg
                                        hover:bg-tonic 
                                        peer-checked:bg-secondaire_claire`
                            }
                        }"
                        
                        :config="{
                            classes:{
                                input:`my-6`,
                                label:'my-6',
                            }
                        }"
                    >

                        <FormKitListColors
                            name="bracelet"
                            label="Bracelet"/>

                        <FormKitListColors
                            name="fermoir"
                            label="Fermoir"/>

                        <FormKitListColors
                            name="boitier"
                            label="Boitier"/>

                        <FormKitListColors
                            name="boutons"
                            label="Boutons"/>

                        <FormKitListColors
                            name="ecran"
                            label="Écran"/>

                        <FormKitListColors
                            name="aiguille"
                            label="Aiguilles"/>


                        <FormKit 
                            name="id_materiau"   
                            label="Matériau du bracelet et boitier"   
                            type="radio" 
                            value="a2cf8ea3-b36f-4b4a-8db0-03bc2c7122b5"
                            :options="materiaux"
                            :sections-schema="{
                                inner: { $el: null},
                                decorator: { $el: null},
                            }"
                            input-class="peer sr-only"
                            options-class="my-3 flex gap-6"
                            outer-class="my-10"
                            legend-class="font-catamaran font-semibold text-lg text-secondaire_fonce"
                        >

                            <template #label="context">
                                <img class="h-12 w-12 rounded border-tertiaire_fonce border peer-checked:border-4"
                                    :src="context.option.img" 
                                    :alt="context.option.label">

                                <span>{{context.option.label}}</span>
                            </template>
                        
                        </FormKit>

                        <FormKit 
                            name="taille"   
                            label="Taille du boitier"   
                            type="radio" 
                            :options="tailles"
                            :sections-schema="{
                                inner: { $el: null},
                                decorator: { $el: null},
                            }"
                            input-class="peer sr-only"
                            outer-class="my-10"
                            legend-class="my-5 font-palatino-linotype font-bold italic text-secondaire_fonce text-lg md:text-xl"
                            options-class="w-max grid grid-cols-2 gap-x-3 gap-y-1"
                            label-class="block w-max rounded bg-secondaire_fonce font-catamaran font-semibold text-tertiaire_claire 
                                        px-5 py-2 text-base
                                        lg:text-lg
                                        hover:bg-tonic 
                                        peer-checked:bg-secondaire_claire peer-checked:text-tertiaire_fonce"
                        />

                        <div class="my-10">
                            <h2>Commander dès maintenant</h2>

                            <p class="my-5">Garantis
                                <span>livré avant noël</span>
                                si vous commandez votre montre avant le 15 décembre.
                            </p>
                            <p class="my-5 font-extrabold">Satisfait ou Remboursé.</p>


                            <FormKit
                                    name="commande"   
                                    label="Je commande"   
                                    value=false
                                    help="Une fois commandé, vous ne pourrez plus modifier votre montre."
                                    type="checkbox"
                                    :sections-schema="{
                                        inner: { $el: null},
                                        decorator: { $el: null},
                                    }"

                                    input-class="peer sr-only"
                                    outer-class="mt-10"
                                    options-class="w-max grid grid-cols-2 gap-x-3 gap-y-1"
                                    label-class="block w-max rounded bg-secondaire_fonce font-catamaran font-semibold text-tertiaire_claire 
                                                px-5 py-2 text-base
                                                md:text-lg
                                                hover:bg-tonic 
                                                peer-checked:bg-secondaire_claire peer-checked:text-tertiaire_fonce"
                            />
                            
                        </div>

                    </FormKit>

                    <div>

                        <boutonClair class="mx-auto my-10 md:my-20 text-sm md:text-base"
                            v-if="montre.id_montre"
                            @click="($refs.dialogSupprimer as any).showModal()">
                            Supprimer cette montre
                        </boutonClair>

                        <dialog
                            ref="dialogSupprimer"
                            @click="($event.currentTarget as any).close()">

                            <boutonFonce class="mx-auto">
                                Annuler
                            </boutonFonce>

                            <boutonClair
                                type="button"
                                @click="supprimerMontre()"
                                class="mx-auto my-10 md:my20">
                                Confirmer la suppression
                            </boutonClair>
                        </dialog>
                    </div>

                </div>

            </div>
</template>

<script setup lang="ts">
    import type { montres } from '@/types';
    import { materiaux, tailles } from '@/types';
    import {ref} from "@vue/reactivity"
    import {supabase} from "@/supabase";
    import { useRouter} from "vue-router";  
    import FormKitListColors from "@/components/FormKitListColors.vue";
    
    import montreFace from "@/components/montreFace.vue";
    import montreProfil from "@/components/montreProfil.vue";

    import boutonFonce from "@/components/boutonFonce.vue"
    import boutonClair from "@/components/boutonClair.vue"

    const router = useRouter();

    const montre = ref<montres>(props.data ?? {});

    // chargement de la liste des Maison
    const props = defineProps(["id"]);
    if (props.id) {
        // On charge les données de la maison
        let { data, error } = await supabase
        .from("montre")
        .select("*")
        .eq("id_montre", props.id);
        if (error) console.log("n'a pas pu charger le table montre :", error);
        else montre.value = (data as any[])[0];
    }

    // fonction pour ajouter dans la bdd les valeurs du formulaire
    async function upsertMontre(dataForm, node) {
        const { data, error } = await supabase.from("montre").upsert(dataForm);
        if (error || !data){
            node.setErrors([error?.message]); 
        }
        else {
            node.setErrors([]);
            router.push("/comptes");
        }
    };

    async function supprimerMontre() {
        const { data, error } = await supabase
            .from("montre")
            .delete()
            .match({ id_montre: montre.value.id_montre });
        if (error) {
            console.error(
            "Erreur à la suppression de ",
            montre.value,
            "erreur :",
            error
            );
        } else {
            router.push("/comptes");
        }
    }

</script>
