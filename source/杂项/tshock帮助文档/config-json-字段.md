---
title: config.json 字段
tags: []
id: '1011'
categories:
  - - uncategorized
date: 2023-11-10 13:35:37
---

AllowAllowedGroupsToSpawnBannedItems

*   允许在禁止物品允许列表中的组生成禁止物品，即使"PreventBannedItemSpawn"设置为true也是如此
*   字段类型：Boolean
*   默认值：False

AllowCorruptionCreep

*   允许在世界处于困难模式时腐化蔓延
*   字段类型：Boolean
*   默认值：True

AllowCrimsonCreep

*   允许在世界处于困难模式时猩红蔓延
*   字段类型：Boolean
*   默认值：True

AllowCutTilesAndBreakables

*   允许玩家在通常无法建造的地方破坏临时物块（草皮、盆栽等）
*   字段类型：Boolean
*   默认值：False

AllowHallowCreep

*   允许在世界处于困难模式时神圣蔓延
*   字段类型：Boolean
*   默认值：True

AllowIce

*   允许在通常无法建造的地方放置冰
*   字段类型：Boolean
*   默认值：False

AllowLoginAnyUsername

*   允许用户登录任何账户，即使用户名与他们的角色名不匹配
*   字段类型：Boolean
*   默认值：True

AllowRegisterAnyUsername

*   允许用户注册不一定与他们角色名匹配的用户名
*   字段类型：Boolean
*   默认值：False

AnnounceSave

*   启用或禁用世界保存公告
*   字段类型：Boolean
*   默认值：True

AnonymousBossInvasions

*   是否宣布Boss生成或入侵开始
*   字段类型：Boolean
*   默认值：True

ApplicationRestTokens

*   外部应用程序可能使用REST令牌对服务器进行查询的字典
*   字段类型：Dictionary2
*   默认值：System.Collections.Generic.Dictionary2\[System.String,Rests.SecureRest+TokenData\]

AutoSave

*   启用或禁用Terraria内置的世界自动保存
*   字段类型：Boolean
*   默认值：True

BackupInterval

*   备份间隔，以分钟计。备份存储在tshock/backups文件夹中
*   字段类型：Int32
*   默认值：10

BackupKeepFor

*   备份保留多长时间，以分钟计。例如：2880 = 2天
*   字段类型：Int32
*   默认值：240

BanOnHardcoreDeath

*   是否在困难模式玩家死亡时封禁他们
*   字段类型：Boolean
*   默认值：False

BanOnMediumcoreDeath

*   是否在中等难度玩家死亡时封禁他们
*   字段类型：Boolean
*   默认值：False

BCryptWorkFactor

*   确定要使用的BCrypt工作因子。如果增加，所有密码在验证时将升级为新的工作因子。计算轮数是2^n。谨慎增加。范围：5-31
*   字段类型：Int32
*   默认值：7

BombExplosionRadius

*   确定炸弹可以从爆炸点影响物块的范围
*   字段类型：Int32
*   默认值：5

BroadcastRGB

*   用于广播消息颜色的RGB值。#.#.# = 红/绿/蓝 最大值：255
*   字段类型：Int32\[\]
*   默认值：System.Int32\[\]

ChatAboveHeadsFormat

*   使用头顶聊天时更改玩家名称。以Terraria的格式开始，用方括号包裹玩家名称。与ChatFormat格式相同，但不包括消息
*   字段类型：String
*   默认值：{2}

ChatFormat

*   更改游戏内聊天格式：{0} = 组名，{1} = 组前缀，{2} = 玩家名，{3} = 组后缀，{4} = 聊天消息
*   字段类型：String
*   默认值：{1}{2}{3}: {4}

CommandSilentSpecifier

*   指定以哪个字符串开始静默命令。注意：如果字符串长度大于1，则可能无法正常工作
*   字段类型：String
*   默认值：.

CommandSpecifier

*   指定以哪个字符串开始命令。注意：如果字符串长度大于1，则可能无法正常工作
*   字段类型：String
*   默认值：/

DebugLogs

*   服务器是否应该输出与系统操作相关的调试级别消息
*   字段类型：Boolean
*   默认值：False

DefaultGuestGroupName

*   未注册玩家默认的组名
*   字段类型：String
*   默认值：guest

DefaultMaximumSpawns

*   每波将生成的怪物默认最大数量。数值越高，波次中的怪物就越多（最大刷怪量）
*   字段类型：Int32
*   默认值：5

DefaultRegistrationGroupName

*   新注册用户默认的组名
*   字段类型：String
*   默认值：default

DefaultSpawnRate

*   波次之间的延迟。值越低，怪物越多（刷怪速率）
*   字段类型：Int32
*   默认值：600

DisableBuild

*   禁用任何放置或移除物块
*   字段类型：Boolean
*   默认值：False

DisableClownBombs

*   禁用小丑炸弹投射物生成
*   字段类型：Boolean
*   默认值：False

DisableCustomDeathMessages

*   允许你禁用或启用防止创建自定义死亡消息的保护。为那些想出更具创意解决方案的开发人员创建
*   字段类型：Boolean
*   默认值：True

DisableDefaultIPBan

*   如果没有参数传递给ban命令，则禁用默认的IP禁令
*   字段类型：Boolean
*   默认值：False

DisableDungeonGuardian

*   防止地牢守护者生成，而是将玩家发送到他们的出生点
*   字段类型：Boolean
*   默认值：False

DisableHardmode

*   如果启用，困难模式将不会被Wall of Flesh或/starthardmode命令激活
*   字段类型：Boolean
*   默认值：False

DisableInvisPvP

*   通过使玩家在其他客户端可见，禁用在启用PvP时隐形药水的效果
*   字段类型：Boolean
*   默认值：False

DisableLoginBeforeJoin

*   防止用户在完成连接之前登录
*   字段类型：Boolean
*   默认值：False

DisableModifiedZenith

*   禁止使用与武器不同的对象使用Zenith投射物（第一分型）
*   字段类型：Boolean
*   默认值：False

DisablePrimeBombs

*   禁用Skeletron Prime炸弹（大部分炸弹）生成，有助于防止在有价值的种子世界上不需要的世界破坏
*   字段类型：Boolean
*   默认值：False

DisableSecondUpdateLogs

*   防止OnSecondUpdate检查写入日志文件
*   字段类型：Boolean
*   默认值：False

DisableSnowBalls

*   禁用雪球投射物生成
*   字段类型：Boolean
*   默认值：False

DisableSpewLogs

*   禁用向具有日志权限的玩家发送日志作为消息
*   字段类型：Boolean
*   默认值：True

DisableTombstones

*   禁用所有玩家死亡时掉落墓碑
*   字段类型：Boolean
*   默认值：True

DisableUUIDLogin

*   防止用户使用他们的客户端UUID登录
*   字段类型：Boolean
*   默认值：False

DisplayIPToAdmins

*   向具有日志权限的用户显示玩家的IP地址
*   字段类型：Boolean
*   默认值：False

EnableChatAboveHeads

*   是否在玩家头顶显示聊天消息
*   字段类型：Boolean
*   默认值：False

EnableGeoIP

*   是否根据玩家的IP在加入时宣布玩家的地理位置
*   字段类型：Boolean
*   默认值：False

EnableTokenEndpointAuthentication

*   是否需要令牌认证才能使用公共REST API端点
*   字段类型：Boolean
*   默认值：False

EnableWhitelist

*   根据whitelist.txt文件中的IP地址启用或禁用白名单
*   字段类型：Boolean
*   默认值：False

ForceHalloween

*   强制全年发生仅限万圣节的活动
*   字段类型：Boolean
*   默认值：False

ForceTime

*   强制世界时间为正常、白天或夜晚
*   字段类型：String
*   默认值：normal

ForceXmas

*   强制全年发生仅限圣诞节的活动
*   字段类型：Boolean
*   默认值：False

GiveItemsDirectly

*   如果设置为true，将直接将给予玩家的物品插入到他们的库存中。需要SSC。否则，给予玩家的物品将作为掉落物品生成。实验性功能。可能无法正确工作或导致物品丢失
*   字段类型：Boolean
*   默认值：False

HardcoreBanReason

*   在困难模式玩家死亡时封禁时给出的理由
*   字段类型：String
*   默认值：Death results in a ban

HardcoreKickReason

*   在困难模式玩家死亡时踢出时给出的理由
*   字段类型：String
*   默认值：Death results in a kick

HardcoreOnly

*   防止非困难模式玩家连接
*   字段类型：Boolean
*   默认值：False

HealOtherThreshold

*   如果在1秒内发送了此数量的HealOtherPlayer数据包，则禁用玩家
*   字段类型：Int32
*   默认值：50

IgnoreChestStacksOnLoad

*   允许在世界加载期间，箱子中的物品堆叠超出堆叠限制
*   字段类型：Boolean
*   默认值：False

IgnoreProjKill

*   忽略检查玩家是否“可以”杀死投射物
*   字段类型：Boolean
*   默认值：False

IgnoreProjUpdate

*   忽略检查玩家是否“可以”更新投射物
*   字段类型：Boolean
*   默认值：False

InfiniteInvasion

*   启用永无止境的入侵事件。你仍然需要启动事件，例如使用/invade命令
*   字段类型：Boolean
*   默认值：False

InvasionMultiplier

*   确定入侵事件的大小。计算入侵大小的公式是100 + (multiplier \* (active players with greater than 200 health的数量))
*   字段类型：Int32
*   默认值：1

KickEmptyUUID

*   踢出没有向服务器发送其UUID的客户端
*   字段类型：Boolean
*   默认值：False

KickOnDamageThresholdBroken

*   当用户超过MaxDamage（最大伤害）阈值时，是否踢出用户
*   字段类型：Boolean
*   默认值：False

KickOnHardcoreDeath

*   是否在困难模式玩家死亡时踢出他们
*   字段类型：Boolean
*   默认值：False

KickOnHealOtherThresholdBroken

*   当用户超过HealOther（治疗其他）阈值时，是否踢出用户
*   字段类型：Boolean
*   默认值：False

KickOnMediumcoreDeath

*   是否在中等难度玩家死亡时踢出他们
*   字段类型：Boolean
*   默认值：False

KickOnProjectileThresholdBroken

*   当用户超过弹幕阈值时，是否踢出用户
*   字段类型：Boolean
*   默认值：False

KickOnTileKillThresholdBroken

*   当用户超过方块破坏阈值时，是否踢出用户
*   字段类型：Boolean
*   默认值：False

KickOnTileLiquidThresholdBroken

*   当用户超过液体阈值时，是否踢出用户
*   字段类型：Boolean
*   默认值：False

KickOnTilePaintThresholdBroken

*   当用户超过刷漆阈值时，是否踢出用户
*   字段类型：Boolean
*   默认值：False

KickOnTilePlaceThresholdBroken

*   当用户超过方块放置阈值时，是否踢出用户
*   字段类型：Boolean
*   默认值：False

KickProxyUsers

*   如果启用了GeoIP，这将踢出被识别为使用代理的用户
*   字段类型：Boolean
*   默认值：True

LogPath

*   日志应写入的目录路径
*   字段类型：String
*   默认值：tshock/logs

LogRest

*   是否记录REST API连接
*   字段类型：Boolean
*   默认值：False

MaxDamage

*   玩家/NPC可以造成的最大伤害
*   字段类型：Int32
*   默认值：1175

MaxHP

*   玩家在装备增益之前可以拥有的最大HP
*   字段类型：Int32
*   默认值：500

MaximumLoginAttempts

*   踢出玩家之前的失败登录尝试次数
*   字段类型：Int32
*   默认值：3

MaxMP

*   玩家在装备增益之前可以拥有的最大MP
*   字段类型：Int32
*   默认值：200

MaxProjDamage

*   弹幕可以造成的最大伤害
*   字段类型：Int32
*   默认值：1175

MaxRangeForDisabled

*   禁用玩家可以移动的最大距离，以物块为单位
*   字段类型：Int32
*   默认值：10

MaxSlots

*   一次连接的最大客户端数量。如果您希望人们因“服务器已满”而被踢出，请将此设置为最大玩家数量，然后将Terraria最大玩家数设置为高2个
*   字段类型：Int32
*   默认值：8

MediumcoreBanReason

*   如果在死亡时禁止中等难度玩家，给出的理由
*   字段类型：String
*   默认值：Death results in a ban

MediumcoreKickReason

*   如果在死亡时踢出中等难度玩家，给出的理由
*   字段类型：String
*   默认值：Death results in a kick

MediumcoreOnly

*   仅中核玩家
*   字段类型：Boolean
*   默认值：False

MinimumPasswordLength

*   新用户帐户的最小密码长度。不能低于4
*   字段类型：Int32
*   默认值：4

MySqlDbName

*   使用MySQL作为数据库类型时连接的数据库名称
*   字段类型：String
*   默认值：\`\`

MySqlHost

*   用于将连接定向到MySQL主机名和端口
*   字段类型：String
*   默认值：localhost:3306

MySqlPassword

*   连接到MySQL数据库时使用的密码
*   字段类型：String
*   默认值：\`\`

MySqlUsername

*   连接到MySQL数据库时使用的用户名
*   字段类型：String
*   默认值：\`\`

PreventBannedItemSpawn

*   防止禁止物品被生成或通过命令给予
*   字段类型：Boolean
*   默认值：False

PreventDeadModification

*   防止玩家在死亡时与世界互动
*   字段类型：Boolean
*   默认值：True

PreventInvalidPlaceStyle

*   防止玩家放置具有无效风格的物块
*   字段类型：Boolean
*   默认值：True

ProjectileThreshold

*   如果在1秒内创建了此数量的弹幕，则禁用玩家
*   字段类型：Int32
*   默认值：50

ProjIgnoreShrapnel

*   是否忽略水晶子弹的弹片对于弹幕阈值计数
*   字段类型：Boolean
*   默认值：True

PvPMode

*   设置PvP模式。有效类型为："normal", "always" 和 "disabled"
*   字段类型：String
*   默认值：normal

RangeChecks

*   启用或禁用基于玩家与其放置物块之间的距离的反作弊范围检查
*   字段类型：Boolean
*   默认值：True

RegionProtectChests

*   区域保护是否应用于箱子
*   字段类型：Boolean
*   默认值：False

RegionProtectGemLocks

*   区域保护是否应用于宝石锁
*   字段类型：Boolean
*   默认值：True

RememberLeavePos

*   记住玩家离开的位置，基于他们的IP。不会在服务器重新启动后保留。例如。当您尝试断开连接，并重新连接以自动放置在出生点时，您将在最后的位置
*   字段类型：Boolean
*   默认值：False

RequireLogin

*   要求所有玩家在被允许玩游戏之前注册或登录
*   字段类型：Boolean
*   默认值：False

ReservedSlots

*   预留玩家空位的数量超过您的最大服务器玩家空位，可以由预留玩家加入
*   字段类型：Int32
*   默认值：20

RespawnBossSeconds

*   如果附近有Boss，玩家必须等待的秒数才能复活。有效范围：0（默认）到30秒。自担风险使用
*   字段类型：Int32
*   默认值：0

RespawnSeconds

*   玩家必须等待的秒数才能复活。有效范围：0（默认）到15秒。自担风险使用
*   字段类型：Int32
*   默认值：0

RestApiEnabled

*   启用或禁用REST API
*   字段类型：Boolean
*   默认值：False

RestApiPort

*   REST API使用的端口
*   字段类型：Int32
*   默认值：7878

RESTMaximumRequestsPerInterval

*   在拒绝请求之前，桶中的最大REST请求。最小值是5
*   字段类型：Int32
*   默认值：5

RESTRequestBucketDecreaseIntervalMinutes

*   REST请求桶每分钟减少一次的频率。最小值是1分钟
*   字段类型：Int32
*   默认值：1

RevertToTextLogsOnSqlFailures

*   在回退到文本日志之前，SQL日志必须失败多少次插入日志
*   字段类型：Int32
*   默认值：10

SaveWorldOnCrash

*   如果服务器因未处理的异常而崩溃，是否保存世界
*   字段类型：Boolean
*   默认值：True

SaveWorldOnLastPlayerExit

*   当最后一个玩家断开连接时，是否保存世界
*   字段类型：Boolean
*   默认值：True

ServerFullNoReservedReason

*   当服务器已满且没有预留玩家空位可用时，踢出尝试加入的玩家的理由
*   字段类型：String
*   默认值：Server is full. No reserved slots open.

ServerFullReason

*   当服务器已满时，踢出尝试加入的玩家的理由
*   字段类型：String
*   默认值：Server is full

ServerName

*   如果UseServerName为true，则在会话期间替换世界名称
*   字段类型：String
*   默认值：\`\`

ServerPassword

*   加入服务器所需的服务器密码
*   字段类型：String
*   默认值：\`\`

ServerPort

*   服务器运行的端口
*   字段类型：Int32
*   默认值：7777

ShowBackupAutosaveMessages

*   是否显示备份自动保存消息
*   字段类型：Boolean
*   默认值：True

SoftcoreOnly

*   仅软核
*   字段类型：Boolean
*   默认值：False

SpawnProtection

*   防止在重生保护范围的默认出生点内放置物块
*   字段类型：Boolean
*   默认值：True

SpawnProtectionRadius

*   受重生保护范围设置保护的出生点周围的物块半径
*   字段类型：Int32
*   默认值：10

SqliteDBPath

*   sqlite数据库的路径
*   字段类型：String
*   默认值：tshock.sqlite

StatueSpawn200

*   一个雕像在200像素(?)内可以生成的NPC数量，之后才会停止生成。默认 = 3
*   字段类型：Int32
*   默认值：3

StatueSpawn600

*   一个雕像在600像素(?)内可以生成的NPC数量，之后才会停止生成。默认 = 6
*   字段类型：Int32
*   默认值：6

StatueSpawnWorld

*   一个雕像可以生成的NPC总数，之后才会停止生成。默认 = 10
*   字段类型：Int32
*   默认值：10

StorageType

*   存储数据时使用的数据库类型（"sqlite" 或 "mysql"）
*   字段类型：String
*   默认值：sqlite

SuperAdminChatPrefix

*   超级管理员聊天前缀
*   字段类型：String
*   默认值：(Super Admin)

SuperAdminChatRGB

*   超级管理员组的聊天颜色。#.#.# = 红/绿/蓝 最大值：255
*   字段类型：Int32\[\]
*   默认值：System.Int32\[\]

SuperAdminChatSuffix

*   超级管理员聊天后缀
*   字段类型：String
*   默认值：\`\`

SuppressPermissionFailureNotices

*   服务器是否应该抑制来自区域、出生点或服务器编辑失败的构建权限失败警告
*   字段类型：Boolean
*   默认值：False

TileKillThreshold

*   如果1秒内超过此数量的物块被杀死，则禁用玩家并撤销他们的动作
*   字段类型：Int32
*   默认值：60

TileLiquidThreshold

*   如果1秒内超过此数量的液体设置，则禁用玩家
*   字段类型：Int32
*   默认值：50

TilePaintThreshold

*   如果1秒内超过此数量的物块被刷漆，则禁用玩家
*   字段类型：Int32
*   默认值：15

TilePlaceThreshold

*   如果1秒内超过此数量的物块放置，则禁用玩家并撤销他们的动作
*   字段类型：Int32
*   默认值：32

UseServerName

*   是否使用ServerName代替世界名称
*   字段类型：Boolean
*   默认值：False

UseSqlLogs

*   是否将日志保存到SQL数据库而不是文本文件。默认 = false
*   字段类型：Boolean
*   默认值：False

WhitelistKickReason

*   未在白名单上时踢出玩家的理由
*   字段类型：String
*   默认值：You are not on the whitelist.  
    \`\`\`