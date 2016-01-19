
 PARAMETER NAME = C:\PROJECT_FOR_RELEASE\KC705_AXIEthernetlite_150Mhz_64Kb_cache\SW\socket_apps_bsp\system.mss

 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = xilkernel
 PARAMETER OS_VER = 6.1
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER config_named_sema = true
 PARAMETER config_pthread_mutex = true
 PARAMETER config_sema = true
 PARAMETER config_time = true
 PARAMETER max_pthread_mutex = 50
 PARAMETER max_pthread_mutex_waitq = 20
 PARAMETER max_pthreads = 20
 PARAMETER max_sem = 50
 PARAMETER max_sem_waitq = 20
 PARAMETER max_tmrs = 50
 PARAMETER pthread_stack_size = 32768
 PARAMETER static_pthread_table = ((main_thread,1))
 PARAMETER stdin = axi_uartlite_0
 PARAMETER stdout = axi_uartlite_0
 PARAMETER sysintc_spec = microblaze_0_axi_intc
 PARAMETER systmr_dev = axi_timer_0
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER DRIVER_VER = 2.2
 PARAMETER HW_INSTANCE = microblaze_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.0
 PARAMETER HW_INSTANCE = axi_bram_ctrl_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = emaclite
 PARAMETER DRIVER_VER = 4.0
 PARAMETER HW_INSTANCE = axi_ethernetlite_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = tmrctr
 PARAMETER DRIVER_VER = 3.0
 PARAMETER HW_INSTANCE = axi_timer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.0
 PARAMETER HW_INSTANCE = axi_uartlite_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 3.2
 PARAMETER HW_INSTANCE = microblaze_0_axi_intc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.0
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_dlmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.0
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_ilmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = mig_7series
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = mig_7series_0
END


BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = lwip141
 PARAMETER LIBRARY_VER = 2.2
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER api_mode = SOCKET_API
 PARAMETER lwip_dhcp = true
 PARAMETER memp_n_pbuf = 1024
 PARAMETER memp_n_tcp_seg = 1024
 PARAMETER pbuf_pool_size = 1024
 PARAMETER tcp_wnd = 8192
END


BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = xilmfs
 PARAMETER LIBRARY_VER = 2.0
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER base_address = 0xBF000000
 PARAMETER init_type = MFSINIT_IMAGE
 PARAMETER need_utils = true
 PARAMETER numbytes = 266000
END


