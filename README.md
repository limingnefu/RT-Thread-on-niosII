# RT-Thread on nios II

## 软件定位/基本功能
本项目根据RT-Thread移植教程的指导，基于DE2-115开发板，在NiosII处理器上进行RT-Thread操作系统的移植，并实现基本的线程创建和定时器操作。

## 前置条件/运行环境
1. 集成开发环境
   1. Quartus15.0
   1. Nios II 15.0 Software Build Tools for Eclipse
2. RT-Thread
   [3.1.5](https://github.com/RT-Thread/rt-thread/releases)
   
3. 硬件环境
   DE2-115开发板
   - sdram:64MBx2
   - sram:2MB
   - flash:8MB
   - epcs:epcs64(64Mb)

## 使用说明

1. 克隆或下载本项目

2. 编译烧录FPGA固件
   1. 使用Quartus编译quartus工程
   2. 使用Quartus II Programmer通过USB-Blaster烧录FPGA固件

3. 编译Nios固件
   1. 使用Nios Software Build Tools for Eclipse 生成bsp
   2. 使用Nios Software Build Tools for Eclipse编译demo工程

4. 烧录Nios固件
   ​由于DE2-115使用了第三方SPI flash芯片作为EPCS配置芯片，因此需要使用override模式进行Nios固件的烧录  
   1. 将USB-Blaster以JTAG模式连接到开发板
   2. 找到quartus安装目录下的Nios2eds文件夹并运行Nios II Command Shell
   3. 切换到工程目录下的script文件夹并运行flash_programmer

## 代码目录结构/软件基本原理
<details>
   <summary>目录结构</summary>  
   <pre><code>
      DE2-115
      ├─.qsys_edit
      ├─.vscode
      ├─flash                    nios2ide 生成的flash文件
      ├─ip                       IP核
      ├─output_files             Quartus编译输出
      ├─Qsys_vhd                 Qsys文件
      ├─script                   nios2ide 生成的脚本文件
      ├─simulation               仿真文件夹
      ├─software                 nios2软件
      │  ├─rt-thread_demo        用户软件
      │  │  ├─.settings
      │  │  ├─.vscode
      │  │  ├─obj
      │  │  └─rt-thread          rt-thread相关文件
      │  │      ├─bsp            板卡相关文件
      │  │      │  ├─include
      │  │      │  │      board.h
      │  │      │  │      led.h
      │  │      │  │      rtconfig.h
      │  │      │  │      uart.h
      │  │      │  └─src
      │  │      │      application.c
      │  │      │      board.c
      │  │      │      startup.c
      │  │      │      uart.c
      │  │      ├─include
      │  │      │      rtdebug.h
      │  │      │      rtdef.h
      │  │      │      rthw.h
      │  │      │      rtm.h
      │  │      │      rtservice.h
      │  │      │      rtthread.h
      │  │      ├─libcpu            RT-Thread内核
      │  │      │  └─nios
      │  │      │      └─nios_ii
      │  │      │          context_gcc.S
      │  │      │          interrupt.c
      │  │      │          stack.c
      │  │      │          vector.S
      │  │      └─src
      │  │          clock.c
      │  │          device.c
      │  │          idle.c
      │  │          ipc.c
      │  │          irq.c
      │  │          kservice.c
      │  │          mem.c
      │  │          mempool.c
      │  │          object.c
      │  │          scheduler.c
      │  │          SConscript
      │  │          slab.c
      │  │          thread.c
      │  │          timer.c
      │  └─rt-thread_demo_bsp       nios2生成的的bsp文件
      │      ├─.settings
      │      ├─.vscode
      │      ├─drivers
      │      ├─HAL
      │      └─obj
      └─hdl
   </code></pre>
</details>

1. 构建基本的Qsys系统，至少需要包含以下组件(参考本项目中Qsys)
   - Nios II processor
      默认参数,可选配MMU
   - Interval Timer
      命名为"timer",周期设置1ms,64位计数器,作为硬件定时器,产生Systick
   - RAM(On-Chip Memory/sdram/sram等)
      本项目调用altera_avalon_new_sdram_controller sdram接口IP  
      选用外扩sdram,设置大小为64*16MB.其他选项选择足够大小即可.
   - FLASH(epcs/Serial Flash/Paraller Flash等)/ROM(On-Chip Memory)
      本项目使用EPCS作为程序存储器,并调用altera_generic_tristate_controller和  
      altera_tristate_conduit_bridge来使用扩展的8MB 并行FLASH 来作为后续文件系统基础.
   - UART (RS-232 Serial Port)
      命名为"uart",作为RT-Thread的console设备
   - PIO(Parallel I/O)
      命名为"led",位宽为17,对应板载17个红色led,作为运行指示灯
   - JTAG UART
      作为
   - System ID Peripheral
      Qsys系统ID
2. 构建基本的Nios项目
   FILE->NEW->Nios II Application and BSP from Template  
   选择Quartus工程根目录下的sopcinfo文件,模板为默认的Hello World即可.  
   对项目进行编译,不应出现错误或警告.
3. 根据移植指南"[基本内核工程 for Nios II](https://oss-club.rt-thread.org/uploads/414_2240f3f77da1b42b5da127d2515c17cb.pdf)"为工程添加 RT-Thread 的内核源文件
   1. 添加内核文件:
      ```
      rt-thread            目录文件列表
      ├─include            RT-Thread 头文件目录
      │  rtdef.h
      │  rthw.h
      │  rtm.h
      │  rtthread.h
      |  rtdbg.h
      |  rtservice.h
      ├─libcpu             存放与 CPU 内核有关的文件的目录
      │  └─nios
      │     └─nios_ii
      │        context_gcc.S      线程切换
      │        interrupt.c        保存中断切换中上下文的栈地址
      │        stack.c            栈初始化
      │        vector.S           中断处理(暂只接管中断退出部分)
      └─src                RT-Thread 内核源文件目录
         clock.c
         device.c
         idle.c
         ipc.c
         irq.c
         kservice.c
         mem.c
         mempool.c
         module.c
         module.h
         object.c
         rtm.c
         scheduler.c
         SConscript
         slab.c
         thread.c
         timer.c
      注：rt-thread/src/中module.c、module.h并未找到,不用添加
      ```
   2. 添加 BSP 及用户应用程序源文件
      ```
      rt-thread
      └─bsp
        └─nios_ii
            application.c
            board.c
            startup.c
            uart.c
            board.h
            rtconfig.h
            Uart.h
      注：rt-thread/bsp/nios_ii中sopc.h并未找到,不用添加
      ```
   3. 添加头文件搜索路径
      菜单栏：Projects->Properites->Nios II Application Properites->Nios II Application Paths.  
      在Application include directories下添加搜索路径
         1. rt-thread/bsp/nios_ii
         2. rt-thread/include
   4. 注释rt-thread/bsp/nios_ii/rtconfig.h第81行的#define RT_USING_FINSH
   5. 编译并下载,自此已完成RT-Thread在Nios_ii的的基本移植
## 常见问题说明
   1. 定时器周期不可太小，否则将无法下载Nios固件
   2. 内核移植过程与"[基本内核工程 for Nios II](https://oss-club.rt-thread.org/uploads/414_2240f3f77da1b42b5da127d2515c17cb.pdf)"有出入，以本文档为准
   3. 若使用EPCS或者其他的并行flahs则不需要在命令行进行Nios固件烧录，直接在GUI界面进行烧录即可
## 说明信息
1. 更新历史
   
2. 作者/联系说明
   [Email me](zyb_china@outlook.com)