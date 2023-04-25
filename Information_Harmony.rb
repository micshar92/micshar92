{% comment %}Taken from https://idratherbewriting.com/simplifying-complexity/ensuring-information-harmony-in-the-larger-documentation-landscape.html
             For posterity. {% endcomment%}

{% for doc in site.docs %}
<b>queries:</b> {% if doc.queries == "none" or doc.queries == null %} Missing {% else %}
{% assign queries = doc.queries | split: ", " %}
<ul>{% for query in queries %} {% assign queryEncoded = query | url_encode %}
  <li>
      "{{query}}" → <a target="\_blank" href="http://www.google.com/search?q=site%3Adeveloper.amazon.com+{{queryEncoded}}">Google</a>,
      <a target="\_blank" href="https://developer.amazon.com/public/search?query={{queryEncoded}}">Dev Portal</a>,
      <a target="\_blank" href="https://forums.developer.amazon.com/search.html?f=&type=question+OR+kbentry+OR+idea&redirect=search%2Fsearch&sort=relevance&q={{queryEncoded}}">Forums</a>
</li>
    {% endfor %}</ul>{% endif %} </div>
{% endfor %}
