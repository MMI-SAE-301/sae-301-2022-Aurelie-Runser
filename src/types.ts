export interface montres {
    id_montre?:string;
    commande?:boolean;
    bracelet?: string;
    fermoir?: string;
    boitier?: string;
    boutons?: string;
    ecran?: string;
    aiguille?: string;
};
  
  export const colors = {
    "#FFFFFF": "Blanc",
    "#F2E5BB": "Beige",
    "#BC8748": "Brun claire",
    "#995D3C": "Brun",
    "#6B3112": "Brun foncé",
    
    "#E2E2E2": "Gris",
    "#D4D1EA": "Bleu claire",
    "#7F75C5": "Bleu",
    "#595481": "Bleu foncé",
    "#1F1E26": "Noir",

    "#FFE8E8": "Rouge pâle",
    "#E3B7B7": "Rouge claire",
    "#E77676": "Rouge",
    "#C54040": "Rouge foncé",
    "#7D0505": "Rouge très foncé",
    
    "#D7F9E4": "Vert pâle",
    "#B7E3C9": "Vert claire",
    "#61BB41": "Vert",
    "#1E7221": "Vert foncé",
    "#045307": "Vert très foncé",
  };
  
  export const materiaux = [
    {
      value: "a2cf8ea3-b36f-4b4a-8db0-03bc2c7122b5",
      img: "/materiaux/cuir.png",
      label: "Cuir",
    },
    {
      value: "b235fba2-83c7-4b45-b3b5-1d3e54a3be8d",
      img: "/materiaux/metal.png",
      label: "Métal",
    },
    {
      value: "44219110-b4c8-40d5-a7b6-20ea4a0c181e",
      img: "/materiaux/bois.png",
      label: "Bois",
    },
];

export const tailles = {
    "24/32": "24/32 mm",
    "28/36": "28/36 mm",
    "36/44": "36/44 mm",
    "42/50": "42/50 mm",
}