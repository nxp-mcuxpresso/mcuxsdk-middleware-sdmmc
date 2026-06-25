/*
 * Copyright 2026 NXP
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#ifndef _SDMMC_CONFIG_H_
#define _SDMMC_CONFIG_H_

#include "fsl_common.h"

#ifdef SDIO_SPI_ENABLED
#include "fsl_sdio.h"
#endif
#include "clock_config.h"
#include "fsl_sdmmc_host.h"
#include "fsl_sdmmc_common.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/
#define BOARD_SDMMC_SDIO_HOST_IRQ      GPIO00_IRQn

#if defined(__cplusplus)
extern "C" {
#endif /* __cplusplus */

/*******************************************************************************
 * API
 ******************************************************************************/

/*!
 * @brief BOARD SDIO configurations.
 * @param card card descriptor
 * @param cd card detect callback
 * @param cardInt card interrupt
 */
#ifdef SDIO_SPI_ENABLED
void BOARD_SDIO_Config(void *card, sd_cd_t cd, uint32_t hostIRQPriority, sdio_int_t cardInt);
#endif

#if defined(__cplusplus)
}
#endif /* __cplusplus */

#endif /* _BOARD_H_ */
