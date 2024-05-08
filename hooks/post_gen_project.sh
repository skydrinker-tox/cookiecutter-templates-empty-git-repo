#! /bin/bash

{% if cookiecutter.license == "None" %}
rm -f ./LICENSE
{% endif %}

{% if cookiecutter.init_git %}

git config --global init.defaultBranch {{ cookiecutter.git_main_branch }}
git config --global user.email {{ cookiecutter.git_email }}
git config --global user.name {{ cookiecutter.git_username }}
git init
git add .
git commit -a -m "Initial Commit."

{% endif %}