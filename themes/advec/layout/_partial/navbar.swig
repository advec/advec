<!-- Header / Nav -->
<div class="navbar">
    <div class="navbar__container">
        <div class="navbar__container__row">
            <div class="navbar__container__row__logo">
                <a href="/">
                  <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                  	 viewBox="0 0 1496 383.4" style="enable-background:new 0 0 1496 383.4;" xml:space="preserve">
                  <g>
                  	<g>
                  		<g>
                  			<path class="st0" d="M164.9,70.9c6.1,6.5,23.4,40.9-21.7,61.5c-54.1,24.7-27.1,92.6-27.1,92.6s-2.1-17.5,0.6-28.5
                  				c12.3-41.8,44.9-39.7,70.8-67.6C212.6,102,171.5,73.4,164.9,70.9z"/>
                  			<path class="st0" d="M203.3,109.6c0,0,14.4,21.6-44.2,52.7c-53.9,28.6-27.3,89.9-27.3,89.9c-3.6-53.2,15.6-60.7,57.3-86.1
                  				C233.5,139.1,203.3,109.6,203.3,109.6z"/>
                  			<path class="st0" d="M220.5,131.5c0,0,13.8,23.4-44.5,55.5c-58.1,32-28.5,92.1-28.5,92.1c-7.7-57.4,34.6-66.1,63-86.9
                  				C255.5,166.7,220.5,131.5,220.5,131.5z"/>
                  		</g>
                  		<g>
                  			<path class="st1" d="M170.1,0C76.1,0,0,76.9,0,171.8s76.1,171.8,170.1,171.8c93.9,0,170.1-76.9,170.1-171.8S264,0,170.1,0z
                  				 M170.1,333.7c-88.5,0-160.3-72.5-160.3-161.9S81.6,9.9,170.1,9.9c88.5,0,160.3,72.5,160.3,161.9S258.6,333.7,170.1,333.7z"/>
                  		</g>
                  		<path class="st2" d="M170.1,383.4c-6.8-6.6-18.2-15.7-37.1-19.3c-18.9-3.6-43.3,1.7-58.5,5.1S5.3,380.4,5.3,380.4l1.1-2.3
                  			C22,375.5,43,369.8,50,367.3c7-2.5,47.7-17.2,72.3-17.2s40.7,9.5,47.7,18c7-8.5,23.1-18,47.7-18s65.3,14.6,72.3,17.2
                  			c7,2.5,28,8.3,43.7,10.8l1.1,2.3c0,0-53.9-7.8-69.1-11.2s-39.7-8.7-58.5-5.1C188.3,367.7,176.9,376.8,170.1,383.4z"/>
                  	</g>
                  </g>
                  </svg>
                </a>
            </div>
            <div class="navbar__container__row__navbar">
                <div class="navbar__container__row__navbar__items">
                    <ul>
                        {% for link in site.data.menu %}
                        <li><a href={{ url_for(link) }}>{{ loop.key }}</a></li>
                        {% endfor %}
                    </ul>
                    <div class="btn-nav">
                      <span></span>
                      <span></span>
                      <span></span>
                      <span></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="megamenu" style="visibility: hidden">
  <div class="megamenu__container">
  	<div class="megamenu__container__block">
  		<ul class="megamenu__container__block__list">
  			<li class="megamenu__container__block__list__item">
			  	<h4><a href="/quem-somos/">Quem Somosa</a></h4>
          <h4><a href="/filiais/">Onde Estamos</a></h4>
          <h4><a href="/dizimos-e-ofertas/">Dízimos e Ofertas</a></h4>
          <h4><a href="/fazer-parte/">Departamentos</a></h4>
          <h4><a href="/programacao/">Programação</a></h4>
  			</li>
  		</ul>
  	</div>
  </div>
</div>
