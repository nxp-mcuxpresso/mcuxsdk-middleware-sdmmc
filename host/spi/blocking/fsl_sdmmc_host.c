/*
 * Copyright 2026 NXP
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include "fsl_sdmmc_host.h"
#include "fsl_sdmmc_common.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/

/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Variables
 ******************************************************************************/

/* 512 bytes ones for 1 block */
static uint8_t block_ones[] = {
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
};

/*******************************************************************************
 * Code
 ******************************************************************************/

static uint8_t SDMMCHOST_Crc7(uint8_t seed, const uint8_t *data, size_t len)
{
    while (len != 0U)
    {
        uint8_t e = seed ^ *data++;
        uint8_t f = e ^ (e >> 4) ^ (e >> 7);

        seed = (f << 1) ^ (f << 4);
        len--;
    }

    return seed;
}

static uint16_t SDMMCHOST_Crc16(uint16_t seed, const uint8_t *data, size_t len)
{
    for (; len > 0; len--)
    {
        seed = (seed >> 8U) | (seed << 8U);
        seed ^= *data;
        ++data;
        seed ^= (seed & 0xffU) >> 4U;
        seed ^= seed << 12U;
        seed ^= (seed & 0xffU) << 5U;
    }
    return seed;
}

static status_t SDMMCHOST_SpiCsRelease(sdmmchost_t *host)
{
    sdmmchost_spi_transfer_t xfer = {0};

    xfer.flags = SD_SPI_FLAG_CS_RELEASE;

    return host->spiTransfer(&xfer);
}

static status_t SDMMCHOST_SpiReceive(sdmmchost_t *host, uint8_t *buf, size_t len)
{
    assert(len <= FSL_SDMMC_DEFAULT_BLOCK_SIZE);

    sdmmchost_spi_transfer_t xfer = {0};

    xfer.txData   = block_ones;
    xfer.rxData   = buf;
    xfer.dataSize = len;
    xfer.flags    = SD_SPI_FLAG_CS_HOLD;

    return host->spiTransfer(&xfer);
}

static status_t SDMMCHOST_SpiTransmit(sdmmchost_t *host, uint8_t *buf, size_t len)
{
    sdmmchost_spi_transfer_t xfer = {0};

    xfer.txData   = buf;
    xfer.rxData   = NULL;
    xfer.dataSize = len;
    xfer.flags    = SD_SPI_FLAG_CS_HOLD;

    return host->spiTransfer(&xfer);
}

static status_t SDMMCHOST_SpiWaitBusyRelease(sdmmchost_t *host)
{
    uint32_t retries = SD_SPI_BUSY_RETRIES;
    uint8_t resp     = 0x0U;
    status_t error;

    while (retries > 0U)
    {
        error = SDMMCHOST_SpiReceive(host, &resp, 1U);
        if (error != kStatus_Success)
        {
            return error;
        }

#if !defined(SD_SPI_BUSY_RETRIES_NOCHECK)
        if (resp == 0xFFU)
        {
            break;
        }
#endif

        retries--;
#if !defined(SD_SPI_BUSY_RETRIES_NOCHECK)
        if (retries == 0U)
        {
            return kStatus_Fail;
        }
#endif
    }

    return kStatus_Success;
}

static status_t SDMMCHOST_SpiWaitToken(sdmmchost_t *host, uint8_t *token)
{
    uint32_t retries = SD_SPI_DATA_TOKEN_RETRIES;
    status_t error;

    while (retries > 0U)
    {
        error = SDMMCHOST_SpiReceive(host, token, 1U);
        if (error != kStatus_Success)
        {
            return error;
        }

        if (*token != 0xFFU)
        {
            break;
        }

        retries--;
        if (retries == 0U)
        {
            return kStatus_Fail;
        }
    }

    return kStatus_Success;
}

static status_t SDMMCHOST_SpiSendCommand(sdmmchost_t *host, sdmmchost_cmd_t *command)
{
    sdmmchost_spi_transfer_t xfer = {0};
    uint8_t txBuf[SD_SPI_COMMAND_SIZE];
    uint8_t resp     = 0xFFU;
    uint32_t retries = SD_SPI_RESPONSE_RETRIES;
    status_t error   = kStatus_Success;

    /*
     * 6 bytes Command packet
     * [47]: start bit, 0b0
     * [46]: transmission bit, 0b1
     * [45-40]: command index
     * [39-8]: argument
     * [7-1]: CRC
     * [0]: end bit, 0b1
     */
    txBuf[0] = (command->index & SD_SPI_COMMAND_BITS_INDEX) | SD_SPI_COMMAND_BITS_TX;
    txBuf[1] = (command->argument >> 24U) & 0xFFU;
    txBuf[2] = (command->argument >> 16U) & 0xFFU;
    txBuf[3] = (command->argument >> 8U) & 0xFFU;
    txBuf[4] = (command->argument >> 0U) & 0xFFU;
    txBuf[5] = SDMMCHOST_Crc7(0, &txBuf[0], 5U) | 0x1U;

    xfer.txData   = txBuf;
    xfer.rxData   = NULL;
    xfer.dataSize = SD_SPI_COMMAND_SIZE;
    xfer.flags    = SD_SPI_FLAG_CS_HOLD;

    /* Send command */
    error = host->spiTransfer(&xfer);
    if (error != kStatus_Success)
    {
        return error;
    }

    /* Get response */
    while (retries > 0U)
    {
        error = SDMMCHOST_SpiReceive(host, &resp, 1U);
        if (error != kStatus_Success)
        {
            return error;
        }

        if ((resp & 0x80U) == 0U)
        {
            command->response[0] = resp;
            break;
        }

        retries--;
        if (retries == 0U)
        {
            return kStatus_Fail;
        }
    }

    if (command->response[0] & (SD_SPI_R1PARAMETER_ERR | SD_SPI_R1ADDRESS_ERR | SD_SPI_R1ILLEGAL_CMD_ERR |
                                SD_SPI_R1CMD_CRC_ERR | SD_SPI_R1ERASE_SEQ_ERR | SD_SPI_R1ERASE_RESET))
    {
        return kStatus_Fail;
    }

    switch ((command->responseType))
    {
        case kCARD_ResponseTypeR1:
            /* R1 response - one byte*/
            break;
        case kCARD_ResponseTypeR1b:
            /* R1b response - one byte plus busy signal */
            error = SDMMCHOST_SpiWaitBusyRelease(host);
            if (error != kStatus_Success)
            {
                return error;
            }
            break;
        case kCARD_ResponseTypeR2:
        case kCARD_ResponseTypeR5:
            /* R1 response + 1 byte*/
            error = SDMMCHOST_SpiReceive(host, &resp, 1U);
            if (error != kStatus_Success)
            {
                return error;
            }
            command->response[0] = (command->response[0] << 8U) | resp;
            break;
        case kCARD_ResponseTypeR3:
        case kCARD_ResponseTypeR4:
        case kCARD_ResponseTypeR7:
            /* R3/R7 response - R1 response + 4 bytes */
            command->response[1] = command->response[0];
            for (int32_t i = 0; i < 4; i++)
            {
                error = SDMMCHOST_SpiReceive(host, &resp, 1U);
                if (error != kStatus_Success)
                {
                    return error;
                }
                command->response[0] = (command->response[0] << 8U) | resp;
            }
            break;
        default:
            /* Other RSP types not supported */
            break;
    }

    return error;
}

static status_t SDMMCHOST_SpiSendStop(sdmmchost_t *host)
{
    sdmmchost_cmd_t command = {0};

    command.index        = (uint32_t)kSDMMC_StopTransmission;
    command.responseType = kCARD_ResponseTypeR1b;

    return SDMMCHOST_SpiSendCommand(host, &command);
}

static status_t SDMMCHOST_SpiReadData(sdmmchost_t *host, sdmmchost_data_t *data, bool stop)
{
    uint8_t *readPtr   = (uint8_t *)data->rxData;
    uint32_t remaining = data->blockCount;
    uint8_t token;
    uint8_t crcBuf[2];
    uint16_t calculatedCrc, receivedCrc;
    status_t error;

    while (remaining > 0U)
    {
        /* Wait for data start token (0xFE) */
        error = SDMMCHOST_SpiWaitToken(host, &token);
        if (error != kStatus_Success)
        {
            return error;
        }

        /* Check for valid data token */
        if (token != SD_SPI_TOKEN_BLOCK_START)
        {
            /* Error token received */
            return kStatus_Fail;
        }

        /* Read data block */
        error = SDMMCHOST_SpiReceive(host, readPtr, data->blockSize);
        if (error != kStatus_Success)
        {
            return error;
        }

        /* Read CRC16 */
        error = SDMMCHOST_SpiReceive(host, crcBuf, 2U);
        if (error != kStatus_Success)
        {
            return error;
        }

        /* Verify CRC */
        calculatedCrc = SDMMCHOST_Crc16(0, readPtr, data->blockSize);
        receivedCrc   = ((uint16_t)crcBuf[0] << 8) | crcBuf[1];

        if (calculatedCrc != receivedCrc)
        {
            return kStatus_Fail; /* CRC error */
        }

        readPtr += data->blockSize;
        remaining--;
    }

    if (stop && (data->blockCount > 1U))
    {
        return SDMMCHOST_SpiSendStop(host);
    }

    return kStatus_Success;
}

static status_t SDMMCHOST_SpiWriteData(sdmmchost_t *host, sdmmchost_data_t *data)
{
    uint8_t *writePtr  = (uint8_t *)data->txData;
    uint32_t remaining = data->blockCount;
    uint8_t token;
    uint8_t response;
    uint8_t crcBuf[2];
    uint16_t crc;
    status_t error;

    /* Determine token type */
    if (data->blockCount > 1)
    {
        token = SD_SPI_TOKEN_BLOCK_START_MULTI_WRITE;
    }
    else
    {
        token = SD_SPI_TOKEN_BLOCK_START;
    }

    while (remaining > 0U)
    {
        /* Send data token */
        error = SDMMCHOST_SpiTransmit(host, &token, 1U);
        if (error != kStatus_Success)
        {
            return error;
        }

        /* Send data block */
        error = SDMMCHOST_SpiTransmit(host, writePtr, data->blockSize);
        if (error != kStatus_Success)
        {
            return error;
        }

        /* Calculate and send CRC16 */
        crc       = SDMMCHOST_Crc16(0, writePtr, data->blockSize);
        crcBuf[0] = (crc >> 8) & 0xFFU;
        crcBuf[1] = crc & 0xFFU;

        error = SDMMCHOST_SpiTransmit(host, crcBuf, 2U);
        if (error != kStatus_Success)
        {
            return error;
        }

        /* Read data response token */
        error = SDMMCHOST_SpiReceive(host, &response, 1U);
        if (error != kStatus_Success)
        {
            return error;
        }

        /* Check data response (xxx00101 = accepted) */
        if ((response & SD_SPI_TOKEN_RESPONSE_MASK) != SD_SPI_TOKEN_RESPONSE_ACCEPTED)
        {
            return kStatus_Fail;
        }

        /* Wait for card to finish programming (busy) */
        error = SDMMCHOST_SpiWaitBusyRelease(host);
        if (error != kStatus_Success)
        {
            return error;
        }

        writePtr += data->blockSize;
        remaining--;
    }

    /* For multi-block write, send stop token */
    if (data->blockCount > 1)
    {
        token = SD_SPI_TOKEN_BLOCK_STOP_TRAN;
        error = SDMMCHOST_SpiTransmit(host, &token, 1U);
        if (error != kStatus_Success)
        {
            return error;
        }

        /* Wait for final busy to clear */
        error = SDMMCHOST_SpiWaitBusyRelease(host);
        if (error != kStatus_Success)
        {
            return error;
        }
    }

    return kStatus_Success;
}

void SDMMCHOST_SendCardActive(sdmmchost_t *host)
{
    sdmmchost_spi_transfer_t xfer = {0};

    xfer.txData   = block_ones;
    xfer.rxData   = NULL;
    xfer.dataSize = 10U;
    xfer.flags    = SD_SPI_FLAG_CS_ACTIVE_HIGH;

    host->spiTransfer(&xfer);
}

status_t SDMMCHOST_TransferFunction(sdmmchost_t *host, sdmmchost_transfer_t *content)
{
    sdmmchost_cmd_t *command = content->command;
    sdmmchost_data_t *data   = content->data;
    status_t error           = kStatus_Success;

    SDMMC_LOG("%s: CMD%u, ARG 0x%08x, %s\r\n", __func__, command->index, command->argument,
           (command->responseType == kCARD_ResponseTypeNone) ? "" :
           ((command->responseType == kCARD_ResponseTypeR1) ? "R1" :
           ((command->responseType == kCARD_ResponseTypeR1b) ? "R1b" :
           ((command->responseType == kCARD_ResponseTypeR2) ? "R2" :
           ((command->responseType == kCARD_ResponseTypeR3) ? "R3" :
           ((command->responseType == kCARD_ResponseTypeR4) ? "R4" :
           ((command->responseType == kCARD_ResponseTypeR5) ? "R5" :
           ((command->responseType == kCARD_ResponseTypeR5b) ? "R5b1" :
           ((command->responseType == kCARD_ResponseTypeR6) ? "R6" :
           ((command->responseType == kCARD_ResponseTypeR7) ? "R7" : "Unknown response type"))))))))));

    if (content->data != NULL)
    {
        SDMMC_LOG("%s: %s%s DATA, blockCount %d, blockSize %d\r\n", __func__, (data->rxData != NULL) ? "RX" : "",
                  (data->txData != NULL) ? "TX" : "", data->blockCount, data->blockSize);
    }

    error = SDMMCHOST_SpiSendCommand(host, command);
    if ((error == kStatus_Success) && (content->data != NULL))
    {
        if (data->rxData != NULL)
        {
            error = SDMMCHOST_SpiReadData(host, data, (command->index != kSDIO_RWIOExtended));
        }
        else if (data->txData != NULL)
        {
            error = SDMMCHOST_SpiWriteData(host, data);
        }

        if (error != kStatus_Success)
        {
            SDMMC_LOG("%s: DATA error\r\n", __func__);
        }
    }

    SDMMC_LOG("%s: CMD %s, RESP 0x%08x 0x%08x 0x%08x 0x%08x\r\n", __func__,
              (error == kStatus_Success) ? "done" : "error", command->response[3], command->response[2],
              command->response[1], command->response[0]);

    SDMMCHOST_SpiCsRelease(host);

    /* For debug purpose with SDMMC_ENABLE_LOG_PRINT, we can assert here. */
#if defined SDMMC_ENABLE_LOG_PRINT
    assert(error == kStatus_Success);
#endif

    return error;
}

status_t SDMMCHOST_Init(sdmmchost_t *host)
{
    assert(host != NULL);
    assert(host->spiInit != NULL);

    host->capability = 0U;

    return host->spiInit();
}

void SDMMCHOST_Deinit(sdmmchost_t *host)
{
    assert(host != NULL);

    if (host->spiDeinit != NULL)
    {
        host->spiDeinit();
    }
}
