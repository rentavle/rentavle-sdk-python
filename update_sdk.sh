#!/bin/bash

# Clean up the previous build and dist directories
rm -rf build dist

# Build the package
python setup.py sdist bdist_wheel

# Upload the package to PyPI
twine upload dist/*

echo "Package updated to version $new_version and uploaded to PyPI."
