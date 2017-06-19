{% if page.footer == NULL %}
<!DOCTYPE html>
<html lang="pt-br">
  {{ partial('_partial/head') }}
<body>
{% endif %}
  {{ body }}
  {% if page.footer == NULL %}
    {% if page.basic == NULL %}
      {{ partial('_partial/footer') }}
    {% endif %}
  {% endif %}
{% if page.footer == NULL %}
</body>
</html>
{% endif %}
