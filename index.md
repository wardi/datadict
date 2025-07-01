---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: Home
---

<div class="datatable-container">
  <div class="datatable-content">
    <table class="datatable display responsive nowrap" style="width:100%">
      <thead>
        <tr>
          <th>Description</th>
          <th>CSVW</th>
          <th>JSON Schema</th>
          <th>Data Package Table Schema</th>
        </tr>
      </thead>
      <tbody>
        {% assign descriptions = site.data.feature_descriptions %}
        {% assign csvw = site.data.csvw %}
        {% assign json_schema = site.data.json_schema %}
        {% assign data_package = site.data.data_package %}

        {% for i in (0..11) %}
        <tr>
          <td style="min-width: 180px;">{{ descriptions[i] }}</td>
          <td>
            {% if csvw[i] %}
            <div class="json-example">
              <pre><code class="language-json">{{ csvw[i] }}</code></pre>
            </div>
            {% endif %}
          </td>
          <td>
            {% if json_schema[i] %}
            <div class="json-example">
              <pre><code class="language-json">{{ json_schema[i] }}</code></pre>
            </div>
            {% endif %}
          </td>
          <td>
            {% if data_package[i] %}
            <div class="json-example">
              <pre><code class="language-json">{{ data_package[i] }}</code></pre>
            </div>
            {% endif %}
          </td>
        </tr>
        {% endfor %}
      </tbody>
    </table>
  </div>
</div>

