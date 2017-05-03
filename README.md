# Blog introduce
Project for blog

1.引言
 1.1编写目的
为自己制作个人博客软件的需求、安排规划项目与项目的进度，组织个人博客软件的开发和测试，来写次文档。 
 1.2项目背景
1.网站项目的名称：个人博客
2.用户：使用于河南的学生及其普通的用户
3市场的背景：就全球上网的人数来说，有很多的人正通过博客来改变他们的生活方式，同时学生也学习到了各个方面不同的知识，人们通过自己的文字来传递着不同的信息。作为一个发展迅速的网络空间，博客向我们透露着这个信息传递和情感的平台将影响接下来的几代人.

1.3术语定义
博客：一个Blog就是一个网页，它通常是由简短且经常更新的Post（这个词当名词用时就是张贴的文章）所构成；这些张贴的文章都按照年份和日期倒序排列，也就是最新的放在最上面，最旧的在最下面。不同Blog的内容和目的有很大的不同，从对网络资源的整理与评论，到有关公司、个人的构想，从新闻、照片到日记、诗歌、散文，甚至科幻小说都应有尽有。许多Blog只是个人所见，所闻，所想之事的内心独白，而其它一些Blog则可能是一群人基于某个特定主题或共同利益领域的集体创作。Blog就像是对网络传达的实时讯息。撰写这些Weblog或Blog的人就叫做Blogger或Blog Writer即博客。
 
2.任务概述
2.1目标：
工作范围：个人博客的制作使自己能够在博客中发表自己的文章，书写自己的心情，记录自己的点点滴滴，规划自己的人生目标，将来有所成就。
工作方法：a.建立查询网站，支持并发访问
          b.提高数据库的读取效率
          c.建立多个发布点，避免网络风险，保证数据传输稳定
操作要求：能随时根据站点数量和内容的变化实现更新和扩展，发布的信息能够鼓励Blog作者经常更新自己的站点，能够产生实际的宣传效果。
2.2功能分析
2.2.1功能结构图
 
                     
图2-1  博客功能结构图
2.2.2功能描述
a.个人博客注册：
(1)本功能面向新注册的会员。
(2)个人可以利用此 web系统进行网上注册。
(3)本模块直接对数据库大部分为写入和删除操作，在对指定的账户进行删除时需要用到简单的查询操作。
b. 文章管理功能：
(1)该功能面向所有普通用户及群管理员。
(2)普通用户可以在自己的主页中书写日记，群管理员可以书写群日记。
(3)用户可以编辑、删除自己写的日记。
c. 相册管理功能：
(1)该功能面向所有普通用户及群管理员。
(2)普通用户可以在自己的主页创建相册并上传照片，群管理员创建群相册并上传照片。
(3)创建相册需要输入相册名称。
(4)用户可以删除自己创建的相册和上传的相片。
d. 留言管理功能：
(1)该功能面向所有普通用户。
(2)用户可以对某一人或某一个群中留言。
(3)用户可以删除自己的留言，或者在自己主页上的留言。
e. 后台管理：
(1)本功能只向系统管理员提供，为管理员提供友好界面，便于管理员对系统各项数据进行管理。
(2)管理员管理的数据有用户、留言、音乐、日记、相册。
博客系统中，主要是管理用户的文章、留言、系统信息等数据。数据的类型决定了程序对数据的处理方式也就是算法，因此，数据是系统实现分析的起点。现通过数据流图的方式分析系统中数据的流动和处理。
2.3业务及业务流程图
用户首先需要登录该系统得到权限后才能对系统进行操作，为注册用户可以直接进入注册模块进行注册。登录系统后确定权限，只有管理员权限，才能对系统进行维护。普通用户可以对个人主页进行管理，管理的板块包括：日记、相册、留言、好友、公告以及群。
个人博客管理系统业务流程图，如图3-1所示：
 

图2-2  博客业务流程图
2.4数据流图分析
系统运行过程中，主要涉及到两部分的数据流向，一部分是管理员在系统后台管理界面上发出的对数据库操作的数据流，另一部分是用户在应用前台使用系统时所产生的数据流。
 

3.需求规定
3.1功能需求： 
文章管理模块	添加（博客本身，上传）
	删除（博客本身，系统管理员）
评论管理模块	发表评论（注册用户，系统管理员）
	删除（博客本身，管理员）
相册管理模块	添加照片（即上传照片，博客本身）
	删除（博客本身，系统管理员）
 
3.2性能要求
1.数据精确度：要按照严格的数据格式输入，否则系统不给予响应进行处理，输入数据除了非法字符均可
2.时间特性要求
运行环境各个页面的链接响应时间不得超过10s,对没进行操作的用户（180s）对其访问认证失效，需要重新登录。
3.灵活性
该系统的设计模块属于普通模式，当系统遇到偶然或非人为的故障时，本系统将自动保存未完成的任务。
 

3.3输入输出要求
音乐系统输入是mp3和wma格式,输出可用media播放器播放。
相册支持的格式是jpg，可以用任何浏览照片的形式输出。
其他系统则所用字符型并且日志中可以插入flash文件，对精度无特殊要求。

3.4故障处理要求
列出可能的软件、硬件故障以及对各项性能而言所产生的后果和对故障处理的要求。
（1）软件故障：
系统异常，IIS不稳定，此系微软公司提供的产品，无法对其进行改进。
（2）硬件故障：
网络不应负载超荷：大部分时间内应保证在线用户数量小于设定极限数量，通过编码或服务器功能实现。
（3）在系统中，数据的录入往往是大量的，因此系统要有一定的处理能力，以保证迅速的处理数据。
（4）数据的一致性与完整性 
由于系统的数据是共享的，要解决数据一致性问题，要有一定的人员维护数据，在数据录入处控制数据的去向，并且要求对数据库的数据完整性进行严格的约束。对于输入的数据，要为其定义完整性规则，如果不能符合完整性约束，系统应该拒绝该数据。
（5）数据的共享与独立性 
整个博客系统的数据是共享的。然而，从系统开发的角度上看，共享会给设计和调试带来困难。因此，应该提供灵活的配置，使各个分系统能够独立运行，而通过人工干预的手段进行系统数据的交换。这样，也能提供系统的强壮性。 
 
3.5其他专门要求
可以对所写东西设置权限，如公开和不公开。要求用户界面清楚方便使用且易读。系统可以补充、可靠。可以在多种系统下运行。
 

