{{ partial('_partial/navbar') }}
{{ page.content }}

<section class="departamento-list">
    <div class="departamento-list__container">
    {% for departamento in site.data.departamento %}
        <div class="departamento-list__container__block">
            <div class="departamento-list__container__block__background">
                <img src="/assets/images/item/{{ departamento.img }}.png">
            </div>
            <div class="departamento-list__container__block__title">
                <h3>{{ departamento.name }}</h3>
            </div>
        </div>
    {% endfor %}
    </div>
</section>