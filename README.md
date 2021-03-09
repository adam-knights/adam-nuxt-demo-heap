# adam-nuxt-demo-heap

To reproduce the issue first ensure you have docker installed, then run:

`docker build -m 4gb .`

You should see error around heap allocation.

Note that Docker caches things, so to reproduce each time just make a tiny change to /pages/index.vue
