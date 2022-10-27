const formKitTailwind = require("@formkit/themes/tailwindcss");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
        colors: {
         "fond": "#fafafa",
         "fond-dark_mode": "#171717",
         "tonic": "#bc8748",
         "tonic-dark_mode": "#d9aa72",
         "secondaire_claire": "#f3de99",
         "secondaire_fonce": "#995d3c",
         "tertiaire_fonce": "#1f1e26",
         "tertiaire_claire": "#f0f0ef"
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
