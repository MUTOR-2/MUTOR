---
layout: page
title: References
permalink: /references/
---

{% for u in site.units %}
### {{ u.number }}. {{ u.title }}

{% for r in u.citations %}
{% increment n %}. {{ r }}

{% endfor %}
{% endfor %}

