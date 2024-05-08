#! /bin/bash

{% if cookiecutter.init_git %}
# Check attributes for git init
validEmailPattern="^(.+)@(.+)$"
if [[ ! "{{ cookiecutter.git_email }}" =~ $validEmailPattern ]]; then
    echo "Invalid Git email"
    exit 1
fi

validUsernamePattern='^[a-zA-Z0-9]{1}[a-zA-Z0-9\-]{0,38}$'
if [[ ! "{{ cookiecutter.git_username }}" =~ $validUsernamePattern ]]; then
    echo "Invalid Git username"
    exit 1
fi
{% endif %}