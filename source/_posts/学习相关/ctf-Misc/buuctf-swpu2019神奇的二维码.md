---
title: BUUCTF-[SWPU2019]神奇的二维码
tags:
  - misc
  - 学习
id: '752'
categories:
  - [学习,ctf,misc]
date: 2023-03-02 20:09:26
---

下载附件，是张二维码

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BSWPU2019%5D%E7%A5%9E%E5%A5%87%E7%9A%84%E4%BA%8C%E7%BB%B4%E7%A0%81/BitcoinPay.png)

vivo50?

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BSWPU2019%5D%E7%A5%9E%E5%A5%87%E7%9A%84%E4%BA%8C%E7%BB%B4%E7%A0%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20194716.jpg)

然而这并不是flag，那么就按图片题来做

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BSWPU2019%5D%E7%A5%9E%E5%A5%87%E7%9A%84%E4%BA%8C%E7%BB%B4%E7%A0%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20194914.jpg)

嗯？

丢到binwalk分离一下

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BSWPU2019%5D%E7%A5%9E%E5%A5%87%E7%9A%84%E4%BA%8C%E7%BB%B4%E7%A0%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20195251.jpg)

东西还挺多的，有些是重复的

发生了一件有意思的事，最下面的这个文件需要密码才能打开，密码是encode.txt里的文本base64解码得到的，但是binwalk却直接成功将其从压缩包里分离了，离大谱

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BSWPU2019%5D%E7%A5%9E%E5%A5%87%E7%9A%84%E4%BA%8C%E7%BB%B4%E7%A0%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20195424.jpg)

这是分离得到的图片，里面没有更多信息了

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BSWPU2019%5D%E7%A5%9E%E5%A5%87%E7%9A%84%E4%BA%8C%E7%BB%B4%E7%A0%81/flag.jpg)

接下来看flag.doc

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BSWPU2019%5D%E7%A5%9E%E5%A5%87%E7%9A%84%E4%BA%8C%E7%BB%B4%E7%A0%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20195859.jpg)

```
Vm0wd2QyUXlVWGxWV0d4V1YwZDRWMVl3WkRSV01WbDNXa1JTVjAxV2JETlhhMUpUVmpBeFYySkVUbGhoTVVwVVZtcEJlRll5U2tWVWJHaG9UVlZ3VlZadGNFSmxSbGw1VTJ0V1ZXSkhhRzlVVmxaM1ZsWmFjVkZ0UmxSTmJFcEpWbTEwYTFkSFNrZGpSVGxhVmpOU1IxcFZXbUZrUjA1R1UyMTRVMkpIZHpGV1ZFb3dWakZhV0ZOcmFHaFNlbXhXVm1wT1QwMHhjRlpYYlVaclVqQTFSMWRyV25kV01ERkZVbFJHVjFaRmIzZFdha1poVjBaT2NtRkhhRk5sYlhoWFZtMXdUMVF3TUhoalJscFlZbFZhY1ZadGRHRk5SbFowWlVaT1ZXSlZXVEpWYkZKSFZqRmFSbUl6WkZkaGExcG9WakJhVDJOdFJraGhSazVzWWxob1dGWnRNWGRVTVZGM1RVaG9hbEpzY0ZsWmJGWmhZMnhXY1ZGVVJsTk5XRUpIVmpKNFQxWlhTa2RqUmxwWFlsaFNNMVpxU2t0V1ZrcFpXa1prYUdFeGNGbFhhMVpoVkRKTmVGcElUbWhTTW5oVVdWUk9RMWRzV1hoWGJYUk9VakZHTlZaWE5VOWhiRXAwVld4c1dtSkdXbWhaTW5oWFl6RldjbHBHWkdsU2JrSmFWMnhXWVZReFdsaFRiRnBZVmtWd1YxbHJXa3RUUmxweFUydGFiRlpzV2xwWGExcHJZVWRGZUdOR2JGaGhNVnBvVmtSS1QyTXlUa1phUjJoVFRXNW9WVlpHWTNoaU1rbDRWMWhvWVZKRlNtRldiWGh6VFRGU1ZtRkhPV2hpUlhCNldUQmFjMWR0U2tkWGJXaGFUVzVvV0ZreFdrZFdWa3B6VkdzMVYySkdhM2hXYTFwaFZURlZlRmR1U2s1WFJYQnhWVzB4YjFZeFVsaE9WazVPVFZad2VGVXlkREJXTVZweVkwWndXR0V4Y0ROV2FrWkxWakpPU1dKR1pGZFNWWEJ2Vm10U1MxUXlUWGxVYTFwb1VqTkNWRmxZY0ZkWFZscFlZMFU1YVUxcmJEUldNV2h2V1ZaS1IxTnNaRlZXYkZwNlZHeGFZVmRGTlZaUFZtaFRUVWhDU2xac1pEUmpNV1IwVTJ0a1dHSlhhR0ZVVnpWdlYwWnJlRmRyWkZkV2EzQjZWa2R6TVZZd01WWmlla1pYWWxoQ1MxUldaRVpsUm1SWldrVTFWMVpzY0ZWWFYzUnJWVEZzVjFWc1dsaGlWVnBQVkZaYWQyVkdWWGxrUkVKWFRWWndlVmt3V25kWFIwVjRZMFJPV21FeVVrZGFWM2hIWTIxS1IxcEhiRmhTVlhCS1ZtMTBVMU14VlhoWFdHaFlZbXhhVmxsclpHOWpSbHB4VTIwNWJHSkhVbGxhVldNMVlWVXhjbUpFVWxkTmFsWlVWa2Q0YTFOR1ZuTlhiRlpYVFRGS05sWkhlR0ZXTWxKSVZXdG9hMUl5YUhCVmJHaENaREZhYzFwRVVtcE5WMUl3VlRKMGExZEhTbGhoUjBaVlZucFdkbFl3V25OT2JFcHpXa2R3YVZORlNrbFdNblJyWXpGVmVWTnVTbFJpVlZwWVZGYzFiMWRHYkhGVGExcHNVbTFTV2xkclZURldNVnB6WTBaV1dGWnNTa2hhUkVaYVpVZEtTVk5zYUdoTk1VcFdWbGN4TkdReVZrZFdXR3hyVWpCYWNGVnRlSGRsYkZsNVpVaGtXRkl3VmpSWk1GSlBWMjFGZVZWclpHRldNMmhJV1RJeFMxSXlSa2RoUmxKVFZsaENTMVp0TVRCVk1VMTRWbGhvV0ZkSGFGbFpiWGhoVm14c2NscEhPV3BTYkhCNFZrY3dOVll4V25OalJXaFlWa1UxZGxsV1ZYaGpNVTUxWTBaa1RtRnNXbFZXYTJRMFlURk9SMVp1VGxoaVJscFlWRlJHUzA1c1draGxSMFpYVFd4S1NWWlhkRzloTVVwMFlVWlNWVlpYYUVSVk1uaGhZekZ3UlZWdGNFNVdNVWwzVmxSS01HRXhaRWhUYkdob1VqQmFWbFp0ZUhkTk1XeFdWMjVrVTJKSVFraFdSM2hUVlRKRmVsRnFWbGRTTTJob1ZrUktSMWRHU2xsYVIzQlRWak5vV1ZkWGVHOVJNVkpIVlc1S1dHSkZjSE5WYlRGVFpXeHNWbGRzVG1oU1ZFWjZWVEkxYjFZeFdqWlJhbEpWWVRKU1NGVnFSbUZYVm5CSVlVWk9WMVpHV2xaV2JHTjRUa2RSZVZaclpGZFhSM2h5VldwQ1lXTkdWblJsU0dSc1lrWldOVnBWYUd0WFIwcEhZMFpvV2sxSGFFeFdha1poVW14a2NtVkdaRTVXYmtKSlYxUkplRk14U1hoalJXUmhVbFJXVDFWc2FFTlRNVnAwVFZSQ1ZrMVZNVFJXYkdodlYwWmtTR0ZHYkZwaVdHaG9WbXBHYzJNeGNFaFBWbVJUWWxob1lWZFVRbUZoTWtwSVUydG9WbUpIZUdoV2JHUk9UVlpzVjFaWWFGaFNiRnA1V1ZWYWExUnRSbk5YYkZaWFlUSlJNRlpFUms5VFJrcHlXa1pLYVZKdVFuZFdiWFJYVm0xUmVGZHVVbXBTVjFKWFZGWmFkMDFHVm5Sa1J6bFdVbXh3TUZsVldsTldWbHBZWVVWU1ZXSkdjR2hWTUdSWFUwWktkR05GTlZkTlZXd3pWbXhTUzAxSFJYaGFSV2hVWWtkb2IxVnFRbUZXYkZwMVkwWmthMkpHYkROV01qVlBWREpLUm1OSWNGaGhNbEl6V1ZaYVQxSnNUbkppUm1ST1lteEtlVmRZY0VkV2JWWlhWRzVXVkdKR1NuQldiRnAzVjFaYVIxbDZSbWxOVjFKSVdXdG9SMVpIUlhoalNFNVdZbFJHVkZZeWVHdGpiRnBWVW14a1RsWnVRalpYVkVKaFZqRmtSMWRZY0ZaaWEzQllWbXRXWVdWc1duRlNiR1JxVFZkU2VsbFZaSE5oVmxweVkwUmFWMDFYVVhkWFZtUlNaVlphY2xwR1pHbGlSWEJRVm0xNGExVXhXbk5WYkdoclUwZFNWRlJXV25OT1ZuQldZVWQwV0ZJd2NFaFpNRnB2VjJzeFNGVnVXbGROYWtaSFdsWmFWMk5zY0VoU2JHUk9UVzFvU2xZeFVrcGxSazE0VTFob2FsSlhVbWhWYkZKWFZERldjMkZGVGxSTlZuQXdWRlpTUTFack1WWk5WRkpYWWtkb2RsWXdXbXRUUjBaSFlrWndhVmRIYUc5V2JURTBZekpPYzJORmFGQldNMEpVV1d0b1EwNUdXbkpaTTJSUFZqQldOVlV5ZEd0aGJFcFlZVVpvV21KR1NrTlVWbHBoVjBkTmVtRkdhRk5pUm05NFYxUkNZV0V4VW5SU2JrNVlZWHBHV0ZsWGRFdGpiRlkyVW1zNVUwMVdjREZXVjNoUFlWWkplRk51V2xoV2JFcElXa1JHVDFZeFpISmhSM1JUVFVad2FGWnRNSGhWTVU1WFYyeG9hMUo2Ykc5VVZsWnpUbFpzVm1GRlRsZGlWWEJKV1ZWV1QxbFdTa1pYYldoYVpXdGFNMVZzV2xka1IwNUdUbFprVGxaWGQzcFdiWGhUVXpBeFNGTlliRk5oTWxKVldXMXpNVlpXYkhKYVJ6bFhZa1p3TUZwVmFHdFVhekZYWWtST1YwMXFWa3haYTFwTFpFWldkV0pIUmxOV01VbDZWMVphWVZsWFRuUlVhMXBwVW0xU2NGVnFSa1prTVdSWFZXdDBVMDFXYkRSV1J6VlhWbTFLUmxOc2FGWmlSa3BZVmpGYVlWSXhiRFpTYld4T1ZqRktTVmRYZEc5U01WcElVbGhvYWxORk5WZFpiRkpIVmtaWmVXVkhkR3BpUm5CV1ZXMTRhMVJzV25WUmFscFlWa1ZLYUZacVJtdFNNV1JaWTBaYWFXRXpRbGxXYlhSWFdWZFdjMWR1UmxOaVIxSnhWRlprVTJWc2JGWmFTRTVvVm14d2VWa3dVbUZXTURGWVZWaGtXRlp0VWxOYVZscGhZMnh3UjFwSGJHbFNXRUpSVm0weE5HRXhWWGhYYms1V1lrZG9jbFV3WkZOV1JsSlhWMjVPVDFadVFsZFpWV1F3VjBaSmQyTkZhRnBOUm5CMlZqSnplRk5IUmtabFJtUm9ZVEZ3YjFaWE1UUmhNazUwVm10a1lWSlVWbGhaYlhSTFUyeFplRlZyY0d4U2F6RTBWVEZvYjJGc1NsaFZiV2hXWWtaS1dGWkVSbGRqTWtaR1ZHeFNUbFp1UVhkV1JscFRVVEZhY2sxV1drNVdSa3BZV1d0a2IyUnNXWGRYYlhSVVVqQmFTRmxyV25kaFZtUklZVWM1VjJKVVJUQlpla3BQWXpKT1JtRkdRbGROTUVwVlYxZDBiMUV3TlVkWGJrcGFUVEpTVUZadGVITk9SbGw1VGxaT1YySlZjRWxaVlZwdlZqSkdjazVWT1ZWV2JIQm9WakJrVG1WdFJrZGhSazVwVW01Qk1WWXhXbGRaVjBWNFZXNVNVMkpyTlZsWmExcGhWMFpzVlZOc1NrNVNiVkpZVmpKME1HRnJNVmRUYWtaWFVucEdkbFpVU2t0U01rNUhZa1prVTJKRmNFMVhWM0JIVkRGWmVGcElTbWhTTTJoVVZGVmFkMkZHV25STlNHaFdUVlZzTkZaWE5VOVhSMHBXVjJ4a1ZtSllhRE5VVlZwaFYwZE9ObFpzYUdsU2JrSklWa2Q0VjFVeFdsaFRhMlJxVWpKb1YxUlZaRk5YUmxWM1YydDBhMUl3TlVkVWJGcHJWR3hhV0dRemNGZGlXR2hVVlhwQmVGTkdTbGxoUjBaVFZqSm9WbGRYZEd0aU1rbDRWbTVHVW1KVldsaFphMXAzVFZacmQxZHRkR2hOYTNCSVdXdFNUMVl3TVhGV2JFSlhVa1Z3VEZWdE1VOVRWMDVIWVVkb1RtSkZiRFpXTVZwaFdWWlJlRk51VGxWaWEzQndWVzB4YjFkR2JISlhibVJzVm0xU1dsa3dWbXRXTWtwWFVtcE9WVlpzV25wWlZWcExZMnMxV0U5V2NHaE5iV2hGVm1wR1lXRXhXWGhqUlZaU1lsaFNjRlp0ZEZwTlJscHhVMnBTVjAxV1ZqVlZNblJyWVd4T1JrNVdaRnBpUmtwSVZtdGFVMVl4WkhOWGJYaFhUVVJSZVZaWE1UUmhNVkp6VjI1V1VtRnNjRmxXYTFaTFlVWmFjVkp0ZEZOTlYxSXhWa2Q0VTJGRk1YUmhSemxYVmpOU1dGZFdaRTlqTVZwMVVteFNhRTB4U2xaV2JURTBVekF4UjJKR1dsaGhlbXh3VldwQ2QxZHNiRlpYYTJSWFRXdFdORmt3Wkc5WFJscDBWV3hPWVZac2NHaFpNbmgzVWpGd1NHSkhiRk5YUlVwU1ZtMHdlRTVIUlhoV1dHaFlWMGRvVjFsclpHOWpiRlYzV2taT1dGSnNTbGhYYTFKVFlrWmFjMk5HYkZWV2JGcHlWakJhUzJOdFNrVlViR1JwVjBWS1ZWWnFTbnBsUmtsNFZHNU9VbUpIVW05WlZFNURVMVprVlZOcVVtaE5helV3Vm0xMGExbFdTWGxoUnpsVlZrVktURlpYZUdGak1WWnlWRzFvVGxaWGR6QldWRVp2WXpGVmVWSlliR2hUUlVwWFdXeG9UbVZHYTNkWGJrNVhWbXRhTVZkclZURmhWa3AxVVZoa1YxSnNjRlJWVkVaaFkyc3hWMWRyTlZkU2EzQlpWbTB3ZUdJeVZuTlhiazVZWWxoU1ZWVnFSbUZUUmxsNVpVaGtWMDFWY0ZoWmFrNTNWMFphYzFkdGFGZGhhM0JRVm1wR1UyUldWbk5SYkdScFZtdHdWbFl4WkRCV01sRjRXa2hPV0dFeWFITlZhazVEVlVaYWRHVklUazlTYkd3MVZHeFZOV0ZIU2taalJteGFWbFp3ZWxacVNrWmxSbHBaWVVkR1UwMHlhRFpXYlhCSFdWWmtXRkpyWkdoU2F6VndWVzB3TlU1R1dYaFZhMDVhVmpCV05GWlhOVTlYUm1SSVpVYzVWbUV4V2pOV01GcHpWMGRTUm1SSGNHbFNiR3Q1Vmxjd2VFMUdXWGROVm1ScVVrVmFWMVJYTlc5U1JscHhVMnQwVkZacldqRlhhMXByWVZaa1IxTnNiRmRpVkVJMFZsY3hWMUl4Y0VsV2JFNXBVbGhDZDFadGVHRmtNa1pIVjI1U1RsTkhhRmRVVmxVeFYwWlplV1ZIT1doTlZXOHlXV3RqTlZaV1duTlhibkJWWWtad2VsWnRNVWRTYkZKeldrZHNWMWRGU2t0V01WcFhWakZSZUdKR1pGUmhNWEJaV1d4a2IxbFdjRmhrUjBaT1RWWmFlbFl5ZUd0aE1VbDNUbFZrVldKR2NISldSM2hoVjBkUmVtTkdaR2xYUjJoVlZsaHdRbVZHVGtkVWJHeHBVbXMxYjFSWGVFdFdiR1JZVFZod1RsWnNjRmhaYTJoUFZqSktWbGRzYUZwaE1YQXpWRlZhZDFadFJraGtSbFpvWld0YVdWZFVRbTlqTVZsM1RWaEdVMkV5YUdGV2FrNXZZVVpyZVUxVk9WTldhM0I2V1ZWa2IxUnNaRVpUYkVwWFlsaFNjbFJyV25OWFJsSjFWV3hXYUUxV2NGbFhWM1JyVlRGYVIxVnNWbFJpVkd4d1ZGWmFkMlZXV2xoa1JFSldUVVJHV0ZsclVsTldNVW8yVm14b1YySlVSa3hWYlhoUFl6SkdSMWR0YkZOaE0wSmFWbTF3UjFsWFJYaFhXR2hYWW10d2FGVnFUbE5VTVd4VlVtNWtWRlpzY0hoVk1uQlRWakF4VjFacVZsWmlSMmgyV1ZkNFQxSnJOVmRhUm5CcFVtdHdTVlp0ZEdGa01XUklWbXRzVldKSFVuQlZha1pMVG14YWNsa3phR2xOVmxZMFZqSjBZVmRIUm5OalJtaFhZVEZhZVZwVlduTldWa3B6WTBkNFUySldTbUZYVkVKaFdWZEdWMWRZYkdoU2JXaFpXV3RrVW1ReFpGZFhiazVYVFdzMVNGWXllRzloVmtsNFUyNW9WMUp0VVhkWFZscEtaVVpXV1dGR2FHbFhSa3AyVmxkd1IxbFhWbk5YV0d4cVVqQmFXRlJWVWtkWFZscFhZVWQwV0ZKc2NEQldWM2hQV1ZaYWMyTkhhRnBOYm1nelZXcEdkMU5IU2toaVJrNVlVbFZ3VTFadE1IZGxSVFZJVWxob1YxZEhhRmxXTUdSdlZqRnNjbHBIT1dwaVJsWXpWMnRhVDFkR1NuTlRiR2hYVFdwV2NsWkhlRXRrUjFKRlZHeG9hRTFXY0hsV2FrSmhVMjFSZVZScldtaFNia0pQVlcwMVEwMXNXbkZUYm5Cc1VtczFTRlp0TlZkWFIwcElWV3M1V21KVVJuWlpha1poWTFaR2RGSnNaRTVoZWxZMlYxUkNWMkl4VlhsVGEyaFdZa2RvVmxadGVHRk5NVnBZWlVkR2FrMVlRa3BYYTFwVFZHeGFWVkpVUWxkV1JWcDJXWHBHVm1WV1NsbGlSbHBwVmtkNFdGZFhlRzlpTVZKSFYyNUtXR0pWV25GVVYzUmhVakZhU0dWR1RsVmlSbkF4VlZkd1UxWXhXalpSYWxKV1lXdGFhRmt5YzNoV01XUnlUbFprVTJFelFscFdiVEIzWlVkSmVWWnVUbGhpYXpWWldXeG9VMVpXVm5GUmJVWlVWbTE0VjFZeU1VZFdWMHBHWTBSR1ZsWjZRVEZXYWtwTFZsWktWVkZzY0d4aE0wSlJWMWh3UjJReFRsZFVibEpyVW1zMVQxUlZWbmRXYkZsNFdrUkNXbFl4UmpOVWJGWnJWMGRLU0dGRk9WZGhNVnBNVmtSR1YyUkhWa2xVYXpsVFlrZDNNVlpIZUZaT1YwWklVMnRhYWxKdGVHRldiRnAzWkd4YWNWTnJaR3BoZWxaWVZsZDRhMVV4V25WUmFscFhZbGhvYUZWcVJtdFhSa3B5V2taV2FWSXhTblpXUmxKRFUyc3hjMWR1VW10U00xSlFWVzB4TkZkR1duTmhTRTVYVWpCV05Ga3dXbk5XTURGSVlVVlNWMDFHY0doWmVrWnJaRlp3UjFSck5WZGhNV3QzVm0xd1MwMUdVWGhYYmxKVVlURndWVmxyV25kV2JGcHpWMnRrVGsxV1draFZiRkp6VlZaV1ZVMUVhejA9
```

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BSWPU2019%5D%E7%A5%9E%E5%A5%87%E7%9A%84%E4%BA%8C%E7%BB%B4%E7%A0%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20200212.jpg)

20次base64加密，非常牛逼，是上面good.mp3压缩包的密码，解压出来，直接丢Audacity

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BSWPU2019%5D%E7%A5%9E%E5%A5%87%E7%9A%84%E4%BA%8C%E7%BB%B4%E7%A0%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20200558.jpg)

莫斯码罢，手搓

```
-- --- .-. ... . .. ... ...- . .-. -.-- ...- . .-. -.-- . .- ... -.--
```

```
MORSEISVERYVERYEASY
```

要小写呃呃

```
flag{morseisveryveryeasy}
```