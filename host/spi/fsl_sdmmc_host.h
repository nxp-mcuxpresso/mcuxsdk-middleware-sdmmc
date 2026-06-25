/*
 * Copyright 2026 NXP
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#ifndef _FSL_SDMMC_HOST_H
#define _FSL_SDMMC_HOST_H

#include "fsl_common.h"
#include "fsl_sdmmc_osa.h"

/*!
 * @addtogroup sdmmchost_usdhc
 * @ingroup sdmmchost
 * @{
 */

/*******************************************************************************
 * Definitions
 ******************************************************************************/
/*! @brief Middleware adapter version. */
#define FSL_SDMMC_HOST_ADAPTER_VERSION FSL_SDMMC_DRIVER_VERSION

/*!@brief sdmmc host misc capability */
#define SDMMCHOST_SUPPORT_SUSPEND_RESUME       (0U)
#define SDMMCHOST_SUPPORT_VOLTAGE_CONTROL      (0U)
#define SDMMCHOST_SUPPORT_VOLTAGE_3V3          (1U)
#define SDMMCHOST_SUPPORT_VOLTAGE_3V0          (0U)
#define SDMMCHOST_SUPPORT_VOLTAGE_1V8          (0U)
#define SDMMCHOST_SUPPORT_VOLTAGE_1V2          (0U)
#define SDMMCHOST_SUPPORT_4_BIT_WIDTH          (0U)
#define SDMMCHOST_SUPPORT_8_BIT_WIDTH          (0U)
#define SDMMCHOST_SUPPORT_DETECT_CARD_BY_DATA3 (0U)
#define SDMMCHOST_SUPPORT_DETECT_CARD_BY_CD    (0U)
#define SDMMCHOST_SUPPORT_HIGH_SPEED           (0U)
#define SDMMCHOST_SUPPORT_SDR50                (0U)
#define SDMMCHOST_SUPPORT_SDR104               (0U)
#define SDMMCHOST_SUPPORT_HS200                (0U)
#define SDMMCHOST_SUPPORT_HS400                (0U)
#define SDMMCHOST_SUPPORT_DDR_MODE             (0U)
#define SDMMCHOST_SUPPORT_DDR50                (0U)
#define SDMMCHOST_SUPPORT_AUTO_CMD12           (0U)
#define SDMMCHOST_SUPPORT_MAX_BLOCK_LENGTH     (512U)
#define SDMMCHOST_SUPPORT_MAX_BLOCK_COUNT      (65535U)

#define SDMMCHOST_INSTANCE_SUPPORT_8_BIT_WIDTH(host) 0
#define SDMMCHOST_INSTANCE_SUPPORT_1V8_SIGNAL(host)  0
#define SDMMCHOST_INSTANCE_SUPPORT_SDR50(host)       0
#define SDMMCHOST_INSTANCE_SUPPORT_SDR104(host)      0
#define SDMMCHOST_INSTANCE_SUPPORT_HS200(host)       0
#define SDMMCHOST_INSTANCE_SUPPORT_HS400(host)       0
#define SDMMCHOST_INSTANCE_SUPPORT_DDR50(host)       0

#define SDMMCHOST_DMA_DESCRIPTOR_BUFFER_ALIGN_SIZE (1U)

/* SPI command size */
#define SD_SPI_COMMAND_SIZE 6U

/* SPI command bits */
#define SD_SPI_COMMAND_BITS_START 0x80U
#define SD_SPI_COMMAND_BITS_TX    0x40U
#define SD_SPI_COMMAND_BITS_INDEX 0x3FU

/* SPI start/stop block token */
#define SD_SPI_TOKEN_BLOCK_START             0xFEU
#define SD_SPI_TOKEN_BLOCK_START_MULTI_WRITE 0xFCU
#define SD_SPI_TOKEN_BLOCK_STOP_TRAN         0xFDU

/* SPI data response token */
#define SD_SPI_TOKEN_RESPONSE_ACCEPTED  0x05U
#define SD_SPI_TOKEN_RESPONSE_CRC_ERR   0x0BU
#define SD_SPI_TOKEN_RESPONSE_WRITE_ERR 0x0DU
#define SD_SPI_TOKEN_RESPONSE_MASK      0x1FU

/* SPI retries definition */
#define SD_SPI_RESPONSE_RETRIES   30U
#define SD_SPI_DATA_TOKEN_RETRIES 30U
#define SD_SPI_BUSY_RETRIES       30U

/* SPI transfer flags */
#define SD_SPI_FLAG_CS_ACTIVE_HIGH (1U << 0U)
#define SD_SPI_FLAG_CS_HOLD        (1U << 1U)
#define SD_SPI_FLAG_CS_RELEASE     (1U << 2U)

/* SPI command response R1 bits */
enum
{
    SD_SPI_R1PARAMETER_ERR   = 1U << 6U,
    SD_SPI_R1ADDRESS_ERR     = 1U << 5U,
    SD_SPI_R1ERASE_SEQ_ERR   = 1U << 4U,
    SD_SPI_R1CMD_CRC_ERR     = 1U << 3U,
    SD_SPI_R1ILLEGAL_CMD_ERR = 1U << 2U,
    SD_SPI_R1ERASE_RESET     = 1U << 1U,
    SD_SPI_R1IDLE_STATE      = 0U,
};

/*! @brief sdmmc host capability */
enum
{
    kSDMMCHOST_SupportHighSpeed         = 1U << 0U,  /*!< high speed capability */
    kSDMMCHOST_SupportSuspendResume     = 1U << 1U,  /*!< suspend resume capability */
    kSDMMCHOST_SupportVoltage3v3        = 1U << 2U,  /*!< 3V3 capability */
    kSDMMCHOST_SupportVoltage3v0        = 1U << 3U,  /*!< 3V0 capability */
    kSDMMCHOST_SupportVoltage1v8        = 1U << 4U,  /*!< 1V8 capability */
    kSDMMCHOST_SupportVoltage1v2        = 1U << 5U,  /*!< 1V2 capability */
    kSDMMCHOST_Support4BitDataWidth     = 1U << 6U,  /*!< 4 bit data width capability */
    kSDMMCHOST_Support8BitDataWidth     = 1U << 7U,  /*!< 8 bit data width capability */
    kSDMMCHOST_SupportDDRMode           = 1U << 8U,  /*!< DDR mode capability */
    kSDMMCHOST_SupportDetectCardByData3 = 1U << 9U,  /*!< data3 detect card capability */
    kSDMMCHOST_SupportDetectCardByCD    = 1U << 10U, /*!< CD detect card capability */
    kSDMMCHOST_SupportAutoCmd12         = 1U << 11U, /*!< auto command 12 capability */
    kSDMMCHOST_SupportSDR104            = 1U << 12U, /*!< SDR104 capability */
    kSDMMCHOST_SupportSDR50             = 1U << 13U, /*!< SDR50 capability */
    kSDMMCHOST_SupportHS200             = 1U << 14U, /*!< HS200 capability */
    kSDMMCHOST_SupportHS400             = 1U << 15U, /*!< HS400 capability */
};

typedef enum _sdmmchost_card_command_type
{
    kCARD_CommandTypeNormal  = 0U, /*!< Normal command */
    kCARD_CommandTypeSuspend = 1U, /*!< Suspend command */
    kCARD_CommandTypeResume  = 2U, /*!< Resume command */
    kCARD_CommandTypeAbort   = 3U, /*!< Abort command */
    kCARD_CommandTypeEmpty   = 4U, /*!< Empty command */
} sdmmchost_card_command_type_t;

typedef enum _sdmmchost_card_response_type
{
    kCARD_ResponseTypeNone = 0U, /*!< Response type: none */
    kCARD_ResponseTypeR1   = 1U, /*!< Response type: R1 */
    kCARD_ResponseTypeR1b  = 2U, /*!< Response type: R1b */
    kCARD_ResponseTypeR2   = 3U, /*!< Response type: R2 */
    kCARD_ResponseTypeR3   = 4U, /*!< Response type: R3 */
    kCARD_ResponseTypeR4   = 5U, /*!< Response type: R4 */
    kCARD_ResponseTypeR5   = 6U, /*!< Response type: R5 */
    kCARD_ResponseTypeR5b  = 7U, /*!< Response type: R5b */
    kCARD_ResponseTypeR6   = 8U, /*!< Response type: R6 */
    kCARD_ResponseTypeR7   = 9U, /*!< Response type: R7 */
} sdmmchost_card_response_type_t;

typedef struct _sdmmchost_cmd
{
    uint32_t index;                              /*!< Command index. */
    uint32_t argument;                           /*!< Command argument. */
    sdmmchost_card_command_type_t type;          /*!< Command type. */
    sdmmchost_card_response_type_t responseType; /*!< Command response type. */
    uint32_t response[4U];                       /*!< Response for this command. */
    uint32_t responseErrorFlags;                 /*!< Response error flag, which need to check
                                                     the command reponse. */
    uint32_t flags;                              /*!< Cmd flags. */
} sdmmchost_cmd_t;

typedef struct _sdmmchost_data
{
    bool enableAutoCommand12; /*!< Enable auto CMD12. */
    bool enableAutoCommand23; /*!< Enable auto CMD23. */
    bool enableIgnoreError;   /*!< Enable to ignore error event to read/write all the data. */
    uint8_t dataType;         /*!< this is used to distinguish the normal/tuning/boot data. */
    size_t blockSize;         /*!< Block size. */
    uint32_t blockCount;      /*!< Block count. */
    uint32_t *rxData;         /*!< Buffer to save data read. */
    const uint32_t *txData;   /*!< Data buffer to write. */
} sdmmchost_data_t;

/*!@brief sdmmc host transfer function */
typedef struct _sdmmchost_transfer
{
    sdmmchost_data_t *data;   /*!< Data to transfer. */
    sdmmchost_cmd_t *command; /*!< Command to send. */
} sdmmchost_transfer_t;

typedef struct _sdmmchost_spi_transfer
{
    uint8_t *txData; /*!< Send buffer */
    uint8_t *rxData; /*!< Receive buffer */
    size_t dataSize; /*!< Transfer bytes */
    uint32_t flags;  /*!< spi control flag.*/
} sdmmchost_spi_transfer_t;

typedef void (*spi_deinit_t)(void);
typedef status_t (*spi_init_t)(void);
typedef status_t (*spi_transfer_t)(sdmmchost_spi_transfer_t *xfer);

typedef status_t (*int_init_t)(void *cardInterrupt);
typedef status_t (*int_enable_t)(bool enable);

/*!@brief sdmmc host handler  */
typedef struct _sdmmchost_
{
    void *dmaDesBuffer;            /*!< DMA descriptor buffer address */
    uint32_t dmaDesBufferWordsNum; /*!< DMA descriptor buffer size in byte */
    uint32_t capability;           /*!< host controller capability */
    uint32_t maxBlockCount;        /*!< host controller maximum block count */
    uint32_t maxBlockSize;         /*!< host controller maximum block size */

    uint8_t tuningType;            /*!< host tuning type */

    sdmmc_osa_event_t hostEvent;   /*!< host event handler */
    void *cd;                      /*!< card detect */
    void *cardInt;                 /*!< call back function for card interrupt */

    sdmmc_osa_mutex_t lock;        /*!< host access lock */

    spi_init_t spiInit;            /*!< SPI host init callback */
    spi_deinit_t spiDeinit;        /*!< SPI host deinit callback */
    spi_transfer_t spiTransfer;    /*!< SPI transfer callback */

    int_init_t interruptInit;
    int_enable_t interruptEnable;
} sdmmchost_t;

/*******************************************************************************
 * API
 ******************************************************************************/
#if defined(__cplusplus)
extern "C" {
#endif

/*!
 * @name USDHC host controller function
 * @{
 */

/*!
 * @brief card detect init function. SPI host does not support. Only GPIO CD can be used.
 * @param host host handler
 * @param cd card detect configuration
 */
static inline status_t SDMMCHOST_CardDetectInit(sdmmchost_t *host, void *cd)
{
    assert(false);
    return kStatus_Fail;
}

/*!
 * @brief Detect card insert, only need for SD cases. SPI host does not support. Only GPIO CD can be used.
 * @param host host handler
 * @param waitCardStatus status which user want to wait
 * @param timeout wait time out.
 * @retval kStatus_Success detect card insert
 * @retval kStatus_Fail card insert event fail
 */
static inline status_t SDMMCHOST_PollingCardDetectStatus(sdmmchost_t *host, uint32_t waitCardStatus, uint32_t timeout)
{
    assert(false);
    return kStatus_Fail;
}

/*!
 * @brief card detect status. SPI host does not support. Only GPIO CD can be used.
 * @param host host handler
 * @retval kSD_Inserted, kSD_Removed
 */
static inline uint32_t SDMMCHOST_CardDetectStatus(sdmmchost_t *host)
{
    assert(false);
    return 0U;
}

/*!
 * @brief host power off card function. SPI host does not support.
 * @param host host handler
 * @param enable true is power on, false is power down.
 */
static inline void SDMMCHOST_SetCardPower(sdmmchost_t *host, bool enable)
{
}

/*!
 * @brief Get signal line status. SPI host does not support.
 * @param host host handler
 * @param signalLine signal line type, reference _sdmmc_signal_line
 */
static inline uint32_t SDMMCHOST_GetSignalLineStatus(sdmmchost_t *host, uint32_t signalLine)
{
    assert(false);
    return 0U;
}

/*!
 * @brief host reset function. SPI host does not support.
 *
 * @param host host handler
 */
static inline void SDMMCHOST_Reset(sdmmchost_t *host)
{
}

/*!
 * @brief sdmmc host excute tuning. SPI host does not support.
 *
 * @param host host handler
 * @param tuningCmd tuning command.
 * @param revBuf receive buffer pointer
 * @param blockSize tuning data block size.
 */
static inline status_t SDMMCHOST_ExecuteTuning(sdmmchost_t *host,
                                               uint32_t tuningCmd,
                                               uint32_t *revBuf,
                                               uint32_t blockSize)
{
    assert(false);
    return kStatus_Fail;
}

/*!
 * @brief set data bus width. SPI host does not support.
 * @param host host handler
 * @param dataBusWidth data bus width
 */
static inline void SDMMCHOST_SetCardBusWidth(sdmmchost_t *host, uint32_t dataBusWidth)
{
}

/*!
 * @brief enable DDR mode. SPI host does not support.
 * @param host host handler
 * @param enable true is enable, false is disable.
 * @param nibblePos nibble position indictation. 0- the sequence is 'odd high nibble -> even high nibble ->
 * odd low nibble -> even low nibble'; 1- the sequence is 'odd high nibble -> odd low nibble -> even high
 * nibble -> even low nibble'.
 */
static inline void SDMMCHOST_EnableDDRMode(sdmmchost_t *host, bool enable, uint32_t nibblePos)
{
    assert(false);
}

/*!
 * @brief force card clock on. SPI host does not support.
 * @param host host handler
 * @param enable true is enable, false is disable.
 */
static inline void SDMMCHOST_ForceClockOn(sdmmchost_t *host, bool enable)
{
}

/*!
 * @brief card interrupt function. SPI host does not support.
 * @param host host handler
 * @param sdioInt card interrupt configuration
 */
static inline status_t SDMMCHOST_CardIntInit(sdmmchost_t *host, void *sdioInt)
{
    if (host->interruptInit != NULL)
    {
        return host->interruptInit(sdioInt);
    }
    return kStatus_Success;
}

/*!
 * @brief enable card interrupt. SPI host does not support.
 * @param host host handler
 * @param enable true is enable, false is disable.
 */
static inline void SDMMCHOST_EnableCardInt(sdmmchost_t *host, bool enable)
{
    if (host->interruptEnable != NULL)
    {
        host->interruptEnable(enable);
    }
}

/*!
 * @brief Set card bus clock. SPI host does not support.
 * @param host host handler
 * @param targetClock target clock frequency
 * @retval actual clock frequency can be reach.
 */
static inline uint32_t SDMMCHOST_SetCardClock(sdmmchost_t *host, uint32_t targetClock)
{
    return 0U;
}

/*!
 * @brief Send initilization active 80 clocks to card.
 * @param host host handler
 */
void SDMMCHOST_SendCardActive(sdmmchost_t *host);

/*!
 * @brief Init host controller.
 *
 * @param host host handler
 * @retval kStatus_Success host init success
 * @retval kStatus_Fail event fail
 */
status_t SDMMCHOST_Init(sdmmchost_t *host);

/*!
 * @brief Deinit host controller.
 *
 * @param host host handler
 */
void SDMMCHOST_Deinit(sdmmchost_t *host);

/*!
 * @brief host transfer function.
 *
 * @param host host handler
 * @param content transfer content.
 */
status_t SDMMCHOST_TransferFunction(sdmmchost_t *host, sdmmchost_transfer_t *content);

/* @} */

#if defined(__cplusplus)
}
#endif
/* @} */
#endif /* _FSL_SDMMC_HOST_H */
