# okay设置-逆向分析
设置测栏底部空白-7次点击-弹窗密码
## 反编译得到DevelopmentUtils.smali并分析代码逻辑
 ```
1.获取sn（461行）
2.获取日期（486、496、504行）
3.添加预设后缀010@okay（546行）
拼接123并格式md5
生成哈希值并取后六位
 ```
以下为示例
 ```
#!/bin/bash
sn=11145 #sn序列号
today=$(date +%Y%m%d)
okay=010@okay.cn
string="$sn$today$okay"
hash=$(echo -n "$string" | md5sum | cut -d ' ' -f 1 | tail -c 6)
echo "$hash" #输出密码
 ```
