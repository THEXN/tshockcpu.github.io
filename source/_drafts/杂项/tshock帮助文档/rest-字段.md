---
title: REST 字段
tags: []
id: '1010'
categories:
  - - uncategorized
date: 2023-11-10 13:35:12
---

### BanCreateV3

*   **权限:** tshock.rest.bans.manage
*   **名词:**
    *   identifier（必需）\[字符串\] - 要封禁的标识符。
    *   reason（可选）\[字符串\] - 封禁原因。
    *   start（可选）\[字符串\] - 封禁开始时间。
    *   end（可选）\[字符串\] - 封禁结束时间。
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v3/bans/create?identifier=identifier&reason=reason&start=start&end=end&token=token`

### BanDestroyV3

*   **权限:** tshock.rest.bans.manage
*   **名词:**
    *   ticketNumber（必需）\[字符串\] - 要删除的封禁的票号。
    *   fullDelete（可选）\[布尔\] - 是否完全从系统中删除封禁。
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v3/bans/destroy?ticketNumber=ticketNumber&fullDelete=fullDelete&token=token`

### BanInfoV3

*   **权限:** tshock.rest.bans.view
*   **名词:**
    *   ticketNumber（必需）\[字符串\] - 要搜索的封禁的票号。
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v3/bans/read?ticketNumber=ticketNumber&token=token`

### BanListV3

*   **权限:** tshock.rest.bans.view
*   **名词:**
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v3/bans/list?token=token`

### GroupCreate

*   **权限:** tshock.rest.groups.manage
*   **名词:**
    *   group（必需）\[字符串\] - 新群组的名称。
    *   parent（可选）\[字符串\] - 父群组的名称。
    *   permissions（可选）\[字符串\] - 新群组的权限，逗号分隔。
    *   chatcolor（可选）\[字符串\] - 代表该群组聊天颜色的r,g,b字符串。
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v2/groups/create?group=group&parent=parent&permissions=permissions&chatcolor=chatcolor&token=token`

### GroupDestroy

*   **权限:** tshock.rest.groups.manage
*   **名词:**
    *   group（必需）\[字符串\] - 要删除的群组的名称。
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v2/groups/destroy?group=group&token=token`

### GroupInfo

*   **权限:** tshock.rest.groups.view
*   **名词:**
    *   group（必需）\[字符串\] - 要获取信息的群组名称。
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v2/groups/read?group=group&token=token`

### GroupList

*   **权限:** tshock.rest.groups.view
*   **名词:**
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v2/groups/list?token=token`

### PlayerKickV2

*   **权限:** tshock.rest.kick
*   **名词:**
    *   player（必需）\[字符串\] - 要踢出的玩家。
    *   reason（可选）\[字符串\] - 踢出玩家的原因。
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v2/players/kick?player=player&reason=reason&token=token`

### PlayerKill

*   **权限:** tshock.rest.kill
*   **名词:**
    *   player（必需）\[字符串\] - 要杀死的玩家。
    *   from（可选）\[字符串\] - 杀死玩家的来源。
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v2/players/kill?player=player&from=from&token=token`

### PlayerList

*   **名词:**
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/lists/players?token=token`

### PlayerListV2

*   **名词:**
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v2/players/list?token=token`

### PlayerMute

*   **权限:** tshock.rest.mute
*   **名词:**
    *   player（必需）\[字符串\] - 要禁言的玩家。
    *   token（必需）\[字符串\] - REST身份验证令牌。
*   **示例用法:** `/v2/players/mute?player=player&token=token`

### PlayerReadV3

*   **描述：** 获取用户信息。
*   **名词：**
    *   player（必需）\[String\] - 要查找的玩家。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.users.info
*   **示例用法：** `/v3/players/read?player=player&token=token`

### PlayerReadV4

*   **描述：** 获取用户信息。
*   **名词：**
    *   player（必需）\[String\] - 要查找的玩家。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.users.info
*   **示例用法：** `/v4/players/read?player=player&token=token`

### PlayerUnMute

*   **描述：** 解除玩家禁言。
*   **名词：**
    *   player（必需）\[String\] - 要解除禁言的玩家。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.mute
*   **示例用法：** `/v2/players/unmute?player=player&token=token`

### ServerBroadcast

*   **描述：** 广播服务器范围的消息。不需要特殊权限。
*   **名词：**
    *   msg（必需）\[String\] - 要广播的消息。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** 无
*   **示例用法：** `/v2/server/broadcast?msg=msg&token=token`

### ServerCommandV3

*   **描述：** 在服务器上执行远程命令，并返回命令的输出。
*   **名词：**
    *   cmd（必需）\[String\] - 要执行的命令和参数。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.command
*   **示例用法：** `/v3/server/rawcmd?cmd=cmd&token=token`

### ServerMotd

*   **描述：** 返回motd（如果存在）。不需要特殊权限。
*   **名词：**
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** 无
*   **示例用法：** `/v3/server/motd?token=token`

### ServerOff

*   **描述：** 关闭服务器。
*   **名词：**
    *   confirm（必需）\[Boolean\] - 确认确实要关闭服务器。
    *   message（可选）\[String\] - 关闭消息。
    *   nosave（可选）\[Boolean\] - 不保存即关闭。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.maintenance
*   **示例用法：** `/v2/server/off?confirm=confirm&message=message&nosave=nosave&token=token`

### ServerReload

*   **描述：** 重新加载服务器的配置文件。
*   **名词：**
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.cfg
*   **示例用法：** `/v3/server/reload?token=token`

### ServerRules

*   **描述：** 返回规则（如果存在）。不需要特殊权限。
*   **名词：**
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** 无
*   **示例用法：** `/v3/server/rules?token=token`

### ServerStatusV2

*   **描述：** 获取关于当前TShock服务器的信息列表。不需要特殊权限。
*   **名词：**
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** 无
*   **示例用法：** `/v2/server/status?token=token`

### ServerTokenTest

*   **描述：** 测试令牌是否仍然有效。不需要特殊权限。
*   **名词：**
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** 无
*   **示例用法：** `/tokentest?token=token`

### UserActiveListV2

*   **描述：** 返回当前在服务器上使用的用户帐户列表。
*   **名词：**
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.users.view
*   **示例用法：** `/v2/users/activelist?token=token`

### UserCreateV2

*   **描述：** 创建新的TShock用户帐户。
*   **名词：**
    *   user（必需）\[String\] - 新帐户的用户帐户名。
    *   group（可选）\[String\] - 应分配给新帐户的组。
    *   password（必需）\[String\] - 新帐户的密码。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.users.manage
*   **示例用法：** `/v2/users/create?user=user&group=group&password=password&token=token`

### UserDestroyV2

*   **描述：** 销毁TShock用户帐户。
*   **名词：**
    *   user（必需）\[String\] - 要查找的帐户的名称或ID。
    *   type（必需）\[String\] - 搜索条件类型（名称用于名称查找，ID用于ID查找）。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.users.manage
*   **示例用法：** `/v2/users/destroy?user=user&type=type&token=token`

### UserInfoV2

*   **描述：** 列出用户帐户的详细信息。
*   **名词：**
    *   user（必需）\[String\] - 要查找的帐户的名称或ID。
    *   type（必需）\[String\] - 搜索条件类型（名称用于名称查找，ID用于ID查找）。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.users.view
*   **示例用法：** `/v2/users/read?user=user&type=type&token=token`

### UserListV2

*   **描述：** 列出TShock数据库中的所有用户帐户。
*   **名词：**
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.users.view
*   **示例用法：** `/v2/users/list?token=token`

### UserUpdateV2

*   **描述：** 更新用户信息。
*   **名词：**
    *   user（必需）\[String\] - 要查找的帐户的名称或ID。
    *   type（必需）\[String\] - 搜索条件类型（名称用于名称查找，ID用于ID查找）。
    *   password（可选）\[String\] - 用户的新密码，至少定义此项或组必须。
    *   group（可选）\[String\] - 用户的新组，至少定义此项或密码必须。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.users.manage
*   **示例用法：** `/v2/users/update?user=user&type=type&password=password&group=group&token=token`

### WorldBloodmoon

*   **描述：** 切换血月的状态。
*   **名词：**
    *   bloodmoon（必需）\[Boolean\] - 血月的状态。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.causeevents
*   **示例用法：** `/world/bloodmoon/{bloodmoon}?token=token`

### WorldBloodmoonV3

*   **描述：** 切换血月的状态。
*   **名词：**
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.causeevents
*   **示例用法：** `/v3/world/bloodmoon?token=token`

### WorldButcher

*   **描述：** 屠宰NPC。
*   **名词：**
    *   killfriendly（可选）\[Boolean\] - 是否屠宰友善的NPC。
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.butcher
*   **示例用法：** `/v2/world/butcher?killfriendly=killfriendly&token=token`

### WorldMeteor

*   **描述：** 在世界上掉落一颗陨石。
*   **名词：**
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.causeevents
*   **示例用法：** `/world/meteor?token=token`

### WorldRead

*   **描述：** 获取有关世界的信息。不需要特殊权限。
*   **名词：**
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** 无
*   **示例用法：** `/world/read?token=token`

### WorldSave

*   **描述：** 保存世界。
*   **名词：**
    *   token（必需）\[String\] - REST身份验证令牌。
*   **权限：** tshock.rest.cfg
*   **示例用法：** `/v2/world/save?token=token`