@ECHO OFF 
TITLE 酷安@Harobe
CLS

:MENU
CLS
ECHO.
ECHO 选择你需要的指令
ECHO 1.ADB指令
ECHO 2.FASTBOOT指令
ECHO 该工具是免费工具, 如果你是在别人里买的, 请退货并且进行举报
ECHO 作者:酷安@Harobe
ECHO.

SET /P CHOICE=请输入指令编号:

IF "%CHOICE%"=="1" (
    CALL :ADB_MENU
) ELSE IF "%CHOICE%"=="2" (
    CALL :FB_MENU
) ELSE (
    ECHO 请输入有效的选项！
    GOTO MENU
)

GOTO :EOF

:ADB_MENU
ECHO.
ECHO 1. 查看连接设备
ECHO 2. 查看Android系统版本
ECHO 3. ADB SHELL
ECHO 4. 获取序列号
ECHO 5. 重启手机
ECHO 6. 重启到FASTBOOT
ECHO 7. 重启到RECOVERY
ECHO 8. 重启到EDL "9008(仅骁龙设备,不一定能用)"
ECHO 9. 列出除了系统应用的第三方应用包名
ECHO 10. 查看日志
ECHO 11. 清除log缓存
ECHO 12. 列出手机装的所有app的包名
ECHO 13. 查看ADB帮助
ECHO.

SET /P ADB_M=请输入指令编号:

IF "%ADB_M%"=="1" (
    adb devices
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE IF "%ADB_M%"=="2" (
    ECHO 你的安卓版本是: & adb shell getprop ro.build.version.release
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE IF "%ADB_M%"=="3" (
    adb shell
) ELSE IF "%ADB_M%"=="4" (
    adb get-serialno
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE IF "%ADB_M%"=="5" (
    adb reboot
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE IF "%ADB_M%"=="6" (
    adb reboot bootloader
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE IF "%ADB_M%"=="7" (
    adb reboot recovery
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE IF "%ADB_M%"=="8" (
    adb reboot edl
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE IF "%ADB_M%"=="9" (
    adb shell pm list packages
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE IF "%ADB_M%"=="10" (
    adb logcat
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE IF "%ADB_M%"=="11" (
    adb logcat -c
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE IF "%ADB_M%"=="12" (
    adb shell pm list packages
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE IF "%ADB_M%"=="13" (
    adb help
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :ADB_MENU
) ELSE (
    ECHO 请输入有效的选项！
    GOTO :MENU
)

GOTO :EOF

:FB_MENU
ECHO.
ECHO 1. 列出已连接的FASTBOOT设备
ECHO 2. 显示设备的OEM信息
ECHO 3. 重启设备
ECHO 4. 重启到RECOVERY
ECHO 5. 解锁设备的Bootloader
ECHO 6. 锁定设备的Bootloader
ECHO 7. 解锁设备的Bootloader(新设备)
ECHO 8. 锁定设备的Bootloader(新设备)
ECHO 9. 获取已分阶段更新的信息
ECHO.

SET /P FB_M=请输入指令编号:

IF "%FB_M%"=="1" (
    fastboot devices
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :FB_MENU
) ELSE IF "%FB_M%"=="2" (
    fastboot oem device-info
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :FB_MENU
) ELSE IF "%FB_M%"=="3" (
    fastboot reboot
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :FB_MENU
) ELSE IF "%FB_M%"=="4" (
    fastboot reboot recovery
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :FB_MENU
) ELSE IF "%FB_M%"=="5" (
    fastboot oem unlock
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :FB_MENU
) ELSE IF "%FB_M%"=="6" (
    fastboot oem lock
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :FB_MENU
)  ELSE IF "%FB_M%"=="7" (
    fastboot flashing unlock
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :FB_MENU
) ELSE IF "%FB_M%"=="8" (
    fastboot flashing lock
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :FB_MENU
) ELSE IF "%FB_M%"=="9" (
    fastboot get_staged
    ECHO 回车将返回目录！
    PAUSE >NUL
    GOTO :FB_MENU
) ELSE (
    ECHO 请输入有效的选项！
    GOTO :FB_MENU
)