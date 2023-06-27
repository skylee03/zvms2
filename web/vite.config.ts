import { fileURLToPath, URL } from "node:url";

import legacy from "@vitejs/plugin-legacy";
import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";
import vueJsx from "@vitejs/plugin-vue-jsx";
import autoImport from "unplugin-auto-import/vite";
import vueComponents from "unplugin-vue-components/vite";
import { Vuetify3Resolver } from "unplugin-vue-components/resolvers";
import mdPlugin, { Mode } from "vite-plugin-markdown";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    vueJsx(),
    vueComponents({
      resolvers: [Vuetify3Resolver()],
      directoryAsNamespace: true,
    }),
    autoImport({
      resolvers: [Vuetify3Resolver()],
    }),
    legacy({
      targets: ["defaults"],
    }),
    mdPlugin({
      mode: [Mode.HTML],
    }),
  ],
  resolve: {
    alias: {
      "@": fileURLToPath(new URL("./src", import.meta.url)),
      //"mermaid": "https://cdn.bootcdn.net/ajax/libs/mermaid/10.1.0/mermaid.esm.min.mjs",
    },
  },
});
