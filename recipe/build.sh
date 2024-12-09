<<<<<<< HEAD
#!/bin/bash

bazel build tensorflow_metadata:build_pip_package
bazel run tensorflow_metadata:build_pip_package
pip install --no-deps dist/*.whl
=======
set -ex
python -m pip install --no-deps --ignore-installed tensorflow_metadata-${PKG_VERSION}-py3-none-any.whl
# Remove the strict protobuf requirement. Conda will manage it.
sed -i 's/^Requires-Dist: protobuf.*/Requires-Dist: protobuf/' ${SP_DIR}/tensorflow_metadata-${PKG_VERSION}.dist-info/METADATA
>>>>>>> conda-forge/main
