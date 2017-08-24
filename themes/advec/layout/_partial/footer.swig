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
{{ js('assets/application') }}

<!-- Google Analytics-->
<script>
$('.owl-carousel').owlCarousel({
    center: true,
    autoWidth:true,
    stagePadding: 50,
    loop:true,
    margin:10,
    autoplay:true,
    autoplayTimeout:2000,
    autoplayHoverPause:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        }
    }
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
<!-- Hotjar Tracking Code for www.advec.org -->
<script>
    (function(h,o,t,j,a,r){
        h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
        h._hjSettings={hjid:604236,hjsv:5};
        a=o.getElementsByTagName('head')[0];
        r=o.createElement('script');r.async=1;
        r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
        a.appendChild(r);
    })(window,document,'//static.hotjar.com/c/hotjar-','.js?sv=');
</script>
<!-- / Google Analytics-->
