# !/bin/bash
# CIFAR-10-LT
python3 train.py cifar-10-long-tail SquareAUCLoss
python3 train.py cifar-10-long-tail TPAUCLoss

# CIFAR-100-LT
python3 train.py cifar-100-long-tail SquareAUCLoss
python3 train.py cifar-100-long-tail TPAUCLoss

# TINY-IMAGENET-200-LT
python3 train.py tiny-imagenet-200 SquareAUCLoss
python3 train.py tiny-imagenet-200 TPAUCLoss
