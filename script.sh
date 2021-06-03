git clone https://github.com/yselivonchyk/torch-ccl.git && cd torch-ccl
git submodule sync
git submodule update --init --recursive
python setup.py install


# cd src
# curl https://raw.githubusercontent.com/pytorch/pytorch/master/torch/lib/c10d/ProcessGroupNCCL.hpp > ProcessGroupNCCL.hpp
# curl https://raw.githubusercontent.com/pytorch/pytorch/master/torch/lib/c10d/ProcessGroupNCCL.cpp > ProcessGroupNCCL.cpp
