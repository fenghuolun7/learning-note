```RENAME```   
Specify a name for an installed file that may be different from the original file. Renaming is allowed only when a single file is installed by the command.

针对不同文件类型，比如（RUNTIME, ARCHIVE, LIBRARY，PUBLIC_HEADER），可以分开进行配置，比如分别指定安装路径（DESTINATION）、设置文件权限（PERMISSIONS）；如果不是在某个类别下的单独配置，那么就是针对所有类型。

值得一提的是，ARCHIVE一般是指静态库，LIBRARY则是指共享库，在不同平台上，略有差异，实际应用感觉不符合预期时查看一下官方文档即可，问题不大。

see https://cmake.org/cmake/help/latest/command/install.html for details.

只有执行 cmake --install 时cmake中的install语句才会真正执行   

Only when ```cmake -- install``` is executed will the install statement in cmake actually execute.