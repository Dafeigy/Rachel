#!/bin/bash
CLANG_FORMAT=clang-format

# 查找当前目录及其子目录下的所有.cpp文件
TARGET_FILES=$(find . -type f \( -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" \))


echo "start formatting.."

# 遍历所有找到的.cpp文件
for file in $TARGET_FILES; do
    if [ -f "$file" ]; then
        echo "fxxxxtting $file"
        $CLANG_FORMAT -i -style=file "$file"
    fi
done

echo "done"
