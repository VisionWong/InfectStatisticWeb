## 项目介绍

* #### 简介

  该工程为福州大学软件工程专业软件工程实践课程的结对第二次作业，主要功能为用web实现疫情统计的可视化界面，功能如下：

  1. 主页能显示全国的统计数据和中国疫情地图
  2. 中国地图实现以不同的颜色区分各省份地区的疫情严重程度，数据从数据库获取
  3. 光标移至省份上实现高亮，点击能够进入省份详细数据页面，显示该省份的地区疫情数据
  4. 主页能够选择想要查看的数据的日期

* #### 作业要求

  [作业要求链接](https://edu.cnblogs.com/campus/fzu/2020SPRINGS/homework/10460)

* #### 如何使用

  本工程用到了JaveEE后端框架，使用Tomcat v9.0作为本地服务器，下列描述以eclipse为例

  1. 新建→Project→Web/Dynamic Web Project

  2. 工程命名为InfectStatisticWeb，target runtime 选择Apache Tomcat v9.0

  3. 将仓库里的代码文件分别放入对应的文件夹：

     * 所有的java代码连着包放入Java Resource/src下

     * 所有前端代码(js.css.jsp)放到WebContent目录下
     *  下载[引用文件](https://files.cnblogs.com/files/VisionWongBlog/lib.rar)放到WebContent/WEB-INF/lib下

  4. 创建数据库，用mysql文件夹下的sql文件生成数据库，在JavaResource/src/edu.fzu.infectstatistic.util/DBUtil配置一下数据库信息

  5. 启动Tomcat服务器，运行home.jsp（建议用FireFox等浏览器输入http://localhost:8080/InfectStatisticWeb/home.jsp打开，否则可能没有地图高亮，应该是eclipse浏览器的问题）

     

     