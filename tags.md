---
title: Tags
permalink: /tags/
layout: page
---

{% assign tags = site.tags | sort %}
{% for tag in tags %}

## {{ tag | first | replace: '-', ' ' | capitalize }}

  {% assign posts = site.tags[tag_name] | sort %}
  {% for post in posts %}
  - [{{post.title}}]({% link post.url %})
  {% endfor %}
{% endfor %}
