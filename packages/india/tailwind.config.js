/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx, mjs,res}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx,mjs,res}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx,mjs,res}",
    "./src/containers/**/*.{js,ts,jsx,tsx,mdx,mjs,res}",
    "../core/src/**/*.{js,ts,jsx,tsx,mdx,mjs,res}", // This is a workaround for the time being
  ],
  theme: {
    extend: {
      colors: {
        primary: "#2967ff",
      },
    },
  },
  plugins: [],
};
