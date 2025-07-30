---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: datatable
footer_dl:
  ⋯▽: defined below
  𝑻: table name
  𝒇: field name
  𝓍, 𝓎, 𝓏, 𝑿, 𝒀, 𝒁: placeholders
  𝒕, 𝒃: custom, base type names
  𝒌, 𝒗: key, value field names
  𝒌ₜ, 𝒗ₜ: key, value field types
---

{% capture defaults -%}
 {%- for fmt in site.data.formats -%}
  {%- if fmt[1].default_show %},{{ fmt[0] }}{% endif -%}
 {%- endfor -%}
{%- endcapture %}

<h1>Data Dictionary Formats</h1>
<div class="switch-container" id="format-switches" data-default-formats="{{ defaults | remove_first: "," }}">
  {% for fmt in site.data.formats %}
    <div class="switch-wrapper">
      <label class="switch">
        <input class="format-switch" type="checkbox" id="switch-{{ fmt[0] }}" data-col="{{ forloop.index }}" checked>
        <span class="slider"></span>
      </label>
      <label for="switch-{{ fmt[0] }}" class="switch-label">{{ fmt[1].title }}</label>
    </div>
  {% endfor %}
</div>

<div class="datatable-container">
  <div class="datatable-content">
    <table class="datatable">
      <thead>
        <tr>
          <th width="90">Feature</th>
          {% for fmt in site.data.formats %}
            <th><a target="_blank" href="{{ fmt[1].url }}"
              >{{ fmt[1].title }}</a></th>
          {% endfor %}
        </tr>
      </thead>
      <tbody>
        {% assign descriptions = site.data.feature_descriptions %}
        {% for desc in descriptions %}
          {% assign key = desc[0] %}
          <tr>
            <td width="90"><div class="desc-example">{{ desc[1] }}</div></td>
            {% for fmt in site.data.formats %}
              {% assign lang = fmt[1].example_language %}
              <td>
                {% assign examples = fmt[1].feature_examples[key] %}
                {% include cell.html %}
              </td>
            {% endfor %}
          </tr>
        {% endfor %}
      </tbody>
    </table>
  </div>
</div>
