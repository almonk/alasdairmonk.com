module.exports = {
  mode: "jit",
  purge: [
    './src/*.svelte',
    './public/index.html'
  ],
  darkMode: 'media', // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
