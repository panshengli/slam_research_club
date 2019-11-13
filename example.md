```bash
mkdir build && cd build  # 建立build并进入到该文件夹
cmake ..                 # 生成makefile文件
make                     # 编译makefile，并生成bin文件
./hello_cv_1             # 执行文件后输出"Hello_OpenCV"
```



```bash
在build文件下
```


```cmake
STATIC   # 静态库，在链接其他目标时使用
SHARED   # 动态链接库，运行时加载
MODULE   # 运行时使用dlopen-系列的函数动态链接
```