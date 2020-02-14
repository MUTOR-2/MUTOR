<nav class="site-nav">
<!-- <ul> -->
<!-- <li>units</li> -->
<ul>
{% for unit in site.units %}
<li>
<a href=".{{unit.url}}">
{{unit.number}}. {{unit.title}}
</a>
</li>
{% endfor %}
</ul>
<!-- </ul> -->
</nav>
