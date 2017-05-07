let CACHE_ACTUAL = 'cache13';
let archivos_para_cachear = [
  '/',
  '/index.html',
  '/?o=i',

  '/speakers/',
  '/about/',
  
  '/about/index.html',
  '/news/devfest-2016.html',
  '/news/speakers.html',
  '/pages/blog.html',
  '/speakers/index.html',
  '/speakers/schedule.html',
  '/como-llegar.html',

  '/fonts/FontAwesome.otf',
  '/fonts/fontawesome-webfont.eot',
  '/fonts/fontawesome-webfont.svg',
  '/fonts/fontawesome-webfont.ttf',
  '/fonts/fontawesome-webfont.woff',
  '/fonts/fontawesome-webfont.woff2',
  '/fonts/glyphicons-halflings-regular.eot',
  '/fonts/glyphicons-halflings-regular.svg',
  '/fonts/glyphicons-halflings-regular.ttf',
  '/fonts/glyphicons-halflings-regular.woff',
  '/fonts/glyphicons-halflings-regular.woff2',
  '/fonts/Stroke-Gap-Icons.eot',
  '/fonts/Stroke-Gap-Icons.svg',
  '/fonts/Stroke-Gap-Icons.ttf',
  '/fonts/Stroke-Gap-Icons.woff',
  '/fonts/dawat-font/Montserrat-Light.woff',
  '/fonts/dawat-font/Montserrat-SemiBold.woff',

  '/css/blogs.css',
  '/css/bootstrap.min.css',
  '/css/bootstrap-theme.css', 
  '/css/font-awesome.min.css', 
  '/css/jquery.countdown.css', 
  '/css/owl.carousel.css', 
  '/css/main.css',
  '/vendors/flexslider/flexslider.css',

  '/images/cabify-request.gif',
  '/images/cabify-code.gif',
  '/images/devfest2013.jpeg',
  '/images/devfest2013_header.jpg',
  '/images/GoogleDeveloperBus.jpeg',
  '/images/blogs/11.jpg',
  '/images/blogs/12.jpg',
  '/images/blogs/13.jpg',
  '/images/blogs/14.jpg',
  '/images/header/groups.jpg',
  '/images/header/logo.png',
  '/images/lightbox/close.png',
  '/images/lightbox/next.png',
  '/images/lightbox/prev.png',
  '/images/lightbox/loading.gif',
  '/images/past_events/1.jpeg',
  '/images/past_events/2.jpeg',
  '/images/past_events/3.jpeg',
  '/images/past_events/4.jpeg',
  '/images/past_events/past_events.jpg',
  
  '/images/speakers/alvaro-vanegas.jpeg',
  '/images/speakers/andres-calderon.jpg',
  '/images/speakers/andres-ciceri.jpg',
  '/images/speakers/antonio-guzman.jpg',
  '/images/speakers/camilo-rodriguez.jpg',
  '/images/speakers/daniel-coy.png',
  '/images/speakers/diego-coy.jpg',
  '/images/speakers/jorge-ardila.png',
  '/images/speakers/kevin-patino.jpg',
  '/images/speakers/maciek-ruckgaber.png',
  '/images/speakers/marlon-lopez.jpg',
  '/images/speakers/ronald-velasquez.jpg',
  '/images/speakers/santiago-carrillo.jpg',
  '/images/speakers/sonia-ardila.jpg',
  
  '/images/sponsors/angularjsco.png',
  '/images/sponsors/bogodev.png',
  '/images/sponsors/cabify.png',
  '/images/sponsors/desingrid.png',
  '/images/sponsors/djangobog.png',
  '/images/sponsors/gdgbog.png',
  '/images/sponsors/hybridappsco.jpeg',
  '/images/sponsors/ibos.png',
  '/images/sponsors/matrixlabs.png',
  '/images/sponsors/microsoft.jpg',
  '/images/sponsors/rappi.png',
  '/images/sponsors/tomatte.png',
  '/images/sponsors/toptal.png',
  '/images/sponsors/vice.png',

  '/js/jquery-2.2.0.min.js',
  '/vendors/flexslider/jquery.flexslider-min.js',
  '/js/jquery.countdown.min.js',
  '/js/bootstrap.min.js',
  '/js/owl.carousel.min.js', 
  '/vendors/Lightbox/lightbox.min.js', 
  '/vendors/mixitup/jquery.mixitup.min.js',
  '/vendors/map/gmaps.min.js',
  '/vendors/map/map.js',
  '/js/custome.js',

];

self.addEventListener('install', e => {
  console.log('install');
  e.waitUntil(
    caches.open(CACHE_ACTUAL).then(cache => {
      
      return cache.addAll(archivos_para_cachear)
        .then(_ => {
          self.skipWaiting();
        });
    })
  );
});


self.addEventListener('activate', event => {
  event.waitUntil(self.clients.claim());

  event.waitUntil(
    caches.keys().then(lasCachesQueExisten => {

      return Promise.all(
        lasCachesQueExisten.map(unaCache => {
          console.log(unaCache);
          if (unaCache !== CACHE_ACTUAL) {
            return caches.delete(unaCache);
          }
        })
      );

    })
  );
});



self.addEventListener('fetch', event => {
  event.respondWith(
    caches.open(CACHE_ACTUAL).then(cache => {
      if(event.request.method === 'GET') {

        return cache.match(event.request).then(elementoCacheado => {
          const elementoDeLaRed = fetch(event.request).then(respuestaDeLaRed => {
            cache.put(event.request, respuestaDeLaRed.clone());
            return respuestaDeLaRed;
          })
          return elementoCacheado || elementoDeLaRed;
        })

      }
    })
  );
});