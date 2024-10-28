
if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.common)
    mcux_add_source(
        SOURCES common/fsl_sdmmc_spec.h common/fsl_sdmmc_common.h common/fsl_sdmmc_common.c
    )
    mcux_add_include(
        INCLUDES common
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.osa)
    mcux_add_source(
        SOURCES osa/fsl_sdmmc_osa.h osa/fsl_sdmmc_osa.c
    )
    mcux_add_include(
        INCLUDES osa
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.sd)
    mcux_add_source(
        SOURCES sd/fsl_sd.c sd/fsl_sd.h
    )
    mcux_add_include(
        INCLUDES sd
    )
    mcux_add_configuration(
        CC "-DSD_ENABLED=1"
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.mmc)
    mcux_add_source(
        SOURCES mmc/fsl_mmc.c mmc/fsl_mmc.h
    )
    mcux_add_include(
        INCLUDES mmc
    )
    mcux_add_configuration(
        CC "-DMMC_ENABLED=1"
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.sdio)
    mcux_add_source(
        SOURCES sdio/fsl_sdio.c sdio/fsl_sdio.h
    )
    mcux_add_include(
        INCLUDES sdio
    )
    mcux_add_configuration(
        CC "-DSDIO_ENABLED=1"
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.sdspi)
    mcux_add_source(
        SOURCES sdspi/fsl_sdspi.c sdspi/fsl_sdspi.h common/fsl_sdmmc_spec.h
    )
    mcux_add_include(
        INCLUDES sdspi common
    )
    mcux_add_configuration(
        CC "-DSDSPI_ENABLED=1"
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.host.sdhc)
    mcux_add_source(
        SOURCES host/sdhc/fsl_sdmmc_host.h
    )
    mcux_add_include(
        INCLUDES host/sdhc
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.host.sdhc.non_blocking)
    mcux_add_source(
        SOURCES host/sdhc/non_blocking/fsl_sdmmc_host.c host/sdhc/fsl_sdmmc_host.h
    )
    mcux_add_include(
        INCLUDES host/sdhc
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.host.sdhc.blocking)
    mcux_add_source(
        SOURCES host/sdhc/blocking/fsl_sdmmc_host.c host/sdhc/fsl_sdmmc_host.h
    )
    mcux_add_include(
        INCLUDES host/sdhc
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.host.sdif)
    mcux_add_source(
        SOURCES host/sdif/fsl_sdmmc_host.h
    )
    mcux_add_include(
        INCLUDES host/sdif
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.host.sdif.non_blocking)
    mcux_add_source(
        SOURCES host/sdif/fsl_sdmmc_host.h host/sdif/non_blocking/fsl_sdmmc_host.c
    )
    mcux_add_include(
        INCLUDES host/sdif
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.host.sdif.blocking)
    mcux_add_source(
        SOURCES host/sdif/fsl_sdmmc_host.h host/sdif/blocking/fsl_sdmmc_host.c
    )
    mcux_add_include(
        INCLUDES host/sdif
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.host.usdhc)
    mcux_add_source(
        SOURCES host/usdhc/fsl_sdmmc_host.h
    )
    mcux_add_include(
        INCLUDES host/usdhc
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.host.usdhc.non_blocking)
    mcux_add_source(
        SOURCES host/usdhc/non_blocking/fsl_sdmmc_host.c host/usdhc/fsl_sdmmc_host.h
    )
    mcux_add_include(
        INCLUDES host/usdhc
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.host.usdhc.blocking)
    mcux_add_source(
        SOURCES host/usdhc/blocking/fsl_sdmmc_host.c host/usdhc/fsl_sdmmc_host.h
    )
    mcux_add_include(
        INCLUDES host/usdhc
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.sdhc.template)
    mcux_add_source(
        SOURCES template/sdhc/sdmmc_config.c template/sdhc/sdmmc_config.h
        CONFIG TRUE
    )
    mcux_add_include(
        TARGET_FILES sdmmc_config.h
        INCLUDES template/sdhc
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.sdif.template)
    mcux_add_source(
        SOURCES template/sdif/sdmmc_config.c template/sdif/sdmmc_config.h
        CONFIG TRUE
    )
    mcux_add_include(
        TARGET_FILES sdmmc_config.h
        INCLUDES template/sdif
    )
endif()

if (CONFIG_MCUX_COMPONENT_middleware.sdmmc.usdhc.template)
    mcux_add_source(
        SOURCES template/usdhc/sdmmc_config.c template/usdhc/sdmmc_config.h
        CONFIG TRUE
    )
    mcux_add_include(
        TARGET_FILES sdmmc_config.h
        INCLUDES template/usdhc
    )
endif()
