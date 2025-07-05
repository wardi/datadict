---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---

<div class="datatable-container">
  <div class="datatable-content">
    <table class="datatable">
      <thead>
        <tr>
          <th></th>
          {% for fmt in site.data.formats %}
            <th>{{ fmt[1].title }}</th>
          {% endfor %}
        </tr>
      </thead>
      <tbody>
        {% assign descriptions = site.data.feature_descriptions %}
        {% for desc in descriptions %}
          {% assign key = desc[0] %}
          <tr>
            <td style="min-width: 180px;"><div class="desc-example">{{ desc[1] }}</div></td>
            {% for fmt in site.data.formats %}
              <td>
                {% assign egs = fmt[1].feature_examples[key] %}
                {% for eg in egs %}
                  <div class="example">
                    <pre><code class="language-{{ fmt[1].example_language }}"
                      >{{ eg }}</code></pre>
                  </div>
                {% endfor %}
              </td>
            {% endfor %}
          </tr>
        {% endfor %}
      </tbody>
    </table>
  </div>
</div>

