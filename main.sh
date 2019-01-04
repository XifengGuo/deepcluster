# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash

DIR="/datasets01/imagenet_full_size/061417/train"
ARCH="smallvgg"
LR=0.001
WD=-5
K=10
WORKERS=4
EXP="/home/xifeng/Workspace/deep_clustering/deepcluster/exp"

mkdir -p ${EXP}

CUDA_VISIBLE_DEVICES=0 python main.py ${DIR} --exp ${EXP} --arch ${ARCH} \
  --lr ${LR} --wd ${WD} --k ${K} --verbose --workers ${WORKERS} --sobel
