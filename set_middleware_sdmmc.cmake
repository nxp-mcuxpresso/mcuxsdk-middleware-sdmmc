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

if((CONFIG_DEVICE_ID STREQUAL MCXN546 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCXN946 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1171xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1172xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx) AND CONFIG_USE_component_osa_bm)

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

if((CONFIG_DEVICE_ID STREQUAL MCXN546 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCXN946 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1171xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1172xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx) AND CONFIG_USE_component_osa_free_rtos)

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

if((CONFIG_DEVICE_ID STREQUAL MCXN546 OR CONFIG_DEVICE_ID STREQUAL MCXN547 OR CONFIG_DEVICE_ID STREQUAL MCXN946 OR CONFIG_DEVICE_ID STREQUAL MCXN947 OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1171xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1172xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx) AND CONFIG_USE_component_osa_thread)

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

if(CONFIG_USE_middleware_sdmmc_common AND (CONFIG_USE_middleware_sdmmc_host_usdhc))

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

if(CONFIG_USE_middleware_sdmmc_common AND (CONFIG_USE_middleware_sdmmc_host_usdhc))

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

if(CONFIG_USE_middleware_sdmmc_common AND (CONFIG_USE_middleware_sdmmc_host_usdhc))

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

if((CONFIG_DEVICE_ID STREQUAL MCXC041 OR CONFIG_DEVICE_ID STREQUAL MCXC141 OR CONFIG_DEVICE_ID STREQUAL MCXC142 OR CONFIG_DEVICE_ID STREQUAL MCXC143 OR CONFIG_DEVICE_ID STREQUAL MCXC144 OR CONFIG_DEVICE_ID STREQUAL MCXC242 OR CONFIG_DEVICE_ID STREQUAL MCXC243 OR CONFIG_DEVICE_ID STREQUAL MCXC244 OR CONFIG_DEVICE_ID STREQUAL MCXC443 OR CONFIG_DEVICE_ID STREQUAL MCXC444) AND (CONFIG_USE_driver_spi))

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

if((CONFIG_USE_driver_cache_armv7_m7 AND (CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1061xxxxB OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxA OR CONFIG_DEVICE_ID STREQUAL MIMXRT1062xxxxB)) OR (NOT (CONFIG_NOT STREQUAL MIMXRT1061xxxxA OR CONFIG_NOT STREQUAL MIMXRT1061xxxxB OR CONFIG_NOT STREQUAL MIMXRT1062xxxxA OR CONFIG_NOT STREQUAL MIMXRT1062xxxxB)))

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc
)

else()

message(SEND_ERROR "middleware_sdmmc_host_usdhc_cache dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

