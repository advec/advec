<footer class="footer">
    <div class="footer__container">
        <div class="footer__container__row">
            <div class="footer__container__row__local">
                <h3>Estamos<br>Aqui.</h3>
                <p>(Sede) Rua Montevideu, 900<br>Penha - Rio de Janeiro</p>
                <a href="/filiais/" class="btn btn--black">Nossas filiais</a>
            </div>
            <div class="footer__container__row__social">
                <h3>Nossas<br>Redes.</h3>
                <p class="facebook"><a href="http://adv.ec/facebookofc" target="_blank">Facebook</a></p>
                <p class="instagram"><a href="http://adv.ec/instagramofc" target="_blank">Instagram</a></p>
                <p class="twitter"><a href="http://adv.ec/twitterofc" target="_blank">Twitter</a></p>
                <p class="youtube"><a href="http://adv.ec/youtubeofc" target="_blank">Youtube</a></p>
            </div>
            <div class="footer__container__row__icons">
                <a href="http://adv.ec/facebookofc" target="_blank"><i class="icon--facebook"></i></a>
                <a href="http://adv.ec/instagramofc" target="_blank"><i class="icon--instagram"></i></a>
                <a href="http://adv.ec/twitterofc" target="_blank"><i class="icon--twitter"></i></a>
                <a href="http://adv.ec/youtubeofc" target="_blank"><i class="icon--youtube"></i></a>
            </div>
        </div>
        <div class="footer__container__row--copyright">
            <span>ADVEC @ Todos os direitos reservados</span>
            <span>Tel: (21) 2187-7070 - De segunda a sexta das 9h às 18h</span>
            <span><a href="http://liug.co">desenvolvido por <strong>liug.co</strong></a></span>
        </div>
    </div>
</footer>

<!-- Application.js -->
{{ js('js/application') }}

<!-- Google Analytics-->
<script>
  var mySwiper = new Swiper ('.swiper__container', {
    effect: 'fade',
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    slidesPerView: 1,
    centeredSlides: true,
    autoplayDisableOnInteraction: false,
    grabCursor: true,
    autoplay: 2500,
    loop: true
  })
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-86386305-1', 'auto');
  ga('send', 'pageview');
</script>
<!-- / Google Analytics-->
<!-- start Mixpanel -->
<script type="text/javascript">(function(e,a){if(!a.__SV){var b=window;try{var c,l,i,j=b.location,g=j.hash;c=function(a,b){return(l=a.match(RegExp(b+"=([^&]*)")))?l[1]:null};g&&c(g,"state")&&(i=JSON.parse(decodeURIComponent(c(g,"state"))),"mpeditor"===i.action&&(b.sessionStorage.setItem("_mpcehash",g),history.replaceState(i.desiredHash||"",e.title,j.pathname+j.search)))}catch(m){}var k,h;window.mixpanel=a;a._i=[];a.init=function(b,c,f){function e(b,a){var c=a.split(".");2==c.length&&(b=b[c[0]],a=c[1]);b[a]=function(){b.push([a].concat(Array.prototype.slice.call(arguments,
0)))}}var d=a;"undefined"!==typeof f?d=a[f]=[]:f="mixpanel";d.people=d.people||[];d.toString=function(b){var a="mixpanel";"mixpanel"!==f&&(a+="."+f);b||(a+=" (stub)");return a};d.people.toString=function(){return d.toString(1)+".people (stub)"};k="disable time_event track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config reset people.set people.set_once people.increment people.append people.union people.track_charge people.clear_charges people.delete_user".split(" ");
for(h=0;h<k.length;h++)e(d,k[h]);a._i.push([b,c,f])};a.__SV=1.2;b=e.createElement("script");b.type="text/javascript";b.async=!0;b.src="undefined"!==typeof MIXPANEL_CUSTOM_LIB_URL?MIXPANEL_CUSTOM_LIB_URL:"file:"===e.location.protocol&&"//cdn.mxpnl.com/libs/mixpanel-2-latest.min.js".match(/^\/\//)?"https://cdn.mxpnl.com/libs/mixpanel-2-latest.min.js":"//cdn.mxpnl.com/libs/mixpanel-2-latest.min.js";c=e.getElementsByTagName("script")[0];c.parentNode.insertBefore(b,c)}})(document,window.mixpanel||[]);
mixpanel.init("e60e423bbbea97a77c506f56a75856d3");</script>
<!-- end Mixpanel -->
<script type="text/javascript">
    window.smartlook||(function(d) {
    var o=smartlook=function(){ o.api.push(arguments)},h=d.getElementsByTagName('head')[0];
    var c=d.createElement('script');o.api=new Array();c.async=true;c.type='text/javascript';
    c.charset='utf-8';c.src='//rec.smartlook.com/recorder.js';h.appendChild(c);
    })(document);
    smartlook('init', '5bb23aeae547a4cd2b849659fa15f51808850aed');
</script>
