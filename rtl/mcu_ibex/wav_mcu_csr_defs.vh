/****************************************************************************
*****************************************************************************
** Wavious LLC Proprietary
**
** Copyright (c) 2019 Wavious LLC. All rights reserved.
**
** All data and information contained in or disclosed by this document
** are confidential and proprietary information of Wavious LLC,
** and all rights therein are expressly reserved. By accepting this
** material, the recipient agrees that this material and the information
** contained therein are held in confidence and in trust and will not be
** used, copied, reproduced in whole or in part, nor its contents
** revealed in any manner to others without the express written
** permission of Wavious LLC.
****************************************************************************
*
* Module    : wav_mcu_csr_defs.vh
* Date      : 2021-01-14
* Desciption: Autogenerated CSR block.
*
* $Id: wav_mcu_csr_defs.vh,v 1.6 2021/01/15 11:30:04 schilukuri Exp $
*
****************************************************************************/

// Word Address 0x00000000 : WAV_MCU_IRQ_FAST_CLR_CFG (WC)
`define WAV_MCU_IRQ_FAST_CLR_CFG_CLR_FIELD 31:0
`define WAV_MCU_IRQ_FAST_CLR_CFG_CLR_FIELD_WIDTH 32
`define WAV_MCU_IRQ_FAST_CLR_CFG_RANGE 31:0
`define WAV_MCU_IRQ_FAST_CLR_CFG_WIDTH 32
`define WAV_MCU_IRQ_FAST_CLR_CFG_ADR 32'h00000000
`define WAV_MCU_IRQ_FAST_CLR_CFG_POR 32'h00000000
`define WAV_MCU_IRQ_FAST_CLR_CFG_MSK 32'hFFFFFFFF

// Word Address 0x00000004 : WAV_MCU_IRQ_FAST_STICKY_CFG (RW)
`define WAV_MCU_IRQ_FAST_STICKY_CFG_EN_FIELD 31:0
`define WAV_MCU_IRQ_FAST_STICKY_CFG_EN_FIELD_WIDTH 32
`define WAV_MCU_IRQ_FAST_STICKY_CFG_RANGE 31:0
`define WAV_MCU_IRQ_FAST_STICKY_CFG_WIDTH 32
`define WAV_MCU_IRQ_FAST_STICKY_CFG_ADR 32'h00000004
`define WAV_MCU_IRQ_FAST_STICKY_CFG_POR 32'h00000000
`define WAV_MCU_IRQ_FAST_STICKY_CFG_MSK 32'hFFFFFFFF

// Word Address 0x00000008 : WAV_MCU_IRQ_FAST_MSK_CFG (RW)
`define WAV_MCU_IRQ_FAST_MSK_CFG_MSK_FIELD 31:0
`define WAV_MCU_IRQ_FAST_MSK_CFG_MSK_FIELD_WIDTH 32
`define WAV_MCU_IRQ_FAST_MSK_CFG_RANGE 31:0
`define WAV_MCU_IRQ_FAST_MSK_CFG_WIDTH 32
`define WAV_MCU_IRQ_FAST_MSK_CFG_ADR 32'h00000008
`define WAV_MCU_IRQ_FAST_MSK_CFG_POR 32'h00000000
`define WAV_MCU_IRQ_FAST_MSK_CFG_MSK 32'hFFFFFFFF

// Word Address 0x0000000C : WAV_MCU_IRQ_FAST_SYNC_CFG (RW)
`define WAV_MCU_IRQ_FAST_SYNC_CFG_EN_FIELD 31:0
`define WAV_MCU_IRQ_FAST_SYNC_CFG_EN_FIELD_WIDTH 32
`define WAV_MCU_IRQ_FAST_SYNC_CFG_RANGE 31:0
`define WAV_MCU_IRQ_FAST_SYNC_CFG_WIDTH 32
`define WAV_MCU_IRQ_FAST_SYNC_CFG_ADR 32'h0000000C
`define WAV_MCU_IRQ_FAST_SYNC_CFG_POR 32'h00000000
`define WAV_MCU_IRQ_FAST_SYNC_CFG_MSK 32'hFFFFFFFF

// Word Address 0x00000010 : WAV_MCU_IRQ_FAST_EDGE_CFG (RW)
`define WAV_MCU_IRQ_FAST_EDGE_CFG_EN_FIELD 31:0
`define WAV_MCU_IRQ_FAST_EDGE_CFG_EN_FIELD_WIDTH 32
`define WAV_MCU_IRQ_FAST_EDGE_CFG_RANGE 31:0
`define WAV_MCU_IRQ_FAST_EDGE_CFG_WIDTH 32
`define WAV_MCU_IRQ_FAST_EDGE_CFG_ADR 32'h00000010
`define WAV_MCU_IRQ_FAST_EDGE_CFG_POR 32'h00000000
`define WAV_MCU_IRQ_FAST_EDGE_CFG_MSK 32'hFFFFFFFF

// Word Address 0x00000014 : WAV_MCU_IRQ_FAST_STA (R)
`define WAV_MCU_IRQ_FAST_STA_IRQ_STA_FIELD 31:0
`define WAV_MCU_IRQ_FAST_STA_IRQ_STA_FIELD_WIDTH 32
`define WAV_MCU_IRQ_FAST_STA_RANGE 31:0
`define WAV_MCU_IRQ_FAST_STA_WIDTH 32
`define WAV_MCU_IRQ_FAST_STA_ADR 32'h00000014
`define WAV_MCU_IRQ_FAST_STA_POR 32'h00000000
`define WAV_MCU_IRQ_FAST_STA_MSK 32'hFFFFFFFF

// Word Address 0x00000018 : WAV_MCU_MSIP_CFG (RW)
`define WAV_MCU_MSIP_CFG_INTERRUPT_FIELD 0
`define WAV_MCU_MSIP_CFG_INTERRUPT_FIELD_WIDTH 1
`define WAV_MCU_MSIP_CFG_RANGE 0:0
`define WAV_MCU_MSIP_CFG_WIDTH 1
`define WAV_MCU_MSIP_CFG_ADR 32'h00000018
`define WAV_MCU_MSIP_CFG_POR 32'h00000000
`define WAV_MCU_MSIP_CFG_MSK 32'h00000001

// Word Address 0x0000001C : WAV_MCU_MTIME_LO_STA (R)
`define WAV_MCU_MTIME_LO_STA_TIME_LO_FIELD 31:0
`define WAV_MCU_MTIME_LO_STA_TIME_LO_FIELD_WIDTH 32
`define WAV_MCU_MTIME_LO_STA_RANGE 31:0
`define WAV_MCU_MTIME_LO_STA_WIDTH 32
`define WAV_MCU_MTIME_LO_STA_ADR 32'h0000001C
`define WAV_MCU_MTIME_LO_STA_POR 32'h00000000
`define WAV_MCU_MTIME_LO_STA_MSK 32'hFFFFFFFF

// Word Address 0x00000020 : WAV_MCU_MTIME_HI_STA (R)
`define WAV_MCU_MTIME_HI_STA_TIME_HI_FIELD 31:0
`define WAV_MCU_MTIME_HI_STA_TIME_HI_FIELD_WIDTH 32
`define WAV_MCU_MTIME_HI_STA_RANGE 31:0
`define WAV_MCU_MTIME_HI_STA_WIDTH 32
`define WAV_MCU_MTIME_HI_STA_ADR 32'h00000020
`define WAV_MCU_MTIME_HI_STA_POR 32'h00000000
`define WAV_MCU_MTIME_HI_STA_MSK 32'hFFFFFFFF

// Word Address 0x00000024 : WAV_MCU_MTIMECMP_LO_CFG (RW)
`define WAV_MCU_MTIMECMP_LO_CFG_TIMECMP_LO_FIELD 31:0
`define WAV_MCU_MTIMECMP_LO_CFG_TIMECMP_LO_FIELD_WIDTH 32
`define WAV_MCU_MTIMECMP_LO_CFG_RANGE 31:0
`define WAV_MCU_MTIMECMP_LO_CFG_WIDTH 32
`define WAV_MCU_MTIMECMP_LO_CFG_ADR 32'h00000024
`define WAV_MCU_MTIMECMP_LO_CFG_POR 32'h00000000
`define WAV_MCU_MTIMECMP_LO_CFG_MSK 32'hFFFFFFFF

// Word Address 0x00000028 : WAV_MCU_MTIMECMP_HI_CFG (RW)
`define WAV_MCU_MTIMECMP_HI_CFG_TIMECMP_HI_FIELD 31:0
`define WAV_MCU_MTIMECMP_HI_CFG_TIMECMP_HI_FIELD_WIDTH 32
`define WAV_MCU_MTIMECMP_HI_CFG_RANGE 31:0
`define WAV_MCU_MTIMECMP_HI_CFG_WIDTH 32
`define WAV_MCU_MTIMECMP_HI_CFG_ADR 32'h00000028
`define WAV_MCU_MTIMECMP_HI_CFG_POR 32'h00000000
`define WAV_MCU_MTIMECMP_HI_CFG_MSK 32'hFFFFFFFF

// Word Address 0x0000002C : WAV_MCU_MTIMECMP_CFG (W1T)
`define WAV_MCU_MTIMECMP_CFG_LOAD_FIELD 0
`define WAV_MCU_MTIMECMP_CFG_LOAD_FIELD_WIDTH 1
`define WAV_MCU_MTIMECMP_CFG_RANGE 0:0
`define WAV_MCU_MTIMECMP_CFG_WIDTH 1
`define WAV_MCU_MTIMECMP_CFG_ADR 32'h0000002C
`define WAV_MCU_MTIMECMP_CFG_POR 32'h00000000
`define WAV_MCU_MTIMECMP_CFG_MSK 32'h00000001

// Word Address 0x00000030 : WAV_MCU_MTIME_CFG (RW)
`define WAV_MCU_MTIME_CFG_ENABLE_FIELD 0
`define WAV_MCU_MTIME_CFG_ENABLE_FIELD_WIDTH 1
`define WAV_MCU_MTIME_CFG_RANGE 0:0
`define WAV_MCU_MTIME_CFG_WIDTH 1
`define WAV_MCU_MTIME_CFG_ADR 32'h00000030
`define WAV_MCU_MTIME_CFG_POR 32'h00000001
`define WAV_MCU_MTIME_CFG_MSK 32'h00000001

// Word Address 0x00000034 : WAV_MCU_GP0_CFG (RW)
`define WAV_MCU_GP0_CFG_RESERVED_FIELD 31:0
`define WAV_MCU_GP0_CFG_RESERVED_FIELD_WIDTH 32
`define WAV_MCU_GP0_CFG_RANGE 31:0
`define WAV_MCU_GP0_CFG_WIDTH 32
`define WAV_MCU_GP0_CFG_ADR 32'h00000034
`define WAV_MCU_GP0_CFG_POR 32'h00000000
`define WAV_MCU_GP0_CFG_MSK 32'hFFFFFFFF

// Word Address 0x00000038 : WAV_MCU_GP1_CFG (RW)
`define WAV_MCU_GP1_CFG_RESERVED_FIELD 31:0
`define WAV_MCU_GP1_CFG_RESERVED_FIELD_WIDTH 32
`define WAV_MCU_GP1_CFG_RANGE 31:0
`define WAV_MCU_GP1_CFG_WIDTH 32
`define WAV_MCU_GP1_CFG_ADR 32'h00000038
`define WAV_MCU_GP1_CFG_POR 32'h00000000
`define WAV_MCU_GP1_CFG_MSK 32'hFFFFFFFF

// Word Address 0x0000003C : WAV_MCU_GP2_CFG (RW)
`define WAV_MCU_GP2_CFG_RESERVED_FIELD 31:0
`define WAV_MCU_GP2_CFG_RESERVED_FIELD_WIDTH 32
`define WAV_MCU_GP2_CFG_RANGE 31:0
`define WAV_MCU_GP2_CFG_WIDTH 32
`define WAV_MCU_GP2_CFG_ADR 32'h0000003C
`define WAV_MCU_GP2_CFG_POR 32'h00000000
`define WAV_MCU_GP2_CFG_MSK 32'hFFFFFFFF

// Word Address 0x00000040 : WAV_MCU_GP3_CFG (RW)
`define WAV_MCU_GP3_CFG_RESERVED_FIELD 31:0
`define WAV_MCU_GP3_CFG_RESERVED_FIELD_WIDTH 32
`define WAV_MCU_GP3_CFG_RANGE 31:0
`define WAV_MCU_GP3_CFG_WIDTH 32
`define WAV_MCU_GP3_CFG_ADR 32'h00000040
`define WAV_MCU_GP3_CFG_POR 32'h00000000
`define WAV_MCU_GP3_CFG_MSK 32'hFFFFFFFF

// Word Address 0x00000044 : WAV_MCU_DEBUG_CFG (RW)
`define WAV_MCU_DEBUG_CFG_EXIT_FIELD 4
`define WAV_MCU_DEBUG_CFG_EXIT_FIELD_WIDTH 1
`define WAV_MCU_DEBUG_CFG_INTR_FIELD 0
`define WAV_MCU_DEBUG_CFG_INTR_FIELD_WIDTH 1
`define WAV_MCU_DEBUG_CFG_STEP_FIELD 2
`define WAV_MCU_DEBUG_CFG_STEP_FIELD_WIDTH 1
`define WAV_MCU_DEBUG_CFG_RANGE 4:0
`define WAV_MCU_DEBUG_CFG_WIDTH 5
`define WAV_MCU_DEBUG_CFG_ADR 32'h00000044
`define WAV_MCU_DEBUG_CFG_POR 32'h00000000
`define WAV_MCU_DEBUG_CFG_MSK 32'h00000015

// Word Address 0x00000048 : WAV_MCU_ITCM_CFG (RW)
`define WAV_MCU_ITCM_CFG_TIMING_PARAM_FIELD 7:0
`define WAV_MCU_ITCM_CFG_TIMING_PARAM_FIELD_WIDTH 8
`define WAV_MCU_ITCM_CFG_RANGE 7:0
`define WAV_MCU_ITCM_CFG_WIDTH 8
`define WAV_MCU_ITCM_CFG_ADR 32'h00000048
`define WAV_MCU_ITCM_CFG_POR 32'h0000003F
`define WAV_MCU_ITCM_CFG_MSK 32'h000000FF

// Word Address 0x0000004C : WAV_MCU_DTCM_CFG (RW)
`define WAV_MCU_DTCM_CFG_TIMING_PARAM_FIELD 7:0
`define WAV_MCU_DTCM_CFG_TIMING_PARAM_FIELD_WIDTH 8
`define WAV_MCU_DTCM_CFG_RANGE 7:0
`define WAV_MCU_DTCM_CFG_WIDTH 8
`define WAV_MCU_DTCM_CFG_ADR 32'h0000004C
`define WAV_MCU_DTCM_CFG_POR 32'h0000003F
`define WAV_MCU_DTCM_CFG_MSK 32'h000000FF