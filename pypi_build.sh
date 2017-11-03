rm setup.py
sed "s/CHANGE_VER/$1/g" setup.py.skel > setup.py

#python setup.py sdist
#twine upload dist/*
