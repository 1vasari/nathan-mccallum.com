---
title: Tags
permalink: /tags/
layout: page
---

{% for tag in site.tags %}

{% capture tag_name %}{{ tag | first }}{% endcapture %}

## {{ tag_name | replace: '-', ' ' | capitalize }}

  {% for post in site.tags[tag_name] %}
  - [{{post.title}}]({{ site.baseurl }}{{ post.url }})
  {% endfor %}
{% endfor %}
