const formKitTailwind = require("@formkit/themes/tailwindcss");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
        colors: {
         "fond": "#fafafa",
         "tonic": "#bc8748",
         "tonic-dark_mode": "#D9AA72",
         "secondaire_claire": "#f2e5bb",
         "secondaire_fonce": "#995d3c",
         "tertiaire_fonce": "#1f1e26",
         "tertiaire_claire": "#F0F0EF"
        },

        fontSize: {
         "sm": "1rem",
         "base": "1.5rem",
         "lg": "2.25rem",
         "xl": "3rem",
         "2xl": "4rem"
        },
        
        fontFamily: {
         "palatino-linotype": "Palatino Linotype",
         "catamaran": "Catamaran"
        },

        backgroundImage: {
          "cover": "url('/cover.jpg')",
          "cover_phone": "url('/cover_phone.jpg')"
        }
    },
  },

  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    formKitTailwind,
    require("@headlessui/tailwindcss"),
    require("daisyui"),
  ],

};
