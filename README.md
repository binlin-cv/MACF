# Motion-Aware Correlation Filter-Based Object Tracking in Satellite Videos

Matlab implementation of the proposed MACF tracker.

## Abstract

>Object tracking in satellite videos poses a significant challenge for existing trackers due to the typical involvement of small objects, multiple similar disruptors, and occlusions. To improve the performance of remote sensing tracking, a novel motion-aware correlation filter (MACF) algorithm is developed
in this study. The proposed approach provides the following improvements: 1) a motion estimation module based on the historical trajectory of the target is embedded into an enhanced spatial–temporal regularized correlation filter (CF)-based tracking framework, to suppress distractions caused by similar objects
(SOs); and 2) a failure correction module is employed to deal with the occlusion problem, thereby further enhancing the tracking robustness. Extensive experiments are conducted on the publicly available VISO and SatSOT datasets, with the experimental results demonstrating that the proposed MACF algorithm achieves superior accuracy in comparison to state-of-the-art trackers. Particularly, the present approach has offered the first-place solution for the single object tracking task given in the ICPR 2022 challenge, on moving object detection and tracking in satellite videos (SatVideoDT).

## Publication

Details about the MACF tracker can be found in our TGRS 2024 paper:

B. Lin, J. Zheng, C. Xue, L. Fu, Y. Li and Q. Shen, "Motion-Aware Correlation Filter-Based Object Tracking in Satellite Videos," in IEEE Transactions on Geoscience and Remote Sensing, vol. 62, pp. 1-13, 2024.

The paper link is: https://ieeexplore.ieee.org/document/10384429

Please cite the above publication if you find MACF useful in your research. The bibtex entry is:

>@ARTICLE{10384429,</br>
author={Lin, Bin and Zheng, Jinlei and Xue, Chaocan and Fu, Lei and Li, Ying and Shen, Qiang},</br>
journal={IEEE Transactions on Geoscience and Remote Sensing}, </br>
title={Motion-Aware Correlation Filter-Based Object Tracking in Satellite Videos}, </br>
year={2024},</br>
volume={62},</br>
number={},</br>
pages={1-13},</br>
doi={10.1109/TGRS.2024.3350988}}

## Contact

Bin Lin

Email: [binlin@mail.nwpu.edu.cn](mailto:binlin@mail.nwpu.edu.cn)

Jinlei Zheng

Email: [jinleizheng@126.com](mailto:jinleizheng@126.com)

Chaocan Xue

Email: [xcc23cg@163.com](mailto:xcc23cg@163.com)

## Prerequisites
To run the MACF tracker, please download the `imagenet-vgg-m-2048` network (placing it in ```feature_extraction/networks/```), and compile the Matconvnet toolbox (in ```external_libs/matconvnet/```).
>- The VGG-M model is available at http://www.vlfeat.org/matconvnet/pretrained/.
>- The Matconvnet is available at https://github.com/vlfeat/matconvnet.
>- The code is mostly in Matlab, except the workhorse of `fhog.m`, which is written in C and comes from Piotr Dollar toolbox http://vision.ucsd.edu/~pdollar/toolbox
>- gradientMex and mexResize have been compiled and tested for Windows 8 (64 bit). You can easily recompile the sources in case of need.

## Acknowledgements
Some codes of this work are adopted from previous trackers (STRCF, GFS-DCF, and FuCoLoT).
>- F. Li, C. Tian, W. Zuo, L. Zhang, and M.-H. Yang. Learning spatial–temporal regularized correlation filters for visual tracking. In CVPR, 2018.
>- T. Xu, Z.-H. Feng, X.-J. Wu, and J. Kittler. Joint group feature selection and discriminative filter learning for robust visual object
tracking. In ICCV, 2019.
>- A. Lukezic, L. Cehovin-Zajc, T. Vojir, J. Matas, and M. Kristan. FuCoLoT -- A fully-correlational long-term tracker. In ACCV, 2018.
