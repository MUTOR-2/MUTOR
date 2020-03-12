---
layout: page
title: References
permalink: /references/
---

{% for r in site.references %}
{% include format_reference ref=r %}
{% endfor %}
