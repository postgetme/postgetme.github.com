---
layout: post
title: "总线扩展实验总结"
date: 2013-08-31 15:01
comments: true
categories: verilog fpga 
---
{% blockquote %}
周三拍的开发板（139元)，周五收到，今天做完实验。这个开发板5年前要800元，我那时还有过一块。。。
{% endblockquote %}

![image](https://dl.dropboxusercontent.com/u/128996895/Blog/bus_expand/board.jpg)

###引脚整理
核心板加主板形式的开发板，很头疼的一件事就是查找引脚对应关系。正准备在纸上列个表格的，突然想起前不久看到过一个做表格的gem，于是就想顺便玩玩这个gem。弄了好半都没有搞定怎么把两个表格横向拼在一起（我Ruby刚学，最近又有好久没学了），最后只好用了`paste`命令。
![image](https://dl.dropboxusercontent.com/u/128996895/Blog/bus_expand/screen.png)

###CPU程序
简单的测试程序。我是有多久没玩过51了？8051访问外部地址空间的写法我搜罗了一下，大概有3种，见注释掉的部分。
{% include_code bus_expand/bus_expand.c %}

###CPLD程序
这个程序调试了好久，反复对比Rtl才得出这个最终版本，不知道还能不能优化。注释掉的地方值得注意，这些细小的差异会导致Rtl差异非常大，目前这种写法资源消耗最少。这个程序还可以写成模块化的形式，可以分成总线接口、LED、KEY三个模块，我见别人的程序是这么弄的，本程序因为很简单所以就这样吧。
{% include_code bus_expand/bus_expand.v %}

###Tcl
第一次用Tcl来配制引脚，没想到是这么简单和方便。
{% include_code bus_expand/bus_expand.tcl %}

###Rtl
![image](https://dl.dropboxusercontent.com/u/128996895/Blog/bus_expand/bus_expand_rtl.png)

