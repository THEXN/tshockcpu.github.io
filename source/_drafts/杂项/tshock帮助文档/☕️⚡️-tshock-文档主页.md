---
title: ☕️⚡️ TShock 文档主页
tags: []
id: '970'
categories:
  - - uncategorized
date: 2023-11-10 12:18:58
hide: true
---

*   下载：[官方版](https://github.com/TShock/TShock/releases)或[实验版](https://ikebukuro.tshock.co/#/?id=experimental-downloads)。
*   下载：与TShock、OTAPI、TSAPI和Terraria兼容的[插件](https://github.com/topics/tshock-plugin)。
*   加入[Discord](https://discord.gg/Cav9nYX)。
*   在GitHub讨论中寻求帮助、聊天和其他事务。如果Discord不适合您，这是获取帮助的最佳方式。
*   要获取新闻，请关注Twitter上的[@Pryaxis](https://twitter.com/Pryaxis)。
*   在[GitHub](https://github.com/Pryaxis/TShock)上贡献更改并参与项目。
*   [TShock](https://www.nuget.org/packages/TShock/)和[TSAPI](https://www.nuget.org/packages/TSAPI/)的NuGet软件包可用。

* * *

## 安装TShock

TShock支持.NET 6支持的任何系统。您应该能够在macOS、Windows或Linux上的x86、x86\_64、arm32、arm64和arm64e上运行TShock。TShock也已成功用于FreeBSD，使用非官方版本的.NET。

通常，TShock至少需要1GB的内存，但替代的瓷砖提供程序可能能够降低最低内存阈值。您还需要一台性能合理的计算机。Raspberry Pi 4已用于非常小型的服务器，但在实践中，我们建议使用更强大的设备。

1.如果您使用的是Windows 10或其他操作系统，请安装[.NET Runtime版本6.x](https://dotnet.microsoft.com/en-us/download/dotnet/6.0)，或者如果您打算构建和开发插件，请安装.NET SDK 6.x。如果您使用的是Windows 11 22H2或更高版本，则您可能已经安装了.NET 6。

2.下载[最新的稳定版本](https://github.com/TShock/TShock/releases)并使用您喜欢的解压工具解压文件夹。确保zip文件中的所有文件都进入一个文件夹。这就是您的服务器将存储的位置。文件结构如下：

TShock.Server.exe 
bin\\ 
------HttpServer.dll 
------ModFramework.dll 
------OTAPI.dll 
------OTAPI.Runtime.dll 
------TerrariaServer.dll 
ServerPlugins\\ 
------TShockAPI.dll

3.运行`TShock.Server.exe`（或其他平台上的`TShock.Server`）并启动TShock，创建一个名为`tshock`的文件夹，用于存储其数据库和配置文件。回答启动问题，您应该准备就绪。在后台，TShock为您创建了一些文件夹。稍后我们会回到这些文件夹。

4.启动Terraria。通过IP连接到`多人`服务器，如果在本地计算机上进行操作，请输入`localhost`。如果在另一台计算机上进行操作，则需要其IP地址。

5.查看服务器控制台以获取设置代码。在游戏聊天中键入`/setup [code]`（例如：`/setup 12345`），然后输入控制台中看到的代码。与聊天不同，您将在服务器上运行一个命令。这个命令使您成为临时管理员。所有命令都以`/`或`!`（使它们无声）为前缀。

6.使用游戏内命令`/user add [用户名字] [密码] owner`（例如：`/user add shank lovely-grilled-cheese owner`）创建一个帐户。这将在您的服务器上给予您所有者权限，您可以稍后更改为自己喜欢的方式进行配置。

7.使用``/login `[用户名字] [密码]` ``（例如：/login shank grilled-cheese）登录到新创建的帐户。您应该会看到登录成功的消息。

8.使用`/setup`关闭设置系统，您的服务器已设置好以供初始使用。TShock还在新的`tshock`文件夹中创建了几个文件。这些文件包括`config.json`（我们的大型配置文件）、`sscconfig.json`（服务器端角色配置文件）和`tshock.sqlite`。不要丢失`tshock.sqlite`，否则您将不得不重新设置TShock。

9.要安装更多插件，请将它们添加到`ServerPlugins`文件夹中。

### 升级

要将TShock 5升级到将来的TShock 5版本，只需下载最新版本，解压存档，然后将发布存档中的所有文件合并到您的现有安装中。tshock文件夹包含用户数据，任何数据库更改都将自动执行，以使您的服务器与我们的最新内容保持同步。

#### 从TShock 4升级？

如果您从TShock 4升级，建议下载TShock的新版本，将`tshock`配置文件夹（包含`sqlitedb`文件以及`json`配置文件等）复制到新服务器，并以这种方式启动新服务器。这是因为从TShock 4中删除了许多文件，并且不再需要TShock 4中的现有文件。此外，您需要运行的新二进制文件称为`TShock.Server.exe`或`TShock.Server`，而不是`TerrariaServer.exe`。

此外，在非Windows操作系统上，您不再需要安装`mono-complete`或`mono`。

### 苹果芯片

在苹果芯片上，您可以使用Rosetta 2运行TShock。通过使用TShock及其相关插件的`x64`版本来完成。确保这是您下载的版本。

1.  `不要从homebrew安装dotnet`。相反，请安装[`x86`的.NET 6 SDK](https://dotnet.microsoft.com/en-us/download)。
2.  将.NET的`x64`版本添加到您的路径中：`export PATH=$PATH:/usr/local/share/dotnet/x64/`.
3.  如果尚未安装Rosetta 2，请在终端中运行`sudo softwareupdate --install-rosetta --agree-to-license`。
4.  运行`./TShock.Server在`终端中
    *   如果您收到提示，说明无法运行`TShock.Server`，因为苹果无法检查它是否含有恶意软件，请右键单击Finder中的`TShock.Server`，然后选择“打开”，然后选择Terminal。然后，您将被提示绕过系统安全性。在要求绕过系统安全性的提示上点击“打开”。如果您正确执行了此操作，则可以从终端中运行`TShock.Server`，而无需再次执行此操作

如果出现以下错误：

rosetta error: /var/db/oah/2c885558d6a2ecad3098d24447a4071ee679371339e97846cd3d03a3b2bf5ab4/
b45bd88b435cac41689c907440d5761e7182a4da0cbacaea5b1310d4f7e965d0/TShock.Server.aot:
attachment of code signature supplement failed: 1

尝试重新启动您的Mac，重新下载服务器，安装更新，或重新运行`softwareupdate --install-rosetta`。

由于`W^X`内存保护和[MonoMod](https://github.com/MonoMod/MonoMod)尚未支持的其他功能，TShock需要在Rosetta 2下运行。关于支持Apple Silicon的[MonoMod仓库上有一个问题](https://github.com/MonoMod/MonoMod/issues/90)。

## 实验性下载

要下载TShock的实验版本，您有两个真正的选项：AppVeyor构建或GitHub构建。但请注意：TShock的实验版本是在某一时刻发布的版本，我们在技术上不提供支持。如果您需要报告问题，请明确说明您从哪个提交或分支下载了版本，使用的是哪个服务以及（如果适用）构建号。

在[AppVeyor](https://ci.appveyor.com/project/hakusaro/tshock/)上，单击“history”，找到您想要的构建，单击提交消息，然后单击“artifacts”选项卡。您可以下载调试或发布版本。AppVeyor只保留6个月的构建记录，并且有带宽限制。

在[GitHub](https://github.com/Pryaxis/TShock/)上，单击“actions”选项卡，然后在您想要的提交或分支上单击“CI OTAPI3”。如果成功，您可以下载实验版本或调试工件。您必须登录GitHub才能使用这些链接。