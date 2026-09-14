---
layout: page
title: Blog Posts
icon: fas fa-newspaper
order: 4
---

{% for post in site.posts %}
<div class="d-flex justify-content-between align-items-baseline mb-2">
  <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
  <span class="text-muted ms-3 text-nowrap">{{ post.date | date: "%b %d, %Y" }}</span>
</div>
{% endfor %}