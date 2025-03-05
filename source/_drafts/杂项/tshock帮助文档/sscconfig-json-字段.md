---
title: sscconfig.json 字段
tags: []
id: '1012'
categories:
  - - uncategorized
date: 2023-11-10 13:35:44
hide: true
---

### Enabled

*   启用服务器端角色，导致客户端数据保存在服务器上而不是客户端。
*   字段类型：`Boolean`
*   默认值：`False`

### LogonDiscardThreshold

*   在启用 ServerSideCharacters 时，登录后多少毫秒内不允许丢弃物品。
*   字段类型：`Int32`
*   默认值：`250`

### ServerSideCharacterSave

*   ServerSideCharacters 启用时，SSC 应该保存的时间间隔，以分钟为单位。
*   字段类型：`Int32`
*   默认值：`5`

### StartingHealth

*   启用 SSC 时，新玩家的默认起始生命值。
*   字段类型：`Int32`
*   默认值：`100`

### StartingInventory

*   启用 SSC 时，新玩家的默认起始背包物品。
*   字段类型：`List1`
*   默认值：`System.Collections.Generic.List<TShockAPI.NetItem>`

### StartingMana

*   启用 SSC 时，新玩家的默认起始法力值。
*   字段类型：`Int32`
*   默认值：`20`

### WarnPlayersAboutBypassPermission

*   如果玩家具有 tshock.ignore.ssc 权限并在 SSC 表中有数据，则向玩家和控制台发出警告。
*   字段类型：`Boolean`
*   默认值：`True`