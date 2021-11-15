{% for editor in include.editors %}
  - **[{{ editor.name }}]({{ editor.ORCID }})**, {{ editor.institution }}
{% endfor %}
