---
layout: post
title: "139元的总线扩展实验"
date: 2013-08-31 15:01
comments: true
categories: verilog fpga 
---
{% blockquote %}
做这个实验，前后准备了大概一个星期，先是搜集资料和熟悉资料，然后对比了几种不同的Verilog写法，最后考虑该怎么搭建环境验证。原本利用手头上已有的开发板是可以至少搭建出两种实验环境的，但我嫌太麻烦，需要飞很多线，所以最后还是在淘宝找来了现成的开发板，139元，周三拍的，周五收到，周六顺利完成实验。
{% endblockquote %}

![image](/images/Blog/bus expand/board.jpg)

###引脚整理
核心板加主板形式的开发板，很讨厌的一件事情就是查找引脚对应关系，正准备在纸上画个表格的，突然想起前不久看到过一个做表格的gem，正好可以拿来试试。弄了好半天都没有搞定怎么用Ruby把两个表格横向拼在一起，最后只好用了`paste`命令。
[![image](/images/Blog/bus expand/screen.png)](/images/Blog/bus expand/screen.png)

###CPU程序
简单的测试程序。8051访问外部地址空间的写法搜集了一下，大概有3种，见注释掉的部分。
{% include_code bus_expand/bus_expand.c %}

###CPLD程序
这个程序调试了好久，反复对比Rtl才得出现在这个样子，不知道还能不能优化？注释掉的两个地方值得注意，这些细小的差异会导致Rtl的异非常大，目前这种写法资源消耗最少。这个程序还可以写成模块化的形式，分成总线接口、LED、KEY三个模块，我参考的一份程序是这么弄的。
{% include_code bus_expand/bus_expand.v %}

###Tcl
第一次用Tcl来配置引脚，没想到这么简单。
{% include_code bus_expand/bus_expand.tcl %}

###Rtl
看到Rtl才发现其实真的很简单。
![image](/images/Blog/bus expand/bus_expand_rtl.png)

