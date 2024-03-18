/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/*.{mjs,res,js}",
    "./src/layouts/**/*.{mjs,res}",
    "./src/components/**/*.{mjs,res}",
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
