<template>
    <div class="flex justify-between gap-10 flex-col md:flex-row">

        <div class="sticky h-full top-0 lg:top-20 pb-10 bg-fond dark:bg-fond-dark_mode">
            <h2 class="flex-none w-full">Votre montre</h2>
            
            <div class="sticky w-full md:w-80 lg:w-96 xl:w-auto
                    flex carousel">
                <montreFace class="flex-initial basis-60 md:flex-none md:w-64 lg:w-72 carousel-item" v-bind="montre" id="face" sr-only="Représentation de la montre que vous créez vue de face"/>
                <montreProfil class="flex-initial basis-60 md:flex-none md:w-64 lg:w-72 carousel-item" v-bind="montre" id="dessus" sr-only="Représentation de la montre que vous créez vue de profil"/>
            </div>
        </div>

                <div class="flex-initial basis-2/5">
                    <p class="sr-only">Formulaire pour choisir les couleur et le matériau de votre montre</p>

                    <h2>Vos choix</h2>
                    <FormKit
                        type="form"
                        v-model="montre"
                        id="form_montre" 
                        submit-label="Enregistrer"
                        @submit="upsertMontre"
                        :submit-attrs="{
                            classes:{
                                input: `w-full rounded font-catamaran font-semibold 
                                        my-10 p-5
                                        text-base md:text-lg
                                        bg-secondaire_fonce
                                        hover:bg-tonic text-tertiaire_claire 
                                        peer-checked:bg-secondaire_claire
                                        dark:bg-secondaire_claire dark:text-tertiaire_fonce
                                        dark:hover:bg-tonic-dark_mode dark:focus:bg-secondaire_fonce`
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
                            legend-class="font-catamaran font-semibold text-lg text-secondaire_fonce dark:text-secondaire_claire"
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
                            legend-class="my-5 font-palatino-linotype font-bold italic text-secondaire_fonce dark:text-secondaire_claire text-lg md:text-xl"
                            options-class="w-max grid grid-cols-2 gap-x-3 gap-y-1"
                            label-class="block w-max rounded font-catamaran font-semibold 
                                        px-5 py-2 text-base
                                        lg:text-lg
                                        bg-secondaire_fonce text-tertiaire_claire 
                                        hover:bg-tonic 
                                        peer-checked:bg-secondaire_claire peer-checked:text-tertiaire_fonce
                                        dark:bg-secondaire_claire dark:text-tertiaire_fonce
                                        dark:hover-tonic-dark_mode
                                        dark:peer-checked:bg-secondaire_fonce dark:peer-checked:text-tertiaire_claire"
                        />

                        <div class="my-10">
                            <h2>Prix de votre montre</h2>

                            <div class="flex gap-5 items-center my-5">
                                <p class="font-palatino-linotype italic text-lg">10 000 €</p>

                                <fleche class="h-10"/>

                                <p class="font-palatino-linotype font-bold italic text-2xl">7 000€</p>


                            </div>

                            <p>
                                <span>Réduction de 30%</span>
                                sur l’achat de votre montre seulement si vous la commander avant le 31 décembre.
                            </p>
                        </div>

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
                                    label-class="block w-max rounded font-catamaran font-semibold
                                                px-5 py-2 text-base
                                                md:text-lg
                                                bg-secondaire_fonce text-tertiaire_claire 
                                                hover:bg-tonic 
                                                peer-checked:bg-secondaire_claire peer-checked:text-tertiaire_fonce
                                                dark:bg-secondaire_claire dark:text-tertiaire_fonce
                                                dark:hover-tonic-dark_mode
                                                dark:peer-checked:bg-secondaire_fonce dark:peer-checked:text-tertiaire_claire"
                            />
                            
                        </div>

                        <!-- si l'utilisateur à déjà commandé sa montre-->
                        
                        <p v-if="montre.commande" class="w-full my-20 px-5 py-10 font-extrabold text-center bg-secondaire_claire dark:bg-se">Cette montre est commandé, vous ne pouvez plus la modifier.</p>


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
    import fleche from "@/components/icons/fleche.vue"

    const router = useRouter();

    // @ts-ignore
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
    // @ts-ignore
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
            // @ts-ignore
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
