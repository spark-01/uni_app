#!/bin/bash
# 记录脚本开始执行的时间
start_time=$(date +%s)
#---------------------定义参数----------------#
# 环境：开发、测试、预生产、生产
env_arr=("dev" "uat" "pre" "pro")
# 渠道名称:
channel_name_arr=("官方" "内部" "cfa01" "cfa02" "DAACD")
# 渠道码:
channel_code_arr=("official" "momo6" "T05xcj" "CFA02" "DAACD")

#app_typ
app_type="dm"
echo "类型app_type:$app_type"

#环境，默认uat
env="uat"
echo "======================请选择env====================="
echo "1：dev-开发、2：uat-测试、3：pre-预生产、4：pro-生产"
echo "===================================================="
# 使用 select 命令让用户选择参数
select env in "${env_arr[@]}"; do
  if [[ $env ]]; then
    break
  else
    echo "请重新选择"
  fi
done
echo "环境env:$env"

#渠道码
echo "================================请选择渠道码==============================="
channel_str="0：ALL——所有渠道"
channel_len=${#channel_code_arr[@]}
for ((i = 0; i < "${channel_len}"; i++)); do
  channel_str="${channel_str}\n$((i + 1))：${channel_code_arr[i]}——${channel_name_arr[i]}渠道"
  if (($((i)) == $((channel_len - 1)))); then
    channel_str="${channel_str}"
  fi
done
echo -e "$channel_str"
echo "========================================================================"
read -r -t 3 ch_num
if [ -z "${ch_num}" ]; then
  ch_num=0
fi
while (("${ch_num}" < "0" || $((ch_num)) > $((channel_len)))); do
  echo "输入错误，请输入0到${channel_len} ！！！"
  read -r ch_num
done
if [ "${ch_num}" == "0" ]; then
  echo "渠道码：ALL "
else
  echo "渠道包 ${channel_code_arr[$((ch_num - 1))]}"
fi

#---------------------构建位置----------------#
#当前工程绝对路径
project_path=$(pwd)
#apk文件夹路径
apk_path=${project_path}/apk/$env
#Flutter打包生成的最初地址 build/app/outputs/apk
release_path=${project_path}/build/app/outputs/apk/$env/release/

#echo "apk_path：${apk_path}"
#echo "release_path：${release_path}"
#如果apk文件夹存在，则删除后再创建一个空文件夹
if [ -d "${apk_path}" ]; then
  rm -rf "${apk_path}"
fi
#创建目录
mkdir -p "${apk_path}"

echo "==> 开始清理 ==="
flutter clean
# 删除lock文件
rm -rf pubspec.lock
echo "==>  更新依赖 ==="
flutter pub get

# 开始打包
if (($((ch_num)) == 0)); then
  echo "==> 开始构建：全部渠道包 ==="
  channel=""
  for ((i = 0; i < $((channel_len)); i++)); do
    channel=${channel_code_arr[$i]}
    echo "正在构建：${channel} 渠道包"
    flutter build apk --dart-define=PACKAGE_ENV="${env}" --dart-define=CHANNEL="${channel}" --target-platform android-arm --split-per-abi --release --flavor "${env}"
    # 移动apk到指定文件
    cp -R "${release_path}"*.apk "${apk_path}"
  done
else
  channel=${channel_code_arr[$((ch_num - 1))]}
  echo "==> 正在构建：${channel} 渠道包 ==="
  flutter build apk --dart-define=PACKAGE_ENV="${env}" --dart-define=CHANNEL="${channel}" --target-platform android-arm --split-per-abi --release --flavor "${env}"
  # 移动apk到指定文件
  cp -R "${release_path}"*.apk "${apk_path}"
fi
# 记录脚本结束执行的时间
end_time=$(date +%s)
# 计算脚本的执行时间
var_time=$((end_time - start_time))
# 判断apk目录下是否有文件
if [ "$(ls -A "${apk_path}")" ]; then
  echo "==> APK包已导出:${apk_path} 【耗时：${var_time}s】==="
  open "${apk_path}"
else
  echo "==>  APK包导出失败 【耗时：${var_time}s】 ==="
  exit 1
fi
exit 0
