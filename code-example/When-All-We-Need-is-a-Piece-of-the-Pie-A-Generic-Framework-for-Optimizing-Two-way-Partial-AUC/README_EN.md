# When All We Need is a Piece of the Pie: A Generic Framework for Optimizing Two-way Partial AUC
>  Zhiyong Yang, Qianqian Xu, Shilong Bao, Yuan He, Xiaochun Cao and Qingming Huang. When All We Need is a Piece of the Pie: A Generic Framework for Optimizing Two-way Partial AUC. ICML 2021 (Long talk, 3\%)

This is an official implementation with PyTorch, and we run our code on Ubuntu 18.04 server. More experimental details can be found in our paper.

## Dependencies
All the experiments are carried out on a ubuntu 16.04.1 server equipped with Intel(R) Xeon(R) Silver 4110 CPU and a TITAN RTX GPU. In addition, our experiments require
- python 3.7+
- pytorch 1.8+
- numpy
- tqdm
- scikit-learn
- scikit-image
- lmdb
- easydict

## Datasets

In our paper, we evaluate our proposed method on three benchmark datasets, including:
- CIFAR-10-LT: included in code/data/cifar-10-long-tail
- CIFAR-100-LT: included in code/data/cifar-100-long-tail文件夹
- Tiny-ImageNet-200-LT: [Download here](https://drive.google.com/file/d/1WYoQrDIDK-E2aK8Rj_Vph_MBXIDjusHs/view) and save at "code/data". 

Moreover, we construct three different subsets for each dataset to make the comparison more fairly：
- We construct three binary subsets, in which the positive categories are 1) birds, 2) automobiles, and 3) cats, respectively. To be specific, the class ids are "2", "1", "3".
- We create CIFAR-100-LT in the same way as CIFAR-10-LT, and transform it into three binary long-tailed datasets by selecting a superclass as positive class examples each time. Specifically, the positive superclasses are 1) fruits and vegetables, 2) insects and 3) large omnivores and herbivores, respectively. To be specific, the class ids are "6, 7, 14, 18, 24", "0, 51, 53, 57, 83", "15, 19, 21, 32, 38".
- Tiny-ImageNet-200-LT: Similar to the CIFAR-100-LT dataset, we choose three positive
superclasses to construct binary subsets: 1) dogs, 2) birds and 3) vehicles. To be specific, the class ids are "24, 25, 26, 27, 28, 29", "11, 20, 21, 22", "70, 81, 94, 107, 111, 116, 121, 133, 145, 153, 164, 166".

## How to Run
- First of all, you need to install the dependencies by 
```
pip3 install -r requirements.txt
```
- Then you need to set the corresponding params on the params/*.json file. 
For example, set the corresponding class-id as 1 in "class2id" to run on the different subsets. See datasets part.

Subsequently, you can config run.sh and run it to obtain all results:

```
chmod +x run.sh
./run.sh
```
## Experiments

The results show the effectiveness of our proposed end2end TPAUC optimization framework.