const PRECACHE = 'bvad3-Data-v1608500839445';const RUNTIME = 'bvad3-runtime-v1608500839445';const PRECACHE_URLS = ['./index.html','./manifest.json','https://cdn.jsdelivr.net/npm/vue@2.x/dist/vue.min.js','https://cdn.jsdelivr.net/npm/vuetify@2.x/dist/vuetify.min.js','https://cdn.jsdelivr.net/npm/vue-router@3.x/dist/vue-router.min.js','https://cdn.jsdelivr.net/npm/dayjs@1.9.6/dayjs.min.js','https://cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js','./scripts/app.js','https://cdn.jsdelivr.net/npm/@mdi/font@latest/css/materialdesignicons.min.css','https://cdn.jsdelivr.net/npm/vuetify@2.x/dist/vuetify.min.css','./styles/app.css','https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900','./assets/1.png','./assets/sadface.png','./assets/upload.php','./assets/2.png','./assets/avatar.png','./assets/gray.png','./assets/green.png','./assets/happyface.png','./assets/neutralface.png','./assets/orange.png','./assets/red.png','./assets/1.jpg','./assets/android-chrome-512x512.png','./assets/yuna.jpg','./assets/apple-touch-icon.png','./assets/background.jpg','./assets/bg-2.jpg','./assets/bird.jpg','./assets/clint-mckoy.jpg','./assets/dark-beach.jpg','./assets/favicon.ico','./assets/favicon-16x16.png','./assets/favicon-32x32.png','./assets/2.jpg','./assets/lock.jpg','./assets/login.jpg','./assets/material.jpg','./assets/mssqlconfig.php','./assets/mysqlconfig.php','./assets/office.jpg','./assets/parallax1.jpg','./assets/parallax2.jpg','./assets/planet.jpg','./assets/pricing.jpg','./assets/register.jpg','./assets/sample-1.jpg','./assets/sky.jpg','./assets/3.jpg','./assets/sponge.png','./assets/squirrel.jpg','./assets/test.db','./assets/4.jpg','./assets/5.jpg','./assets/vbanner.jpg','./assets/android-chrome-192x192.png'];var _B=this;_B.addEventListener('install', function (event) {event.waitUntil(caches.open(PRECACHE).then(function (cache) {return cache.addAll(PRECACHE_URLS);}).then(_B.skipWaiting()));});_B.addEventListener('activate', function (event) {var currentCaches = [PRECACHE, RUNTIME];event.waitUntil(caches.keys().then(function (cacheNames) {return cacheNames.filter(function (cacheName) {return !currentCaches.includes(cacheName);});}).then(function (cachesToDelete) {return Promise.all(cachesToDelete.map(function (cacheToDelete) {return caches.delete(cacheToDelete);}));}).then(function () {return _B.clients.claim();}));});_B.addEventListener('fetch', function (event) {if (event.request.url.indexOf('donotdelete.gif') == -1) {event.respondWith(caches.match(event.request).then(function (cachedResponse) {if (cachedResponse) {return cachedResponse;}return caches.open(RUNTIME).then(function (cache) {return fetch(event.request).then(function (response) {return cache.put(event.request, response.clone()).then(function () {return response;});});});}));}});