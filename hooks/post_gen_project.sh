#! /bin/bash

{% if cookiecutter.init_git %}

git config --global init.defaultBranch {{ cookiecutter.git_main_branch }}
git config --global user.email {{ cookiecutter.git_email }}
git config --global user.name {{ cookiecutter.git_username }}
git init

git add .
git commit -a -m "Initial Commit."

{% if cookiecutter.push_git %}
git remote add origin {{ cookiecutter.git_repo_url }}
git push -u origin {{ cookiecutter.git_main_branch }}
{% endif %}

{% endif %}