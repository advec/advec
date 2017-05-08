<section class="filial-details">
  <div class="filial-details__container">
    <div class="filial-details__container__list">
      {% for filial in site.data.filial %}
      {% if filial.est == page.estado %}
        <div class="filial-details__container__list__block">
          <h3>{{ filial.nome }}</h3>
          <p>{{ filial.endereco }}</p>
          <div class="filial-details__container__list__block__end">
            <h4>Pastor: {{ filial.pastor.nome }}</h4>
            {% if filial.telefone != "" %}<h4>Telefone: {{ filial.telefone }}</h4>{% endif %}
          </div>
          <p>
            <a href="mailto: secretaria.{{ filial.id }}@advec.org">
              <i class="icon--email"></i>
            </a>
          </p>
        </div>
      {% endif %}
    {% endfor %}
    </div>
  </div>
</section>
