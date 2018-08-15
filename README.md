# SnGame
3D蛇皮 Game

## 18/08/10 import

需要导入GL头文件

# Steps to include graphics.h in CodeBlocks:
# 如何在codeblocks中添加源文件graphics.h

## Step 1: Download WinBGIm from http://winbgim.codecutter.org/ or use this link.

第一步：点击网站 http://winbgim.codecutter.org/或者这个连接 link下载文件WinBGIm

## Step 2: Extract the downloaded file. You’ll get three files:

	graphics.h
	winbgim.h
	libbgi.a

第二步：解压下载好的WinBGIm文件，打开，里面有一下三个文件：
	
	graphics.h
	winbgim.h
	libbgi.a

## Step 3: Copy and paste graphics.h and winbgim.h files into the include folder of your compiler directory. (If you have Code::Blocks installed in C drive of your computer, go through: Disk C >> Program Files >> CodeBlocks >> MinGW >> include. Paste these two files there.)

第三步：复制graphics.h 和 winbgim.h，粘贴到包含编译器目录下的文件夹。（如果你把codeblock安装在C盘上，粘贴到这里：C盘 >> Program Files >> CodeBlocks >> MinGW >> include）

## Step 4: Copy and paste libbgi.a to the lib folder of your compiler directory.

第四步：复制 libbgi.a，粘贴到你的编译目录的lib文件夹。

## Step 5: Open Code::Blocks. Go to Settings >> Compiler >> Linker settings.

第五步：打开codeblock，点击Settings >> Compiler >> Linker settings。

## Step 6: In that window, click the Add button under the “Link libraries” part, and browse and select the libbgi.a file copied to the lib folder in step 4.

第六步：点击在Link libraries部分下的Add，选择 libbgi.a 

## Step 7: Go to “Other linker options” on the right part and paste these commands:
[highlight color=”yellow”]-lbgi -lgdi32 -lcomdlg32 -luuid -loleaut32 -lole32[/highlight]

第七步：点击“Other linker options”，并粘贴以下文字：

[highlight color=”yellow”]-lbgi -lgdi32 -lcomdlg32 -luuid -loleaut32 -lole32[/highlight]

## Step 8: Make sure you got steps 6 and 7 right! Here’s a screenshot of previous two steps. Then, click Ok.

第八步：确保你第6,7步正确，具体可参考下图，再点击OK。

Graphics.h in codeblocks - Compiler SettingsGlobal Compiler Settings >> Linker Settings

## Step 9: If you now try compiling a graphics.h program code in C or C++, you’ll still get error. To solve it, open graphics.h file (pasted in include folder in step 3) with Notepad++. Go to line number 302, and replace that line with this line:
[highlight color=”yellow”]int left=0, int top=0, int right=INT_MAX, int bottom=INT_MAX,[/highlight]

graphics.h file

Save the file. Done!

Now you can compile any C or C++ program containing graphics.h header file. If you compile C codes, you’ll still get an error saying: “fatal error: sstream : no such file directory”. For this issue, if your file extension is .c, change it to .cpp.

第九步：用Notepad++打开graphics.h，找到第302行，删改为以下文字：

[highlight color=”yellow”]int left=0, int top=0, int right=INT_MAX, int bottom=INT_MAX,[/highlight]

保存文件就OK啦！但是如果你新建.c文件又用上了graphics.h 头文件，那么编译器还是会报错，要改为.cpp文件。