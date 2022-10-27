<script setup lang="ts">

import { colors } from "@/types";

defineProps<{
  name?: string;
  label?: string;
}>();

</script>

<template>
    <div>
        <FormKit
                :name="name"
                :label="label"    
                value="#FFFFFF"
                type="radio"
                :options="colors"
                :sections-schema="{
                    inner: { $el: null},
                    decorator: { $el: null},
                }"
                input-class="peer sr-only"                
                options-class="pr-20 my-3 grid grid-cols-5 gap-2"
                outer-class="my-10 w-80"
                legend-class="font-catamaran font-semibold text-base md:text-lg text-secondaire_fonce dark:text-secondaire_claire"
                >

                <template #label="context">
                    <div class="my-1 h-8 w-8 rounded border peer-checked:border-4
                                border-tertiaire_fonce peer-checked:border-tonic
                                dark:border-tertiaire_claire dark:peer-checked:border-tonic-dark_mode"
                        :style="{backgroundColor: context.option.value}"/>
                <span class="sr-only">{{context.option.label}}</span>
            </template>

        </FormKit>
    </div>
</template>