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
                options-class="pr-20 my-3 flex flex-wrap gap-4"
                outer-class="my-10"
                legend-class="font-catamaran font-semibold text-base md:text-lg text-secondaire_fonce"
                >

                <template #label="context">
                    <div class="my-1 h-8 w-8 rounded border-tertiaire_fonce border peer-checked:border-4"
                        :style="{backgroundColor: context.option.value}"/>
                <span class="sr-only">{{context.option.label}}</span>
            </template>

        </FormKit>
    </div>
</template>