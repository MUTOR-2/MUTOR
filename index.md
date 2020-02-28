---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

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

{% include unit_list.md %}

{% for unit in site.units %}
<h2>{{ unit.number }}. {{ unit.title }}</h2>
<p>{{ unit.short_description | markdownify }}</p>
{% endfor %}
