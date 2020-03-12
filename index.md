---
layout: home
---

<!-- <nav class="site-nav"> -->
<!-- <\!-- <ul> -\-> -->
<!-- <\!-- <li>units</li> -\-> -->
<!-- <ul> -->
<!-- {% for unit in site.units %} -->
<!-- <li> -->
<!-- <a href=".{{unit.url}}"> -->
<!-- {{unit.number}}. {{unit.title}} -->
<!-- </a> -->
<!-- </li> -->
<!-- {% endfor %} -->
<!-- </ul> -->
<!-- <\!-- </ul> -\-> -->
<!-- </nav> -->

{% comment %}
{% include unit_list.md %}

{% for unit in site.units %}
<h2>{{ unit.number }}. {{ unit.title }}</h2>
<p>{{ unit.short_description | markdownify }}</p>
{% endfor %}
{% endcomment %}





