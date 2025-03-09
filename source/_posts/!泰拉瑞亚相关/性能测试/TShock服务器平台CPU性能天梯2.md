---
title: TShock服务器平台CPU性能天梯图2
tags: [泰拉瑞亚,Terraria,TShock]
categories:
  - [泰拉瑞亚,TShock]
date: 2024-10-23 15:41:54
sticky: 97
---

## 前言

测试方式：均为两名玩家，半夜测试，玩家进入后先执行几遍指令，10秒后执行5次指令并且记录。测试内容为随机选择地图上1000000个方块来更新比时间，尽量控制了变量，地图存档，插件等均相同。

## CPU 性能天梯图
| 排名 | CPU 型号                  | 性能分数    | 测试内容                                                                 |
|------|--------------------------|-------------|--------------------------------------------------------------------------|
| 1    | 简幻欢 R9-9900X 9950X   | 1249229.490 | {% asset_img "TShock服务器平台CPU性能天梯/简幻欢 R9-9900X 9950X.jpg" "简幻欢 R9-9900X 9950X" %}<br>S（R9-9900X/9950X）.A.M.L 4核8g 25G（硬盘）170积分 |
| 2    | 简幻欢 R9-7900X 7950X   | 1137226.23  | {% asset_img 简幻欢 R9-7900X 7950X.jpg 简幻欢 R9-7900X 7950X %}<br>S-（R9-7900X/7950X）.A.M.L 4核8g 25G（硬盘）145积分 |
| 3    | 简幻欢 I9-13900K, I7-14700K | 1095073.400 | {% asset_img 简幻欢 I9-13900K, I7-14700K.jpg 简幻欢 I9-13900K %}<br>S（I9-13900K,I7-14700K）.I.M.L 4核8g 25G（硬盘）170积分 |
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TShock服务器平台CPU性能天梯图</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .details {
            display: none;
            text-align: left;
            margin-top: 10px;
        }

        .details img {
            max-width: 150px;
            height: auto;
            margin-right: 20px;
            vertical-align: middle;
        }
    </style>
    <script>
        function toggleDetails(id) {
            const details = document.getElementById(id);
            details.style.display = details.style.display === 'none' ? 'block' : 'none';
        }
    </script>
</head>

<body>
    <header>
        <h1>CPU 性能天梯图</h1>
    </header>
        <h2>前言</h2>
        <p>测试方式：均为两名玩家，半夜测试，玩家进入后先执行几遍指令，10秒后执行5次指令并且记录。测试内容为随机选择地图上1000000个方块来更新比时间，尽量控制了变量，地图存档，插件等均相同。</p>
    <table>
        <thead>
            <tr>
                <th>CPU 型号</th>
                <th>性能分数</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <!-- 1 -->
            <tr>
                <td>简幻欢 R9-9900X 9950X</td>
                <td>1249229.490</td>
                <td><button onclick="toggleDetails('details1')">展开</button></td>
            </tr>
            <tr id="details1" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 R9-9900X 9950X.jpg" alt="简幻欢 R9-9900X 9950X">
                    S（R9-9900X/9950X）.A.M.L 4核8g 25G（硬盘）170积分
                </td>
            </tr>

            <tr>
                <td>简幻欢 R9-7900X 7950X</td>
                <td>1137226.23</td>
                <td><button onclick="toggleDetails('details4')">展开</button></td>
            </tr>
            <tr id="details4" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 R9-7900X 7950X.jpg" alt="简幻欢 R9-7900X 7950X">
                    S-（R9-7900X/7950X）.A.M.L 4核8g 25G（硬盘）145积分
                </td>
            </tr>

            <tr>
                <td>简幻欢 I9-13900K, I7-14700K</td>
                <td>1095073.400</td>
                <td><button onclick="toggleDetails('details2')">展开</button></td>
            </tr>
            <tr id="details2" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 I9-13900K, I7-14700K.jpg" alt="简幻欢 I9-13900K, I7-14700K">
                    S（I9-13900K,I7-14700K）.I.M.L 4核8g 25G（硬盘）170积分
                </td>
            </tr>


            <tr>
                <td>Loguhan的 AMD Ryzen 5 5500</td>
                <td>945001.978</td>
                <td><button onclick="toggleDetails('details20')">展开</button></td>
            </tr>
            <tr id="details20" class="details">
                <td colspan="4">
                    <img src="./index_files/Loguhan的 AMD Ryzen 5 5500.png" alt="Loguhan的 AMD Ryzen 5 5500">
                    Loguhan的 AMD Ryzen 5 5500
                </td>
            </tr>

            <tr>
                <td>简幻欢 I7-12700K,I7-13700K</td>
                <td>939637.550</td>
                <td><button onclick="toggleDetails('details3')">展开</button></td>
            </tr>
            <tr id="details3" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 I7-12700K,I7-13700K.jpg" alt="简幻欢 I7-12700K,I7-13700K">
                    S-（I7-12700K,I7-13700K）.I.M.L 4核8g 25G（硬盘）145积分
                </td>
            </tr>

            <tr>
                <td>简幻欢 R9-5900X, R9-5950X</td>
                <td>829916.660</td>
                <td><button onclick="toggleDetails('details5')">展开</button></td>
            </tr>
            <tr id="details5" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 R9-5900X, R9-5950X.jpg" alt="简幻欢 R9-5900X, R9-5950X">
                    A（R9-5900X/5950X）.A.M.L 4核8g 20G（硬盘）130积分
                </td>
            </tr>
            <!-- 6 -->
            <tr>
                <td>羽学 R7-4800H</td>
                <td>839295.236</td>
                <td><button onclick="toggleDetails('details6')">展开</button></td>
            </tr>
            <tr id="details6" class="details">
                <td colspan="4">
                    <img src="./index_files/羽学 R7-4800H.jpg" alt="羽学 R7-4800H">
                    羽学哥哥的电脑
                </td>
            </tr>
            <!-- 7 -->
            <tr>
                <td>熙恩 R7-5700U</td>
                <td>715876.960</td>
                <td><button onclick="toggleDetails('details7')">展开</button></td>
            </tr>
            <tr id="details7" class="details">
                <td colspan="4">
                    <img src="./index_files/熙恩 R7-5700U.jpg" alt="熙恩 R7-5700U">
                    我自己的电脑
                </td>
            </tr>

            <tr>
                <td>腾讯云 AMD EPYC 7K62 48-Core Processor 2.60 GHz</td>
                <td>585560.768</td>
                <td><button onclick="toggleDetails('details18')">展开</button></td>
            </tr>
            <tr id="details18" class="details">
                <td colspan="4">
                    <img src="./index_files/腾讯云 AMD EPYC 7K62 48-Core Processor 2.60 GHz.jpg" alt="腾讯云 AMD EPYC 7K62 48-Core Processor 2.60 GHz.jpg">
                    腾讯云特惠机器 忘记几百3年了
                </td>
            </tr>

            <tr>
                <td>简幻欢 EPYC 7C13, EPYC 7B13, EPYC 7713</td>
                <td>585560.768</td>
                <td><button onclick="toggleDetails('details8')">展开</button></td>
            </tr>
            <tr id="details8" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 EPYC 7C13, EPYC 7B13, EPYC 7713.jpg" alt="简幻欢 EPYC 7C13, EPYC 7B13, EPYC 7713">
                    B+（EPYC 7C13/7B13/7713）.A.L.L 4核16g 16G（硬盘）85积分
                </td>
            </tr>
            <!-- 9 -->
            <tr>
                <td>雨云 E5-2666v3</td>
                <td>557747.384</td>
                <td><button onclick="toggleDetails('details9')">展开</button></td>
            </tr>
            <tr id="details9" class="details">
                <td colspan="4">
                    <img src="./index_files/雨云 E5-2666v3.jpg" alt="雨云 E5-2666v3">
                    每天签到500积分，简单的一次性积分共8000，2000积分领取7天，免费续期7天2258
                    配置 E5-2666v3 动态计费（他里面有电量），2 vCPU 4 GB 10 GB（磁盘）20 Mbps 100 Mbps（上下）
                    个人测试体验 面板很流畅，有自定义启动脚本，感觉不错，后续测试 大师FTW大世界1天7人左右下来大概在1000电量左右（等于积分500），而且会出现奇怪的问题，测试服主发现 玩家有时候会莫名断连，但是后台未显示玩家被踢出，手动踢出后，大部分玩家也无法再次进入，并且后台没有玩家的链接请求，在简幻欢测试不会出现这种情况，大概率是雨云的问题
                </td>
            </tr>

            <tr>
                <td>Intel(R) Xeon(R) Platinum 8124M CPU @ 3.00GHz</td>
                <td>506865.884</td>
                <td><button onclick="toggleDetails('details17')">展开</button></td>
            </tr>
            <tr id="details17" class="details">
                <td colspan="4">
                    <img src="./index_files/Intel(R) Xeon(R) Platinum 8124M CPU @ 3.00GHz.jpg" alt="Intel(R) Xeon(R) Platinum 8124M CPU @ 3.00GHz">
                    喵云S4
                </td>
            </tr>

            <tr>
                <td>简幻欢 E5-2690v4,铂金8175M,金牌6148</td>
                <td>505349.168</td>
                <td><button onclick="toggleDetails('details15')">展开</button></td>
            </tr>
            <tr id="details15" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 E5-2690v4,铂金8175M,金牌6148.jpg" alt="简幻欢 E5-2690v4,铂金8175M,金牌6148">
                    B-（E5-2690v4,铂金8175M,金牌6148）.I.M+.L 4核12g 16G（硬盘）60积分
                </td>
            </tr>

            <tr>
                <td>简幻欢 E5-2682v4</td>
                <td>454498.988</td>
                <td><button onclick="toggleDetails('details11')">展开</button></td>
            </tr>
            <tr id="details11" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 E5-2682v4.jpg" alt="简幻欢 E5-2682v4">
                    C+（E5-2682v4）.I.M+.L 4核12g 16G（硬盘）50积分
                </td>
            </tr>

            <tr>
                <td>简幻欢 E5-2696v2, E5-2697v2</td>
                <td>393140.364</td>
                <td><button onclick="toggleDetails('details10')">展开</button></td>
            </tr>
            <tr id="details10" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 E5-2696v2, E5-2697v2.jpg" alt="E5-2696v2">
                    C（E5-2696v2或E5-2697v2）.I.L.L 4核16G 16G（硬盘），50积分
                </td>
            </tr>


            <tr>
                <td>wemc 未知配置</td>
                <td>344878.558</td>
                <td><button onclick="toggleDetails('details16')">展开</button></td>
            </tr>
            <tr id="details16" class="details">
                <td colspan="4">
                    <img src="./index_files/wemc 未知配置.jpg" alt="wemc 未知配置">
                    个人使用体验：各种奇怪的小问题，而且他们的启动脚本太怪了，还不好自定义启动脚本（你不好碰到他们的脚本）
                </td>
            </tr>

            <tr>
                <td>简幻欢 铂金8151</td>
                <td>288840.012</td>
                <td><button onclick="toggleDetails('details12')">展开</button></td>
            </tr>
            <tr id="details12" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 铂金8151.jpg" alt="简幻欢 铂金8151">
                    B++（铂金8151）.I.L.L4核16g 20G（硬盘）95积分
                </td>
            </tr>

            <tr>
                <td>简幻欢 金牌6140</td>
                <td>199229.238</td>
                <td><button onclick="toggleDetails('details13')">展开</button></td>
            </tr>
            <tr id="details13" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 金牌6140.jpg" alt="简幻欢 金牌6140">
                    C++（金牌6140）.I.M.L 4核8G 16G（硬盘），50积分
                </td>
            </tr>

            <tr>
                <td>简幻欢 铂金8124 8124M</td>
                <td>197233.306</td>
                <td><button onclick="toggleDetails('details14')">展开</button></td>
            </tr>
            <tr id="details14" class="details">
                <td colspan="4">
                    <img src="./index_files/简幻欢 铂金8124 8124M.jpg" alt="简幻欢 铂金8124 8124M">
                    B（铂金8124/8124M）.I.M.L 4核8g 16G（硬盘）70积分
                </td>
            </tr>
        </tbody>
    </table>
</body>

</html>
