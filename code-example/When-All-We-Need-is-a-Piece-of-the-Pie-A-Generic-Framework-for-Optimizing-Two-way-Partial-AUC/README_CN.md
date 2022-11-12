# When All We Need is a Piece of the Pie: A Generic Framework for Optimizing Two-way Partial AUC

## 环境依赖
所有实验都在一台配备了ubuntu 16.04操作系统、Intel(R) Xeon(R) Silver 4110 处理器和TITAN RTX 显卡的服务器上进行，相关依赖如下（见code/requirements.txt）：
- python 3.7+
- pytorch 1.8+
- numpy
- tqdm
- scikit-learn
- scikit-image
- lmdb
- easydict

## 数据集

论文中主要涉及到以下三个数据集，所有数据均已公开，具体如下：
- CIFAR-10-LT: 已包含于code/data/cifar-10-long-tail文件夹
- CIFAR-100-LT: 已包含于code/data/cifar-100-long-tail文件夹
- Tiny-ImageNet-200-LT: 可通过[此链接下载](https://drive.google.com/file/d/1WYoQrDIDK-E2aK8Rj_Vph_MBXIDjusHs/view)，下载完成后解压存入code/data文件夹下即可。

此外，每个数据集包含3三个子集，每个子集由原来的多分类数据集中随机选择一定数目的类别，归为一类，最终构造不平衡的二分类数据集，故共9个数据集。具体构造的正样本类别id如下：
- CIFAR-10-long-tail各子集类别id分别为:"2", "1", "3"
- CIFAR-100-long-tail各子集类别id分别为:"6, 7, 14, 18, 24", "0, 51, 53, 57, 83", "15, 19, 21, 32, 38"
- Tiny-ImageNet-200-LT各子集类别id分别为:"24, 25, 26, 27, 28, 29", "11, 20, 21, 22", "70, 81, 94, 107, 111, 116, 121, 133, 145, 153, 164, 166 "
## 代码运行

### 安装环境依赖

执行如下命令，安装依赖
```
pip3 install -r requirements.txt
```

### 运行
1. 实验中每个数据集包含9个子集，需预先在params文件夹下对应的json文件中配置相应的"class2id",正样本（少数类）为1，其余默认为0, 每个子集的正样本id见上述数据集配置。
- 若运行cifar-10-long-tail数据集需配置以cifar.json结尾的文件
- 若运行cifar-100-long-tail数据集需配置以cifar_100.json结尾的文件
- 若运行Tiny-ImageNet-200-LT数据集需配置以tiny_imagenet.json结尾的文件

2. 执行获取最终实验结果

```
chmod +x run.sh
./run.sh
```

## 实验结果

实验过程中会进行日志保存，包括每个epoch的训练、验证、测试的损失及相应指标。
可以看出实验结果与论文中基本一致。