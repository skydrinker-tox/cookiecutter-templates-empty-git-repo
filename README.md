# Cookiecutter template - Empty git repo

Initialize empty git repo with default `.gitignore`, `.gitattributes`, `.editorconfig`, empty `README.md` and an optionnal `LICENSE`.

##

Instanciate with dockerized cookiecutter :

```
docker run -it --rm -v "$PWD":/usr/src/cookie ghcr.io/skydrinker-tox/cookiecutter:latest gh:skydrinker-tox/cookiecutter-templates-empty-git-repo
```