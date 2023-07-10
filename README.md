# uni_app 打包主应用

## 应用说明

- uni_app_bball：B球直播
- uni_app_cfox：彩狐视频
- uni_app_dm：动漫

## 运行参数说明
### 多渠道参数
```
通过Build flavor 设置，应值为环境参数：dev、uat、pre、pro
```
### 环境：PACKAGE_ENV
```
开发：dev
测试：uat
预生产：pre
生产：pro
```
### 渠道码：CHANNEL
```
T05xcj
momo6
```
### 是否debug：PACKAGE_DEBUG
```
true
false
```
说明：此参数主要用于本地pro环境调试，其他环境默认控制台会打印参数
### 运行参数使用
```
--dart-define=参数=参数值
比如：应用类型参数设置
--dart-define=APP_TYPE=cfox
```
## 打包说明
### 1、修改版本号：
```
位置：android/config/config.gradle/env下
修改：Code和Name，我们的版本号还是三位为主，比如pro环境：vCode：1 vName："1.0.0"
```
### 2、采用脚本打包
```
1、先进入跟目录
2、第一次使用授予权限， chmod 755 build_apk.sh 
3、执行脚本 ./build_apk.sh
注意：根据提示选择
```
### 2、彩狐视频打包指令

#### uat打包指令

- 打包所有
```
 flutter build apk --dart-define=PACKAGE_ENV=uat --release --flavor uat
 指定渠道码
 flutter build apk --dart-define=PACKAGE_ENV=uat --dart-define=CHANNEL=momo6 --release --flavor uat
```
- 打包armeabi-v7a
```
 flutter build apk --dart-define=PACKAGE_ENV=uat --target-platform android-arm --split-per-abi --release --flavor uat
 指定渠道码
 flutter build apk --dart-define=PACKAGE_ENV=uat --dart-define=CHANNEL=momo6 --target-platform android-arm --split-per-abi --release --flavor uat
```

#### pro打包指令
- 打包所有
```
 flutter build apk --dart-define=PACKAGE_ENV=pro --release --flavor pro
 指定渠道码
 flutter build apk --dart-define=PACKAGE_ENV=pro --dart-define=CHANNEL=momo6 --release --flavor pro
```
- 打包armeabi-v7a
```
 flutter build apk --dart-define=PACKAGE_ENV=pro --target-platform android-arm --split-per-abi --release --flavor pro
 指定渠道码，以momo6为例子
 flutter build apk --dart-define=PACKAGE_ENV=pro --dart-define=CHANNEL=momo6 --target-platform android-arm --split-per-abi --release --flavor pro
```
- 打包arm64
```
 flutter build apk --dart-define=PACKAGE_ENV=pro --target-platform android-arm64 --split-per-abi --release --flavor pro
 指定渠道码，以momo6为例子
 flutter build apk --dart-define=PACKAGE_ENV=pro --dart-define=CHANNEL=momo6 --target-platform android-arm64 --split-per-abi --release --flavor pro
```
