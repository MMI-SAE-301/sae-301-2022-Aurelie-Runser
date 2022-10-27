<template>
    <button class="block h-max w-max rounded font-catamaran font-semibold 
        px-5 py-2 text-base
        md:px-8 md:py-5 md:text-lg
        bg-secondaire_fonce text-tertiaire_claire
        hover:bg-tonic focus:bg-secondaire_claire
        dark:bg-secondaire_claire dark:text-tertiaire_fonce
        dark:hover:bg-tonic-dark_mode dark:focus:bg-secondaire_fonce dark:focus:text-tertiaire_claire">
        <slot/>
    </button>
</template>