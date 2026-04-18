@echo off
REM 推送Hugo博客到GitHub的批处理脚本

echo.
echo ========================================
echo      冷影的AI实验室 - 一键推送脚本
echo ========================================
echo.

REM 检查Hugo是否安装
where hugo >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [错误] 未检测到Hugo，请先安装Hugo！
    echo 下载地址: https://gohugo.io/installation/
    pause
    exit /b 1
)

REM 停止Hugo服务器（如果运行中）
echo [步骤1/5] 停止Hugo服务器...
taskkill /F /IM hugo.exe >nul 2>nul

REM 清理旧的public目录
echo [步骤2/5] 清理旧的构建文件...
if exist "public" (
    rmdir /S /Q "public"
)

REM 构建网站
echo [步骤3/5] 构建Hugo网站...
hugo
if %ERRORLEVEL% NEQ 0 (
    echo [错误] Hugo构建失败！
    pause
    exit /b 1
)

REM 提交更改
echo [步骤4/5] 提交更改到本地仓库...
git add .
git commit -m "Update: %date% %time%"
if %ERRORLEVEL% NEQ 0 (
    echo [警告] 没有新的更改需要提交
)

REM 推送到GitHub
echo [步骤5/5] 推送到GitHub...
git push origin main
if %ERRORLEVEL% NEQ 0 (
    echo [错误] 推送失败！
    pause
    exit /b 1
)

echo.
echo ========================================
echo      成功！博客已推送到GitHub
echo ========================================
echo.
echo 网站地址: https://colvin0315.github.io/
echo.
pause
