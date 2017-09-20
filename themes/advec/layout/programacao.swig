{{ partial('_partial/navbar__white') }}
{{ page.content }}

<section class="pgm-list">
    <div class="pgm-list__container">
        <div class="pgm-list__container__block">
            <div class="pgm-list__container__block__day">
                <h3>Domingo</h3>
            </div>
            <div class="pgm-list__container__block__event">
                    {% for programacao in site.data.programacao %}
                        {% if programacao.day == "dom" %}
                            <div class="infos">
                                <p class="day">
                                    {{ programacao.event.hour }}
                                </p>
                                <p class="event">
                                    {{ programacao.event.name }}
                                    {% if programacao.transmission == true %}
                                        <i class="icon--aovivo"></i>
                                    {% endif %}
                                </p>
                                <h4 class="local">
                                    {{ programacao.event.local }}
                                </h4>
                            </div>
                        {% endif %}
                    {% endfor %}
            </div>
        </div>

        <div class="pgm-list__container__block">
            <div class="pgm-list__container__block__day">
                <h3>Segunda-Feira</h3>
            </div>
            <div class="pgm-list__container__block__event">
                    {% for programacao in site.data.programacao %}
                        {% if programacao.day == "seg" %}
                            <div class="infos">
                                <p class="day">
                                    {{ programacao.event.hour }}
                                </p>
                                <p class="event">
                                    {{ programacao.event.name }}
                                    {% if programacao.transmission == true %}
                                        <i class="icon--aovivo"></i>
                                    {% endif %}
                                </p>
                                <h4 class="local">
                                    {{ programacao.event.local }}
                                </h4>
                            </div>
                        {% endif %}
                    {% endfor %}
            </div>
        </div>

        <div class="pgm-list__container__block">
            <div class="pgm-list__container__block__day">
                <h3>Terça-Feira</h3>
            </div>
            <div class="pgm-list__container__block__event">
                    {% for programacao in site.data.programacao %}
                        {% if programacao.day == "ter" %}
                            <div class="infos">
                                <p class="day">
                                    {{ programacao.event.hour }}
                                </p>
                                <p class="event">
                                    {{ programacao.event.name }}
                                    {% if programacao.transmission == true %}
                                        <i class="icon--aovivo"></i>
                                    {% endif %}
                                </p>
                                <h4 class="local">
                                    {{ programacao.event.local }}
                                </h4>
                            </div>
                        {% endif %}
                    {% endfor %}
            </div>
        </div>

        <div class="pgm-list__container__block">
            <div class="pgm-list__container__block__day">
                <h3>Quarta-Feira</h3>
            </div>
            <div class="pgm-list__container__block__event">
                    {% for programacao in site.data.programacao %}
                        {% if programacao.day == "qua" %}
                            <div class="infos">
                                <p class="day">
                                    {{ programacao.event.hour }}
                                </p>
                                <p class="event">
                                    {{ programacao.event.name }}
                                    {% if programacao.transmission == true %}
                                        <i class="icon--aovivo"></i>
                                    {% endif %}
                                </p>
                                <h4 class="local">
                                    {{ programacao.event.local }}
                                </h4>
                            </div>
                        {% endif %}
                    {% endfor %}
            </div>
        </div>

        <div class="pgm-list__container__block">
            <div class="pgm-list__container__block__day">
                <h3>Quinta-Feira</h3>
            </div>
            <div class="pgm-list__container__block__event">
                    {% for programacao in site.data.programacao %}
                        {% if programacao.day == "qui" %}
                            <div class="infos">
                                <p class="day">
                                    {{ programacao.event.hour }}
                                </p>
                                <p class="event">
                                    {{ programacao.event.name }}
                                    {% if programacao.transmission == true %}
                                        <i class="icon--aovivo"></i>
                                    {% endif %}
                                </p>
                                <h4 class="local">
                                    {{ programacao.event.local }}
                                </h4>
                            </div>
                        {% endif %}
                    {% endfor %}
            </div>
        </div>

        <div class="pgm-list__container__block">
            <div class="pgm-list__container__block__day">
                <h3>Sexta-Feira</h3>
            </div>
            <div class="pgm-list__container__block__event">
                    {% for programacao in site.data.programacao %}
                        {% if programacao.day == "sex" %}
                            <div class="infos">
                                <p class="day">
                                    {{ programacao.event.hour }}
                                </p>
                                <p class="event">
                                    {{ programacao.event.name }}
                                    {% if programacao.transmission == true %}
                                        <i class="icon--aovivo"></i>
                                    {% endif %}
                                </p>
                                <h4 class="local">
                                    {{ programacao.event.local }}
                                </h4>
                            </div>
                        {% endif %}
                    {% endfor %}
            </div>
        </div>

        <div class="pgm-list__container__block">
            <div class="pgm-list__container__block__day">
                <h3>Sábado</h3>
            </div>
            <div class="pgm-list__container__block__event">
                    {% for programacao in site.data.programacao %}
                        {% if programacao.day == "sab" %}
                            <div class="infos">
                                <p class="day">
                                    {{ programacao.event.hour }}
                                </p>
                                <p class="event">
                                    {{ programacao.event.name }}
                                    {% if programacao.transmission == true %}
                                        <i class="icon--aovivo"></i>
                                    {% endif %}
                                </p>
                                <h4 class="local">
                                    {{ programacao.event.local }}
                                </h4>
                            </div>
                        {% endif %}
                    {% endfor %}
            </div>
        </div>
    </div>
</section>
