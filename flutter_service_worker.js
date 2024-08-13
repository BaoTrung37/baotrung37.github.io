'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "31367addf1db74b9e85e82bc66d6cbd0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/assets/icons/ic_duplicate.svg": "1733d17d90803afd39c313efb4db9a30",
"assets/assets/icons/ic_terms.svg": "1b3d7b7da04ff1d55471c258e9514f07",
"assets/assets/icons/ic_faq.svg": "32b83e67fe1bf632dcf6d88ce18ff3a5",
"assets/assets/icons/ic_power.svg": "ec7383d6b13906053138c636f2203c79",
"assets/assets/icons/ic_quick_alarm.svg": "8e2352c01bb14370e8a775a8c78c0f25",
"assets/assets/icons/ic_list_checked.svg": "f99fd898e67582df18b938992b08be8f",
"assets/assets/icons/ic_close1.svg": "a9435d6c892ded293a8129948c9a0290",
"assets/assets/icons/ic_vertical_more.svg": "09e3631f0f4144f23541acb3c11c3ee4",
"assets/assets/icons/ic_alarm_on.svg": "19c11a3b5e229ebaaf6d75e6b8492039",
"assets/assets/icons/ic_about.svg": "5f700aa3d1a78f0e499a510b04c14608",
"assets/assets/icons/ic_save_alarm.svg": "0af56b83da1f3147e66d3b552ce479bf",
"assets/assets/icons/ic_privacy_policy.svg": "78e9ec8d3adbda7cc86e5247092cac1c",
"assets/assets/icons/ic_eye.svg": "78fe389decc157898dbaa231acd2578f",
"assets/assets/icons/ic_add_alarm.svg": "0aee465c26df592c2c79365e3dd5aee5",
"assets/assets/icons/ic_language.svg": "1378ca9989745d5062869caabf9721c3",
"assets/assets/icons/ic_default_avatar.svg": "fb4d29c490b77869e88c93213af8c3dc",
"assets/assets/icons/ic_license.svg": "ac2f8589302ebf197bcb603303386d9a",
"assets/assets/icons/ic_rounded_profile.svg": "f1606fc7fc09dde049fb60c03331e9cf",
"assets/assets/icons/ic_official_website.svg": "f23ed20190f18ef4499a8eae388d8488",
"assets/assets/icons/ic_arrow_right.svg": "795abdbdd3af3b2b24786d9cc638f623",
"assets/assets/icons/ic_close.svg": "b7b7e5a2453f366ffa4e00bffea0f6a4",
"assets/assets/icons/ic_error.svg": "fdf8ff7d87e5c40216d8f514d8e5c4b2",
"assets/assets/icons/ic_arrow_down.svg": "4bc733dd3fba2d114acb29ec7f81de6d",
"assets/assets/icons/ic_trash.svg": "382c5f0992e54162cb62bb3f9c399ac3",
"assets/assets/icons/ic_arrow_left.svg": "159e4102195786228d79fc4a1e2014d8",
"assets/assets/icons/ic_arrow_up.svg": "ea72d24f561120cb9cfbbbaa51b102fb",
"assets/assets/icons/ic_daystarter_text_logo.svg": "3814fe66ef1c0f15d216f53d0de97a2b",
"assets/assets/icons/ic_refresh.svg": "ef00b530fda4f1e4bb2a46bc920a78ab",
"assets/assets/icons/ic_checked.svg": "22ebaa7f7630ceac2aeaba520f9b56ad",
"assets/assets/icons/ic_mobile_vibration.svg": "2f5fd64b6f960d15598a204ac48b0e85",
"assets/assets/icons/ic_chevron_right.svg": "5e0fb9e85164557a239033dd58d9a996",
"assets/assets/icons/ic_volume.svg": "8d056d166ec8cf712c01ed57a481ebde",
"assets/assets/icons/ic_pencil.svg": "372bc69ef93e49b44e083f71510628ba",
"assets/assets/icons/ic_wifi.svg": "b74a1ab87e7f146a906998ced56b6c96",
"assets/assets/icons/ic_gift.svg": "7754561b5357c5a64c953d5595803bb9",
"assets/assets/icons/ic_waiting.svg": "7f0456b8a1dcc132a327a576c5233741",
"assets/assets/icons/ic_outline_profile.svg": "ce1c6f26b4ef105588d022172ed80e47",
"assets/assets/icons/ic_outline_users.svg": "448feb3f35e6ab5e9ab1ca6abebe2608",
"assets/assets/images/img_google_logo.png": "5ef3f988eb24600340d6cc9a831b7669",
"assets/assets/images/img_big_logo.png": "0f87c4643475d499842d8575ecedfa3f",
"assets/assets/images/img_en_logo.png": "55bd95dee27f9d5cc1489f05e71d63b3",
"assets/assets/images/img_apple_logo.png": "cd44f53dbb76a3b60ada81145e621aaa",
"assets/assets/images/img_kr_logo.png": "9461c6ffafd9cd00ca58c78138eaf6bb",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/AssetManifest.bin": "7b29ba09809c5cde899d2bdc7c3b6992",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/AssetManifest.json": "cf29985c6488fe5199f6df76e67ba39b",
"assets/NOTICES": "25b213e227bf1764958cc2fb3492d432",
"index.html": "cd72db540d3c5ba427a6f918890d55c0",
"/": "cd72db540d3c5ba427a6f918890d55c0",
"main.dart.js": "b8fa236c012b2b745f67362d782ea62b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "5e1f9ad1db93536b4e6f607641b0563b",
"flutter_bootstrap.js": "baa4e8a99334a222acd29dc23d67626c",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"manifest.json": "4d2a074e955647542596586cbde41715",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
