# Default Apache virtualhost template

<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot {{project_root}}/current/web
    {% set servernames = servername.split() %}
    {% for servername in servernames %}
    {% if loop.first %}
    ServerName {{ servername }}
    {% else %}
    ServerAlias {{ servername }}
    {% endif %}
    {% endfor %}

    <Directory {{project_root}}/current/web>
    AllowOverride All
    Require all granted
    </Directory>
</VirtualHost>
