/*
 * Copyright 2026 NXP
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include "sdmmc_config.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/

/*******************************************************************************
 * Prototypes
 ******************************************************************************/
#if defined(SDIO_SPI_ENABLED)
static status_t BOARD_SdioSpiInit(void);
static void BOARD_SdioSpiDeinit(void);
static status_t BOARD_SdioSpiTransfer(sdmmchost_spi_transfer_t *xfer);

static status_t BOARD_SdioCardInterruptEnable(bool enable);
static status_t BOARD_SdioCardInterruptInit(void *cardInterrupt);
#endif

/*******************************************************************************
 * Variables
 ******************************************************************************/
#if defined(SDIO_SPI_ENABLED)
static sdio_card_int_t s_sdioInt = {0};

static sdmmchost_t s_host = {
    .spiInit = BOARD_SdioSpiInit,
    .spiDeinit = BOARD_SdioSpiDeinit,
    .spiTransfer = BOARD_SdioSpiTransfer
};
#endif

/*******************************************************************************
 * Code
 ******************************************************************************/
#if defined(SDIO_SPI_ENABLED)
static status_t BOARD_SdioSpiInit(void)
{
    return kStatus_Success;
}

static void BOARD_SdioSpiDeinit(void)
{
}

static status_t BOARD_SdioSpiTransfer(sdmmchost_spi_transfer_t *xfer)
{
   /*
    * Some capabilities must be supported. Refer to SPI transfer flags
    * definitions in fsl_sdmmc_host.h. For example,
    *
    * - SD_SPI_FLAG_CS_ACTIVE_HIGH
    * - SD_SPI_FLAG_CS_HOLD
    * - SD_SPI_FLAG_CS_RELEASE
    */
    return kStatus_Success;
}

static status_t BOARD_SdioCardInterruptEnable(bool enable)
{
    return kStatus_Success;
}

static status_t BOARD_SdioCardInterruptInit(void *cardInterrupt)
{
    return kStatus_Success;
}

void BOARD_SDIO_Config(void *card, sd_cd_t cd, uint32_t hostIRQPriority, sdio_int_t cardInt)
{
    assert(card);

    ((sdio_card_t *)card)->host = &s_host;
    ((sdio_card_t *)card)->usrParam.isSpi = true;

    if (cardInt != NULL)
    {
        s_sdioInt.cardInterrupt                 = cardInt;
        ((sdio_card_t *)card)->usrParam.sdioInt = &s_sdioInt;

        ((sdio_card_t *)card)->host->interruptEnable = BOARD_SdioCardInterruptEnable;
        ((sdio_card_t *)card)->host->interruptInit = BOARD_SdioCardInterruptInit;
    }

    NVIC_SetPriority(BOARD_SDMMC_SDIO_HOST_IRQ, hostIRQPriority);
}
#endif
