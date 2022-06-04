'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "693c96d99964e2eb868f8dda9afa7feb",
"favicon.ico": "507bf9a8184cff9fc5a67f8b00eb15b7",
"index.html": "a6f1b3fb564d909789876cac72a994a1",
"/": "a6f1b3fb564d909789876cac72a994a1",
"main.dart.js": "5c5da05f0146baa468890cd6f8f65103",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/favicon.png": "ce19d8aecbb84eae4c0f43e5cfe1e3cb",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "d591abe0c0b6eb3a0b4e1d2fabd80a5b",
"assets/images/paper.jpg": "48372c0360d78360e1b1b3da55d1eb4d",
"assets/images/paper_white.jpg": "5fe426f54381915f62a0651d8d85288a",
"assets/images/canvas_green.jpg": "4b47cfda16cfa4fd3c00e52184f2a919",
"assets/images/cash.svg": "0d090d6131bf7d810a7651e26df9c529",
"assets/images/cash.png": "4473a537327ab5fd8f50d1adef01f5ad",
"assets/images/fgc.svg": "659968947a1769d891d83c8ffdf361e7",
"assets/images/canvas.jpg": "af0b3757ce998ea0ce959885d962e13d",
"assets/images/paper_dark.jpg": "d07251fc4c3eec0d0588078d3f2298ff",
"assets/AssetManifest.json": "8547a4bca0661465668d6cb64c899b87",
"assets/AppIcons/appstore.png": "ce19d8aecbb84eae4c0f43e5cfe1e3cb",
"assets/AppIcons/playstore.png": "ac92ffebaa0a02868251c4ee6707317b",
"assets/NOTICES": "69e9e2bf36700d4fcd9d2edadde0c638",
"assets/FontManifest.json": "a4531f073cab3f029c0233f081f94322",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/Dosis-VariableFont_wght.ttf": "4cf98699140a6fcf979c337a87b4b127",
"assets/fonts/ScheherazadeNew-Regular.ttf": "efbc964034e7d3a050d6bd4cec233bed",
"assets/fonts/alger.TTF": "a9bc731ef79e8dfba0a32016e5b39076",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/letters/images/letters_thumbnail.jpeg": "2131528528d20c342defb4242cce6439",
"assets/assets/letters/images/envelope.HEIC": "d7bb2985f9eb9a5e4b87b409d434f693",
"assets/assets/letters/images/drafts/activeDutyLetter/pg_1.jpeg": "d0ccfffd264e5f25142c255a17688607",
"assets/assets/letters/images/drafts/activeDutyLetter/pg_3.jpeg": "c0cf81a16f645cfc2055bdefcd09c0b3",
"assets/assets/letters/images/drafts/activeDutyLetter/pg_2.jpeg": "8ba967b6999c3c924d477005ea1b5f3b",
"assets/assets/letters/images/drafts/activeDutyLetter/pg_4.jpeg": "4b14a8a04e3238acc6efaf2667a383df",
"assets/assets/letters/images/to_pop/6Aug43/envelope.jpeg": "e24121fa43daa62f0961a1bcd4b395fb",
"assets/assets/letters/images/to_pop/1May41/envelope.jpeg": "03f566c47f0a3bc85dd87409bd356ab0",
"assets/assets/letters/images/to_pop/8Feb46/envelope.jpeg": "d65fbbae9852317c7d2bdad3af674e05",
"assets/assets/letters/images/to_pop/1Jan44/envelope.jpeg": "44672496f4d0717081ceb2c07d2fc4cc",
"assets/assets/letters/images/to_pop/14July43/envelope.jpeg": "fdd361bbe8d60f7bf287dad18fd6be7d",
"assets/assets/letters/images/to_pop/29May43/envelope.jpeg": "c79f9ce5947a420dc9ebb4f626e28f4b",
"assets/assets/letters/images/to_pop/19July43/envelope.jpeg": "dc2b97b7ac7ef5b28be3755bbe30b5ea",
"assets/assets/letters/images/to_pop/15June43/envelope.jpeg": "32dd731d6be8250960a14bfef34b6fc3",
"assets/assets/letters/images/to_pop/18Jan44/envelope.jpeg": "5d1981e12d71a39953e05d5349e6ffa3",
"assets/assets/letters/images/to_pop/14Sept39/envelope.jpeg": "9fa5525036d9ecdee2be90f13a94fdab",
"assets/assets/letters/images/from_peter/pg_1.jpeg": "54a06d8220854f5859ab9a550188eb90",
"assets/assets/letters/images/no_envelope.jpeg": "8217429920f366f6061e9749874d7e5e",
"assets/assets/letters/images/from_todd/pg_1.jpeg": "957e6679ea8c004ab86bc147fd1cfe55",
"assets/assets/letters/images/from_todd/envelope.jpeg": "22f9b5d0d427cc286529231368a29109",
"assets/assets/letters/images/from_todd/pg_2.jpeg": "aa58d429bd340100d55995d23dc7989b",
"assets/assets/letters/images/from_pop/pg_1.jpeg": "9811c01ef7c85f7c465037d99f3f267b",
"assets/assets/letters/images/from_pop/envelope.jpeg": "8a06027690f84a5b0ac1bcf572b5f74f",
"assets/assets/letters/images/from_pop/pg_2.jpeg": "afc15ede3b69356496c8ad35ab1e6e99",
"assets/assets/display_images/paper.jpg": "48372c0360d78360e1b1b3da55d1eb4d",
"assets/assets/display_images/paper_white.jpg": "5fe426f54381915f62a0651d8d85288a",
"assets/assets/display_images/journal_cover%2520-%2520Copy.heic": "d154e9707572fe5df2cb51f5ddf31217",
"assets/assets/display_images/canvas_green.jpg": "4b47cfda16cfa4fd3c00e52184f2a919",
"assets/assets/display_images/journal_cover.heic": "d154e9707572fe5df2cb51f5ddf31217",
"assets/assets/display_images/cash.svg": "0d090d6131bf7d810a7651e26df9c529",
"assets/assets/display_images/cash.png": "4473a537327ab5fd8f50d1adef01f5ad",
"assets/assets/display_images/fgc.svg": "659968947a1769d891d83c8ffdf361e7",
"assets/assets/display_images/canvas.jpg": "af0b3757ce998ea0ce959885d962e13d",
"assets/assets/display_images/paper_dark.jpg": "d07251fc4c3eec0d0588078d3f2298ff",
"assets/assets/fred_journal/images/to_jan_pg_2.jpeg": "15df5df42e44d6b4291a1b3f061af238",
"assets/assets/fred_journal/images/atomic_engine_design.jpeg": "ab3b683c9c7f283ae727791186b4ddfd",
"assets/assets/fred_journal/images/journal_cover.jpg": "0810cd75034d9759c9e43ac06259afe9",
"assets/assets/fred_journal/images/journal_thumbnail.jpeg": "cd7dd9c64c3a90deb30caf74f99241ae",
"assets/assets/fred_journal/images/to_jan_pg_1.jpeg": "d1ada3a67cbd9d3775c95c90c0ccf207",
"assets/assets/fonts/Dosis-VariableFont_wght.ttf": "4cf98699140a6fcf979c337a87b4b127",
"assets/assets/fonts/Playball-Regular.TTF": "5fcf887efce3e8f7d4f672df0ee27829",
"assets/assets/fonts/Bitter-VariableFont_wght.TTF": "f60afd76f9df931408e65e5f2d9a6931",
"assets/assets/fonts/alger.TTF": "a9bc731ef79e8dfba0a32016e5b39076",
"assets/assets/fonts/Caveat-VariableFont_wght.TTF": "af4e1044825ff6b9b24c1203b202c039",
"assets/assets/fonts/Courgette-Regular.ttf": "59c3685a73f0f1b7c302dd2d6dabd628",
"assets/assets/mines_and_minesweeping/mines_and_minesweeping_pdf.pdf": "3e080eb646a684a99cbbe20949a5704d",
"assets/assets/mines_and_minesweeping/minesweeping_thumbnail.jpeg": "1cdc2a8c2b748c190df212e2b9b044d4",
"canvaskit/canvaskit.js": "43fa9e17039a625450b6aba93baf521e",
"canvaskit/profiling/canvaskit.js": "f3bfccc993a1e0bfdd3440af60d99df4",
"canvaskit/profiling/canvaskit.wasm": "a9610cf39260f60fbe7524a785c66101",
"canvaskit/canvaskit.wasm": "04ed3c745ff1dee16504be01f9623498"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
//  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
