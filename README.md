# slam_research_club
## cmake_practice
================================
### project 文件说明
1.添加最简单的cmake文件,并生成可执行文件;  
2.将.cpp文件生成简单的静态库形式(上半部分);  
3.将.cpp文件生成动态库,并指定生成库的路径,重点强调动态库与静态库的区别;  
4.链接内部库的形式以及说明调用方法;  
5.链接外部库的形式以及说明调用方法;  
>>a.重新说明project2部分的下半部分,强调如何生成外部可依赖的自定义的库;  
>>b.如何链接外部声明的库,并成功实现调用;  

[附加] 6.有没有更简单的方法管理find_package形式,引入catkin工具  
>>a.catkin工具解释及其下载;  
>>b.说明如何管理package及调用外部package;  
>>c.最终生成文件位置.  

### 安装cmake及catkin
```bash
sudo apt-cache search cmake   #搜索可用的cmake安装包  
sudo apt-get install cmake    #也可以源码安装  
sudo apt-cache search catkin  
sudo apt-get install python-catkin-pkg python-catkin-tools  
```

