rm setup.py
sed "s/CHANGE_VER/$1/g" setup.py.skel > setup.py

git tag $1 -m "$1 version"
git tag

git push --tags origin master && python setup.py sdist && twine upload dist/*
