---
layout: page
pagination:
    enabled: true
---

<div id="Blog" class="uk-section-small uk-padding-remove-top">
  <div class="uk-child-width-1-2@m" uk-grid="masonry: true">
    {% for post in paginator.posts %}
    <div>
      <div class="uk-card uk-card-default">
        {% if post.bigimg %}
        <div class="uk-card-media-top">
          <img src="{{ post.bigimg }}">
        </div>
        {% endif %}
        <div class="uk-card-body">
          <h3><a class="uk-link-text" href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
          <p class="uk-article-meta">
            <span uk-icon="calendar"></span> <span class="date">{{post.date | date: "%b %d, %Y "}} </span>
            <span uk-icon="tag"></span>
            {% for tag in post.tags %}
            <a href="/archive/index.html#{{ tag | cgi_escape }}" title="Pages tagged {{ tag }}" rel="tag">{{ tag }}</a>{% unless forloop.last %}, {% endunless %}{% endfor %}
            {% include reading-time-blog.html %}
          </p>
          <div class="content">
            <p>{{ post.excerpt | strip_html }}</p>
            <br><a href="{{ post.url | relative_url }}" class="uk-button uk-button-default post-read-more">Read More</a><br>
            {% unless forloop.last %}
            {% endunless %}
          </div>
        </div>
      </div>
    </div>
    {% endfor %}
  </div>
</div>
