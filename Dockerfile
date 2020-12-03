FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-devel
LABEL maintainer="tqzhang"

ARG cuda_version=cu101
ARG torch_version=torch-1.6.0

# install pytorch_geometric
RUN pip install torch-scatter        -f https://pytorch-geometric.com/whl/${torch_version}+${cuda_version}.html
RUN pip install torch-sparse         -f https://pytorch-geometric.com/whl/${torch_version}+${cuda_version}.html
RUN pip install torch-cluster        -f https://pytorch-geometric.com/whl/${torch_version}+${cuda_version}.html
RUN pip install torch-spline-conv    -f https://pytorch-geometric.com/whl/${torch_version}+${cuda_version}.html
RUN pip install torch-geometric
