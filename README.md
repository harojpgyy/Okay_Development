# okay设置-逆向分析（测试型号s4/s4pro/x510）
设置测栏底部空白-7次点击-弹窗密码
## 反编译得到[DevelopmentUtils.smali](./DevelopmentUtils.smali)并分析代码逻辑
 ```
1.获取sn #L461
2.获取日期 #L486、496、504
3.添加预设后缀010@okay #L546
拼接123并格式md5
生成哈希值并取后六位
 ```
以下为[示例](./okay.sh)
 ```
#!/bin/bash
sn=11145 #sn序列号
today=$(date +%Y%m%d)
okay=010@okay.cn
string="$sn$today$okay"
hash=$(echo -n "$string" | md5sum | cut -d ' ' -f 1 | tail -c 6)
echo "$hash" #输出密码
 ```
