#!/bin/bash

read -p "파일/디렉토리 이름 입력: " filename

if [ -d $filename ]; then
	echo "파일유형: 디렉토리"
elif [ -L $filename ]; then
	echo "파일유형: 심볼릭 링크"
elif [ -c $filename ]; then
	echo "파일유형: 문자장치 파일"
elif [ -b $filename ]; then
	echo "파일유형: 블록장치 파일"
elif [ -p $filename ]; then
	echo "파일유형: 파이프 파일"
elif [ -S $filename ]; then
	echo "파일유형: 소켓 파일"
elif [ -f $filename ]; then
	echo "파일유형: 보통 파일"
else
	echo "존재하지 않는 파일입니다."
fi

