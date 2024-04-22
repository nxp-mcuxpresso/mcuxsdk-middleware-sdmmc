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

if((CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx) AND CONFIG_USE_component_osa_bm)

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

if((CONFIG_DEVICE_ID STREQUAL MIMXRT1181xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1182xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1187xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1189xxxxx) AND CONFIG_USE_component_osa_free_rtos)

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


if (CONFIG_USE_middleware_sdmmc_host_usdhc)
# Add set(CONFIG_USE_middleware_sdmmc_host_usdhc true) in config.cmake to use this component

message("middleware_sdmmc_host_usdhc component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_sdmmc_host_usdhc_freertos OR CONFIG_USE_middleware_sdmmc_host_usdhc_interrupt OR CONFIG_USE_middleware_sdmmc_host_usdhc_polling)

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

if(CONFIG_USE_middleware_sdmmc_common AND CONFIG_USE_middleware_sdmmc_osa_freertos AND CONFIG_USE_middleware_sdmmc_usdhc_template AND CONFIG_USE_middleware_sdmmc_host_usdhc_cache AND CONFIG_USE_driver_usdhc AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_interrupt) AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_polling))

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

if(CONFIG_USE_middleware_sdmmc_common AND CONFIG_USE_middleware_sdmmc_osa_bm AND CONFIG_USE_driver_usdhc AND CONFIG_USE_middleware_sdmmc_usdhc_template AND CONFIG_USE_middleware_sdmmc_host_usdhc_cache AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_freertos) AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_polling))

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

if(CONFIG_USE_middleware_sdmmc_common AND CONFIG_USE_middleware_sdmmc_osa_bm AND CONFIG_USE_driver_usdhc AND CONFIG_USE_middleware_sdmmc_usdhc_template AND CONFIG_USE_middleware_sdmmc_host_usdhc_cache AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_freertos) AND (NOT CONFIG_USE_middleware_sdmmc_host_usdhc_interrupt))

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


if (CONFIG_USE_middleware_sdmmc_host_usdhc_cache)
# Add set(CONFIG_USE_middleware_sdmmc_host_usdhc_cache true) in config.cmake to use this component

message("middleware_sdmmc_host_usdhc_cache component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./host/usdhc
)


endif()

