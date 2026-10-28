#!/bin/bash
# 파일 경로: labs/linux-permission/permission_demo.sh

set -e

WORK_DIR="$(cd "$(dirname "$0")" && pwd)/sandbox"
mkdir -p "$WORK_DIR"
cd "$WORK_DIR"

echo "1) 빈 파일 만들기"
touch report.txt
ls -l report.txt

echo ""
echo "2) 숫자 모드 644 적용 (소유자 rw-, 그룹 r--, 기타 r--)"
chmod 644 report.txt
ls -l report.txt

echo ""
echo "3) 기호 모드로 그룹에 쓰기 권한 추가 (g+w)"
chmod g+w report.txt
ls -l report.txt

echo ""
echo "4) 실행 파일 만들기 (소유자에게 실행 권한 u+x 부여)"
touch run.sh
chmod u+x run.sh
ls -l run.sh
