include_guard(GLOBAL)


if (CONFIG_USE_middleware_sdmmc_common)
# Add set(CONFIG_USE_middleware_sdmmc_common true) in config.cmake to use this component

message("middleware_sdmmc_common component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./common/fsl_sdmmc_common.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./common
)


endif()


if (CONFIG_USE_middleware_sdmmc_sdhc_template)
# Add set(CONFIG_USE_middleware_sdmmc_sdhc_template true) in config.cmake to use this component

message("middleware_sdmmc_sdhc_template component is included from ${CMAKE_CURRENT_LIST_FILE}.")

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./template/sdhc/sdmmc_config.c "" middleware_sdmmc_sdhc_template)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/./template/sdhc/sdmmc_config.h ${CMAKE_CURRENT_LIST_DIR}/./template/sdhc middleware_sdmmc_sdhc_template)


endif()


if (CONFIG_USE_middleware_sdmmc_sdif_template)
# Add set(CONFIG_USE_middleware_sdmmc_sdif_template true) in config.cmake to use this component

message("middleware_sdmmc_sdif_template component is included from ${CMAKE_CURRENT_LIST_FILE}.")

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./template/sdif/sdmmc_config.c "" middleware_sdmmc_sdif_template)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/./template/sdif/sdmmc_config.h ${CMAKE_CURRENT_LIST_DIR}/./template/sdif middleware_sdmmc_sdif_template)


endif()


if (CONFIG_USE_middleware_sdmmc_usdhc_template)
# Add set(CONFIG_USE_middleware_sdmmc_usdhc_template true) in config.cmake to use this component

message("middleware_sdmmc_usdhc_template component is included from ${CMAKE_CURRENT_LIST_FILE}.")

add_config_file(${CMAKE_CURRENT_LIST_DIR}/./template/usdhc/sdmmc_config.c "" middleware_sdmmc_usdhc_template)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/./template/usdhc/sdmmc_config.h ${CMAKE_CURRENT_LIST_DIR}/./template/usdhc middleware_sdmmc_usdhc_template)


endif()


if (CONFIG_USE_middleware_sdmmc_osa_bm)
# Add set(CONFIG_USE_middleware_sdmmc_osa_bm true) in config.cmake to use this component

message("middleware_sdmmc_osa_bm component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_DEVICE_ID STREQUAL LPC54005 OR CONFIG_DEVICE_ID STREQUAL LPC54016 OR CONFIG_DEVICE_ID STREQUAL LPC54018 OR CONFIG_DEVICE_ID STREQUAL LPC54018J2M OR CONFIG_DEVICE_ID STREQUAL LPC54018J4M OR CONFIG_DEVICE_ID STREQUAL LPC54605J512 OR CONFIG_DEVICE_ID STREQUAL LPC54605J256 OR CONFIG_DEVICE_ID STREQUAL LPC54606J512 OR CONFIG_DEVICE_ID STREQUAL LPC54606J256 OR CONFIG_DEVICE_ID STREQUAL LPC54607J256 OR CONFIG_DEVICE_ID STREQUAL LPC54607J512 OR CONFIG_DEVICE_ID STREQUAL LPC54608J512 OR CONFIG_DEVICE_ID STREQUAL LPC54616J512 OR CONFIG_DEVICE_ID STREQUAL LPC54616J256 OR CONFIG_DEVICE_ID STREQUAL LPC54618J512 OR CONFIG_DEVICE_ID STREQUAL LPC54628J512 OR CONFIG_DEVICE_ID STREQUAL LPC54S005 OR CONFIG_DEVICE_ID STREQUAL LPC54S016 OR CONFIG_DEVICE_ID STREQUAL LPC54S018 OR CONFIG_DEVICE_ID STREQUAL LPC54S018J2M OR CONFIG_DEVICE_ID STREQUAL LPC54S018J4M OR CONFIG_DEVICE_ID STREQUAL LPC5526 OR CONFIG_DEVICE_ID STREQUAL LPC5528 OR CONFIG_DEVICE_ID STREQUAL LPC55S26 OR CONFIG_DEVICE_ID STREQUAL LPC55S28 OR CONFIG_DEVICE_ID STREQUAL LPC55S66 OR CONFIG_DEVICE_ID STREQUAL LPC55S69 OR CONFIG_DEVICE_ID STREQUAL K32L3A60xxx OR CONFIG_DEVICE_ID STREQUAL MCXN546 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCXN946 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8UD3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD7xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX9301xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9302xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9311xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9312xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9321xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9322xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9331xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9332xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9351xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9352xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMXRT1021xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1024xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1041xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1042xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1051xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1052xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1064xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1064xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1166xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1171xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1172xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT533S OR CONFIG_DEVICE_ID STREQUAL MIMXRT555S OR CONFIG_DEVICE_ID STREQUAL MIMXRT595S OR CONFIG_DEVICE_ID STREQUAL MIMXRT633S OR CONFIG_DEVICE_ID STREQUAL MIMXRT685S) AND CONFIG_USE_component_osa_bm)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./osa/fsl_sdmmc_osa.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./osa
)

else()

message(SEND_ERROR "middleware_sdmmc_osa_bm dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_osa_freertos)
# Add set(CONFIG_USE_middleware_sdmmc_osa_freertos true) in config.cmake to use this component

message("middleware_sdmmc_osa_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_DEVICE_ID STREQUAL LPC54005 OR CONFIG_DEVICE_ID STREQUAL LPC54016 OR CONFIG_DEVICE_ID STREQUAL LPC54018 OR CONFIG_DEVICE_ID STREQUAL LPC54018J2M OR CONFIG_DEVICE_ID STREQUAL LPC54018J4M OR CONFIG_DEVICE_ID STREQUAL LPC54605J512 OR CONFIG_DEVICE_ID STREQUAL LPC54605J256 OR CONFIG_DEVICE_ID STREQUAL LPC54606J512 OR CONFIG_DEVICE_ID STREQUAL LPC54606J256 OR CONFIG_DEVICE_ID STREQUAL LPC54607J256 OR CONFIG_DEVICE_ID STREQUAL LPC54607J512 OR CONFIG_DEVICE_ID STREQUAL LPC54608J512 OR CONFIG_DEVICE_ID STREQUAL LPC54616J512 OR CONFIG_DEVICE_ID STREQUAL LPC54616J256 OR CONFIG_DEVICE_ID STREQUAL LPC54618J512 OR CONFIG_DEVICE_ID STREQUAL LPC54628J512 OR CONFIG_DEVICE_ID STREQUAL LPC54S005 OR CONFIG_DEVICE_ID STREQUAL LPC54S016 OR CONFIG_DEVICE_ID STREQUAL LPC54S018 OR CONFIG_DEVICE_ID STREQUAL LPC54S018J2M OR CONFIG_DEVICE_ID STREQUAL LPC54S018J4M OR CONFIG_DEVICE_ID STREQUAL LPC5526 OR CONFIG_DEVICE_ID STREQUAL LPC5528 OR CONFIG_DEVICE_ID STREQUAL LPC55S26 OR CONFIG_DEVICE_ID STREQUAL LPC55S28 OR CONFIG_DEVICE_ID STREQUAL LPC55S66 OR CONFIG_DEVICE_ID STREQUAL LPC55S69 OR CONFIG_DEVICE_ID STREQUAL K32L3A60xxx OR CONFIG_DEVICE_ID STREQUAL MCXN546 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCXN946 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8UD3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD7xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX9301xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9302xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9311xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9312xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9321xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9322xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9331xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9332xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9351xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9352xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMXRT1021xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1024xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1041xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1042xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1051xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1052xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1064xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1064xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1166xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1171xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1172xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT533S OR CONFIG_DEVICE_ID STREQUAL MIMXRT555S OR CONFIG_DEVICE_ID STREQUAL MIMXRT595S OR CONFIG_DEVICE_ID STREQUAL MIMXRT633S OR CONFIG_DEVICE_ID STREQUAL MIMXRT685S) AND CONFIG_USE_component_osa_free_rtos)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./osa/fsl_sdmmc_osa.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./osa
)

else()

message(SEND_ERROR "middleware_sdmmc_osa_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_osa_azurertos)
# Add set(CONFIG_USE_middleware_sdmmc_osa_azurertos true) in config.cmake to use this component

message("middleware_sdmmc_osa_azurertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_DEVICE_ID STREQUAL LPC54005 OR CONFIG_DEVICE_ID STREQUAL LPC54016 OR CONFIG_DEVICE_ID STREQUAL LPC54018 OR CONFIG_DEVICE_ID STREQUAL LPC54018J2M OR CONFIG_DEVICE_ID STREQUAL LPC54018J4M OR CONFIG_DEVICE_ID STREQUAL LPC54605J512 OR CONFIG_DEVICE_ID STREQUAL LPC54605J256 OR CONFIG_DEVICE_ID STREQUAL LPC54606J512 OR CONFIG_DEVICE_ID STREQUAL LPC54606J256 OR CONFIG_DEVICE_ID STREQUAL LPC54607J256 OR CONFIG_DEVICE_ID STREQUAL LPC54607J512 OR CONFIG_DEVICE_ID STREQUAL LPC54608J512 OR CONFIG_DEVICE_ID STREQUAL LPC54616J512 OR CONFIG_DEVICE_ID STREQUAL LPC54616J256 OR CONFIG_DEVICE_ID STREQUAL LPC54618J512 OR CONFIG_DEVICE_ID STREQUAL LPC54628J512 OR CONFIG_DEVICE_ID STREQUAL LPC54S005 OR CONFIG_DEVICE_ID STREQUAL LPC54S016 OR CONFIG_DEVICE_ID STREQUAL LPC54S018 OR CONFIG_DEVICE_ID STREQUAL LPC54S018J2M OR CONFIG_DEVICE_ID STREQUAL LPC54S018J4M OR CONFIG_DEVICE_ID STREQUAL LPC5526 OR CONFIG_DEVICE_ID STREQUAL LPC5528 OR CONFIG_DEVICE_ID STREQUAL LPC55S26 OR CONFIG_DEVICE_ID STREQUAL LPC55S28 OR CONFIG_DEVICE_ID STREQUAL LPC55S66 OR CONFIG_DEVICE_ID STREQUAL LPC55S69 OR CONFIG_DEVICE_ID STREQUAL K32L3A60xxx OR CONFIG_DEVICE_ID STREQUAL MCXN546 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCXN946 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8UD3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD7xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX9301xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9302xxxxD OR CONFIG_DEVICE_ID STREQUAL MIMX9311xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9312xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9321xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9322xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9331xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9332xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9351xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMX9352xxxxM OR CONFIG_DEVICE_ID STREQUAL MIMXRT1021xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1024xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1041xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1042xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1051xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1052xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1064xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1064xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1166xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1171xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1172xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT533S OR CONFIG_DEVICE_ID STREQUAL MIMXRT555S OR CONFIG_DEVICE_ID STREQUAL MIMXRT595S OR CONFIG_DEVICE_ID STREQUAL MIMXRT633S OR CONFIG_DEVICE_ID STREQUAL MIMXRT685S) AND CONFIG_USE_component_osa_thread)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./osa/fsl_sdmmc_osa.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./osa
)

else()

message(SEND_ERROR "middleware_sdmmc_osa_azurertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_sd)
# Add set(CONFIG_USE_middleware_sdmmc_sd true) in config.cmake to use this component

message("middleware_sdmmc_sd component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_common AND (CONFIG_USE_middleware_sdmmc_host_usdhc OR CONFIG_USE_middleware_sdmmc_host_sdif))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./sd/fsl_sd.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./sd
)

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
    -DSD_ENABLED
  )

endif()

else()

message(SEND_ERROR "middleware_sdmmc_sd dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_mmc)
# Add set(CONFIG_USE_middleware_sdmmc_mmc true) in config.cmake to use this component

message("middleware_sdmmc_mmc component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_common AND (CONFIG_USE_middleware_sdmmc_host_usdhc OR CONFIG_USE_middleware_sdmmc_host_sdif))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./mmc/fsl_mmc.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./mmc
)

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
    -DMMC_ENABLED
  )

endif()

else()

message(SEND_ERROR "middleware_sdmmc_mmc dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_sdio)
# Add set(CONFIG_USE_middleware_sdmmc_sdio true) in config.cmake to use this component

message("middleware_sdmmc_sdio component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_common AND (CONFIG_USE_middleware_sdmmc_host_usdhc OR CONFIG_USE_middleware_sdmmc_host_sdif))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./sdio/fsl_sdio.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./sdio
)

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
    -DSDIO_ENABLED
  )

endif()

else()

message(SEND_ERROR "middleware_sdmmc_sdio dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_sdspi)
# Add set(CONFIG_USE_middleware_sdmmc_sdspi true) in config.cmake to use this component

message("middleware_sdmmc_sdspi component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_DEVICE_ID STREQUAL MK02FN128xxx10 OR CONFIG_DEVICE_ID STREQUAL MK02FN64xxx10 OR CONFIG_DEVICE_ID STREQUAL MK22FN128xxx10 OR CONFIG_DEVICE_ID STREQUAL MK22FN128xxx12 OR CONFIG_DEVICE_ID STREQUAL MK22FN256xxx12 OR CONFIG_DEVICE_ID STREQUAL MK22FN512xxx12 OR CONFIG_DEVICE_ID STREQUAL K32L2B11xxxxA OR CONFIG_DEVICE_ID STREQUAL K32L2B21xxxxA OR CONFIG_DEVICE_ID STREQUAL K32L2B31xxxxA OR CONFIG_DEVICE_ID STREQUAL MCXC041 OR CONFIG_DEVICE_ID STREQUAL MCXC141 OR CONFIG_DEVICE_ID STREQUAL MCXC142 OR CONFIG_DEVICE_ID STREQUAL MCXC143 OR CONFIG_DEVICE_ID STREQUAL MCXC144 OR CONFIG_DEVICE_ID STREQUAL MCXC242 OR CONFIG_DEVICE_ID STREQUAL MCXC243 OR CONFIG_DEVICE_ID STREQUAL MCXC244 OR CONFIG_DEVICE_ID STREQUAL MCXC443 OR CONFIG_DEVICE_ID STREQUAL MCXC444 OR CONFIG_DEVICE_ID STREQUAL MKE02Z16xxx4 OR CONFIG_DEVICE_ID STREQUAL MKE02Z32xxx4 OR CONFIG_DEVICE_ID STREQUAL MKE02Z64xxx4 OR CONFIG_DEVICE_ID STREQUAL MKM14Z64Axxx5 OR CONFIG_DEVICE_ID STREQUAL MKM14Z128Axxx5 OR CONFIG_DEVICE_ID STREQUAL MKM33Z64Axxx5 OR CONFIG_DEVICE_ID STREQUAL MKM33Z128Axxx5 OR CONFIG_DEVICE_ID STREQUAL MKM34Z256xxx7 OR CONFIG_DEVICE_ID STREQUAL MKM34Z128Axxx5 OR CONFIG_DEVICE_ID STREQUAL MKM35Z512xxx7 OR CONFIG_DEVICE_ID STREQUAL MKM35Z256xxx7) AND (CONFIG_USE_driver_dspi OR CONFIG_USE_driver_spi))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./sdspi/fsl_sdspi.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./sdspi
  ${CMAKE_CURRENT_LIST_DIR}/./common
)

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PUBLIC
    -DSDSPI_ENABLED
  )

endif()

else()

message(SEND_ERROR "middleware_sdmmc_sdspi dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_host_sdif)
# Add set(CONFIG_USE_middleware_sdmmc_host_sdif true) in config.cmake to use this component

message("middleware_sdmmc_host_sdif component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_host_sdif_freertos OR CONFIG_USE_middleware_sdmmc_host_sdif_interrupt OR CONFIG_USE_middleware_sdmmc_host_sdif_polling OR CONFIG_USE_middleware_sdmmc_host_sdif_azurertos)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/sdif
)

else()

message(SEND_ERROR "middleware_sdmmc_host_sdif dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_host_sdif_freertos)
# Add set(CONFIG_USE_middleware_sdmmc_host_sdif_freertos true) in config.cmake to use this component

message("middleware_sdmmc_host_sdif_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_common AND CONFIG_USE_middleware_sdmmc_osa_freertos AND CONFIG_USE_middleware_sdmmc_sdif_template AND CONFIG_USE_driver_sdif AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_interrupt) AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_polling) AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_azurertos))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./host/sdif/non_blocking/fsl_sdmmc_host.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/sdif
)

else()

message(SEND_ERROR "middleware_sdmmc_host_sdif_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_host_sdif_interrupt)
# Add set(CONFIG_USE_middleware_sdmmc_host_sdif_interrupt true) in config.cmake to use this component

message("middleware_sdmmc_host_sdif_interrupt component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_common AND CONFIG_USE_middleware_sdmmc_osa_bm AND CONFIG_USE_driver_sdif AND CONFIG_USE_middleware_sdmmc_sdif_template AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_freertos) AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_polling) AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_azurertos))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./host/sdif/non_blocking/fsl_sdmmc_host.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/sdif
)

else()

message(SEND_ERROR "middleware_sdmmc_host_sdif_interrupt dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_host_sdif_polling)
# Add set(CONFIG_USE_middleware_sdmmc_host_sdif_polling true) in config.cmake to use this component

message("middleware_sdmmc_host_sdif_polling component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_common AND CONFIG_USE_middleware_sdmmc_osa_bm AND CONFIG_USE_driver_sdif AND CONFIG_USE_middleware_sdmmc_sdif_template AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_freertos) AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_interrupt) AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_azurertos))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./host/sdif/blocking/fsl_sdmmc_host.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/sdif
)

else()

message(SEND_ERROR "middleware_sdmmc_host_sdif_polling dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_host_sdif_azurertos)
# Add set(CONFIG_USE_middleware_sdmmc_host_sdif_azurertos true) in config.cmake to use this component

message("middleware_sdmmc_host_sdif_azurertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_common AND CONFIG_USE_middleware_sdmmc_osa_azurertos AND CONFIG_USE_middleware_sdmmc_sdif_template AND CONFIG_USE_driver_sdif AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_freertos) AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_interrupt) AND (NOT CONFIG_USE_middleware_sdmmc_host_sdif_polling))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./host/sdif/non_blocking/fsl_sdmmc_host.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/sdif
)

else()

message(SEND_ERROR "middleware_sdmmc_host_sdif_azurertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_host_usdhc)
# Add set(CONFIG_USE_middleware_sdmmc_host_usdhc true) in config.cmake to use this component

message("middleware_sdmmc_host_usdhc component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_host_usdhc_freertos OR CONFIG_USE_middleware_sdmmc_host_usdhc_interrupt OR CONFIG_USE_middleware_sdmmc_host_usdhc_polling OR CONFIG_USE_middleware_sdmmc_host_usdhc_azurertos)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc
)

else()

message(SEND_ERROR "middleware_sdmmc_host_usdhc dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_host_usdhc_freertos)
# Add set(CONFIG_USE_middleware_sdmmc_host_usdhc_freertos true) in config.cmake to use this component

message("middleware_sdmmc_host_usdhc_freertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_common AND CONFIG_USE_middleware_sdmmc_osa_freertos AND CONFIG_USE_middleware_sdmmc_usdhc_template AND CONFIG_USE_middleware_sdmmc_host_usdhc_cache AND CONFIG_USE_driver_usdhc AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_interrupt) AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_polling) AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_azurertos))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc/non_blocking/fsl_sdmmc_host.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc
)

else()

message(SEND_ERROR "middleware_sdmmc_host_usdhc_freertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_host_usdhc_interrupt)
# Add set(CONFIG_USE_middleware_sdmmc_host_usdhc_interrupt true) in config.cmake to use this component

message("middleware_sdmmc_host_usdhc_interrupt component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_common AND CONFIG_USE_middleware_sdmmc_osa_bm AND CONFIG_USE_driver_usdhc AND CONFIG_USE_middleware_sdmmc_usdhc_template AND CONFIG_USE_middleware_sdmmc_host_usdhc_cache AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_freertos) AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_polling) AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_azurertos))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc/non_blocking/fsl_sdmmc_host.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc
)

else()

message(SEND_ERROR "middleware_sdmmc_host_usdhc_interrupt dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_host_usdhc_polling)
# Add set(CONFIG_USE_middleware_sdmmc_host_usdhc_polling true) in config.cmake to use this component

message("middleware_sdmmc_host_usdhc_polling component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_common AND CONFIG_USE_middleware_sdmmc_osa_bm AND CONFIG_USE_driver_usdhc AND CONFIG_USE_middleware_sdmmc_usdhc_template AND CONFIG_USE_middleware_sdmmc_host_usdhc_cache AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_freertos) AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_interrupt) AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_azurertos))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc/blocking/fsl_sdmmc_host.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc
)

else()

message(SEND_ERROR "middleware_sdmmc_host_usdhc_polling dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_host_usdhc_azurertos)
# Add set(CONFIG_USE_middleware_sdmmc_host_usdhc_azurertos true) in config.cmake to use this component

message("middleware_sdmmc_host_usdhc_azurertos component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_common AND CONFIG_USE_middleware_sdmmc_osa_azurertos AND CONFIG_USE_middleware_sdmmc_usdhc_template AND CONFIG_USE_driver_usdhc AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_freertos) AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_interrupt) AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_polling))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc/non_blocking/fsl_sdmmc_host.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc
)

else()

message(SEND_ERROR "middleware_sdmmc_host_usdhc_azurertos dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_sdmmc_host_usdhc_cache)
# Add set(CONFIG_USE_middleware_sdmmc_host_usdhc_cache true) in config.cmake to use this component

message("middleware_sdmmc_host_usdhc_cache component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_USE_driver_cache_armv7_m7 AND (CONFIG_DEVICE_ID STREQUAL MIMXRT1021xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1024xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1041xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1042xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1051xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1052xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1064xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1064xxxxB)) OR (NOT (CONFIG_NOT STREQUAL MIMXRT1021xxxxx OR CONFIG_NOT STREQUAL MIMXRT1024xxxxx OR CONFIG_NOT STREQUAL MIMXRT1041xxxxB OR CONFIG_NOT STREQUAL MIMXRT1042xxxxB OR CONFIG_NOT STREQUAL MIMXRT1051xxxxB OR CONFIG_NOT STREQUAL MIMXRT1052xxxxB OR CONFIG_NOT STREQUAL MIMXRT1061xxxxA OR CONFIG_NOT STREQUAL MIMXRT1061xxxxB OR CONFIG_NOT STREQUAL MIMXRT1062xxxxA OR CONFIG_NOT STREQUAL MIMXRT1062xxxxB OR CONFIG_NOT STREQUAL MIMXRT1064xxxxA OR CONFIG_NOT STREQUAL MIMXRT1064xxxxB)))

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc
)

else()

message(SEND_ERROR "middleware_sdmmc_host_usdhc_cache dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

