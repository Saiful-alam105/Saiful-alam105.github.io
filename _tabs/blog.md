---
layout: page
title: Blog Posts
icon: fas fa-newspaper
order: 1
---

{% assign grouped = site.posts | group_by_exp: "post", "post.categories | first" %}

<div class="d-flex flex-wrap gap-2 mb-4" aria-label="Filter posts by category">
  <a class="btn btn-outline-primary btn-sm" href="#all">All</a>
  {% for group in grouped %}
    <a class="btn btn-outline-primary btn-sm" href="#{{ group.name | slugify }}">{{ group.name | capitalize }}</a>
  {% endfor %}
</div>

## All

{% for post in site.posts %}
<div class="d-flex justify-content-between align-items-baseline mb-2">
  <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
  <span class="text-muted ms-3 text-nowrap">{{ post.date | date: "%b %d, %Y" }}</span>
</div>
{% endfor %}

{% for group in grouped %}
## {{ group.name | capitalize }}

{% for post in group.items %}
<div class="d-flex justify-content-between align-items-baseline mb-2">
  <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
  <span class="text-muted ms-3 text-nowrap">{{ post.date | date: "%b %d, %Y" }}</span>
</div>
{% endfor %}
{% endfor %}

## Tags

<div id="tags" class="d-flex flex-wrap mx-xl-2">
  {% assign tags = '' | split: '' %}
  {% for t in site.tags %}
    {% assign tags = tags | push: t[0] %}
  {% endfor %}

  {% assign sorted_tags = tags | sort_natural %}

  {% for t in sorted_tags %}
    <div>
      <a class="tag" href="{{ t | slugify | url_encode | prepend: '/tags/' | append: '/' | relative_url }}">
        {{ t -}}
        <span class="text-muted">{{ site.tags[t].size }}</span>
      </a>
    </div>
  {% endfor %}
</div>