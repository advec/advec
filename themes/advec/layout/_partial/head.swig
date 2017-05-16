<head prefix="og: http://ogp.me/ns#">
  <meta charset="utf-8">
  <title>{{ config.title }}{% if page.name %} | {{ page.name }}{% else %} | Assembleia de Deus Vitória em Cristo{% endif %}</title>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  
  <!-- Icon -->
  <link rel="apple-touch-icon" sizes="57x57" href="{{ url_for('icon/apple-touch-icon-57x57.png') }}">
  <link rel="apple-touch-icon" sizes="114x114" href="{{ url_for('icon/apple-touch-icon-114x114.png') }}">
  <link rel="apple-touch-icon" sizes="72x72" href="{{ url_for('icon/apple-touch-icon-72x72.png') }}">
  <link rel="apple-touch-icon" sizes="144x144" href="{{ url_for('icon/apple-touch-icon-144x144.png') }}">
  <link rel="apple-touch-icon" sizes="60x60" href="{{ url_for('icon/apple-touch-icon-60x60.png') }}">
  <link rel="apple-touch-icon" sizes="120x120" href="{{ url_for('icon/apple-touch-icon-120x120.png') }}">
  <link rel="apple-touch-icon" sizes="76x76" href="{{ url_for('icon/apple-touch-icon-76x76.png') }}">
  <link rel="apple-touch-icon" sizes="152x152" href="{{ url_for('icon/apple-touch-icon-152x152.png') }}">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-196x196.png') }}" sizes="196x196">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-160x160.png') }}" sizes="160x160">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-96x96.png') }}" sizes="96x96">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-16x16.png') }}" sizes="16x16">
  <link rel="icon" type="image/png" href="{{ url_for('icon/favicon-32x32.png') }}" sizes="32x32">
  <!-- Chrome, Firefox OS and Opera -->
  <meta name="theme-color" content="#cc0000">
  <!-- Windows Phone -->
  <meta name="msapplication-navbutton-color" content="#cc0000">
  <!-- iOS Safari -->
  <meta name="apple-mobile-web-app-status-bar-style" content="#cc0000">
  <meta name="msapplication-TileImage" content="{{ url_for('icon/mstile-144x144.png') }}">
  <meta property="og:title" content="Assembleia de Deus Vitória e mCristo." />
  <meta property="og:type" content="article" />
  <meta property="og:url" content="http://www.advec.org/" />
  <meta property="og:image" content="..." />
  <meta property="og:image:width" content="1280" />
  <!-- CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  {{ css('/assets/application') }}
  <!-- endbuild -->
</head>
