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

{% if cookiecutter.push_git %}

validGitUrlPattern='^http(s)?://[-[:alnum:]/_.]+[-[:alnum:]_]+\.git$'
if [[ ! "{{ cookiecutter.git_repo_url }}" =~ $validGitUrlPattern ]]; then
    echo "Invalid Git repo URL"
    exit 1
fi

validGitBranchName='^[a-zA-Z0-9._/\-]*$'
if [[ ! "{{ cookiecutter.git_main_branch }}" =~ $validGitBranchName ]]; then
    echo "Invalid Git branch name (allowed caracters are: letters, digits, ".", "-", "_" and "/")"
    exit 1
fi
{% endif %}

{% endif %}