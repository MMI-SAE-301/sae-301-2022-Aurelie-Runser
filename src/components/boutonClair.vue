<template>
    <button class="block h-max w-max rounded font-catamaran font-semibold 
        px-5 py-2 text-base
        md:px-8 md:py-5 md:text-lg
        bg-secondaire_claire text-tertiaire_fonce
        hover:bg-tonic focus:bg-secondaire_fonce
        dark:bg-secondaire_fonce dark:text-tertiaire_claire
        dark:hover:bg-tonic-dark_mode dark:focus:bg-secondaire_claire dark:focus:text-tertiaire_fonce">
        <slot/>
    </button>
</template>