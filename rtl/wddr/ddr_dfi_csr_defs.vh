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
* Module    : ddr_dfi_csr_defs.vh
* Date      : 2021-04-22
* Desciption: Autogenerated CSR block.
*
* $Id: ddr_dfi_csr_defs.vh,v 1.180 2021/04/23 22:16:10 mclovis Exp $
*
****************************************************************************/

// Word Address 0x00000000 : DDR_DFI_TOP_0_CFG (RW)
`define DDR_DFI_TOP_0_CFG_CA_LPBK_SEL_FIELD 0
`define DDR_DFI_TOP_0_CFG_CA_LPBK_SEL_FIELD_WIDTH 1
`define DDR_DFI_TOP_0_CFG_RANGE 0:0
`define DDR_DFI_TOP_0_CFG_WIDTH 1
`define DDR_DFI_TOP_0_CFG_ADR 32'h00000000
`define DDR_DFI_TOP_0_CFG_POR 32'h00000000
`define DDR_DFI_TOP_0_CFG_MSK 32'h00000001

// Word Address 0x00000004 : DDR_DFI_DATA_BIT_ENABLE_CFG (RW)
`define DDR_DFI_DATA_BIT_ENABLE_CFG_VAL_FIELD 31:0
`define DDR_DFI_DATA_BIT_ENABLE_CFG_VAL_FIELD_WIDTH 32
`define DDR_DFI_DATA_BIT_ENABLE_CFG_RANGE 31:0
`define DDR_DFI_DATA_BIT_ENABLE_CFG_WIDTH 32
`define DDR_DFI_DATA_BIT_ENABLE_CFG_ADR 32'h00000004
`define DDR_DFI_DATA_BIT_ENABLE_CFG_POR 32'h000001FF
`define DDR_DFI_DATA_BIT_ENABLE_CFG_MSK 32'hFFFFFFFF

// Word Address 0x00000008 : DDR_DFI_PHYFREQ_RANGE_CFG (RW)
`define DDR_DFI_PHYFREQ_RANGE_CFG_VAL_FIELD 31:0
`define DDR_DFI_PHYFREQ_RANGE_CFG_VAL_FIELD_WIDTH 32
`define DDR_DFI_PHYFREQ_RANGE_CFG_RANGE 31:0
`define DDR_DFI_PHYFREQ_RANGE_CFG_WIDTH 32
`define DDR_DFI_PHYFREQ_RANGE_CFG_ADR 32'h00000008
`define DDR_DFI_PHYFREQ_RANGE_CFG_POR 32'h0000EFB5
`define DDR_DFI_PHYFREQ_RANGE_CFG_MSK 32'hFFFFFFFF

// Word Address 0x0000000C : DDR_DFI_STATUS_IF_CFG (RW)
`define DDR_DFI_STATUS_IF_CFG_SW_ACK_OVR_FIELD 2
`define DDR_DFI_STATUS_IF_CFG_SW_ACK_OVR_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_CFG_SW_ACK_VAL_FIELD 3
`define DDR_DFI_STATUS_IF_CFG_SW_ACK_VAL_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_CFG_SW_EVENT_0_OVR_FIELD 4
`define DDR_DFI_STATUS_IF_CFG_SW_EVENT_0_OVR_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_CFG_SW_EVENT_0_VAL_FIELD 5
`define DDR_DFI_STATUS_IF_CFG_SW_EVENT_0_VAL_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_CFG_SW_EVENT_1_OVR_FIELD 6
`define DDR_DFI_STATUS_IF_CFG_SW_EVENT_1_OVR_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_CFG_SW_EVENT_1_VAL_FIELD 7
`define DDR_DFI_STATUS_IF_CFG_SW_EVENT_1_VAL_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_CFG_SW_FREQUENCY_VAL_FIELD 20:16
`define DDR_DFI_STATUS_IF_CFG_SW_FREQUENCY_VAL_FIELD_WIDTH 5
`define DDR_DFI_STATUS_IF_CFG_SW_FREQ_FSP_VAL_FIELD 13:12
`define DDR_DFI_STATUS_IF_CFG_SW_FREQ_FSP_VAL_FIELD_WIDTH 2
`define DDR_DFI_STATUS_IF_CFG_SW_FREQ_OVR_FIELD 8
`define DDR_DFI_STATUS_IF_CFG_SW_FREQ_OVR_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_CFG_SW_FREQ_RATIO_VAL_FIELD 15:14
`define DDR_DFI_STATUS_IF_CFG_SW_FREQ_RATIO_VAL_FIELD_WIDTH 2
`define DDR_DFI_STATUS_IF_CFG_SW_REQ_OVR_FIELD 0
`define DDR_DFI_STATUS_IF_CFG_SW_REQ_OVR_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_CFG_SW_REQ_VAL_FIELD 1
`define DDR_DFI_STATUS_IF_CFG_SW_REQ_VAL_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_CFG_RANGE 20:0
`define DDR_DFI_STATUS_IF_CFG_WIDTH 21
`define DDR_DFI_STATUS_IF_CFG_ADR 32'h0000000C
`define DDR_DFI_STATUS_IF_CFG_POR 32'h0000000D
`define DDR_DFI_STATUS_IF_CFG_MSK 32'h001FF1FF

// Word Address 0x00000010 : DDR_DFI_STATUS_IF_STA (R)
`define DDR_DFI_STATUS_IF_STA_ACK_FIELD 1
`define DDR_DFI_STATUS_IF_STA_ACK_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_STA_FREQUENCY_FIELD 12:8
`define DDR_DFI_STATUS_IF_STA_FREQUENCY_FIELD_WIDTH 5
`define DDR_DFI_STATUS_IF_STA_FREQ_FSP_FIELD 5:4
`define DDR_DFI_STATUS_IF_STA_FREQ_FSP_FIELD_WIDTH 2
`define DDR_DFI_STATUS_IF_STA_FREQ_RATIO_FIELD 7:6
`define DDR_DFI_STATUS_IF_STA_FREQ_RATIO_FIELD_WIDTH 2
`define DDR_DFI_STATUS_IF_STA_REQ_FIELD 0
`define DDR_DFI_STATUS_IF_STA_REQ_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_STA_RANGE 12:0
`define DDR_DFI_STATUS_IF_STA_WIDTH 13
`define DDR_DFI_STATUS_IF_STA_ADR 32'h00000010
`define DDR_DFI_STATUS_IF_STA_POR 32'h00000000
`define DDR_DFI_STATUS_IF_STA_MSK 32'h00001FF3

// Word Address 0x00000014 : DDR_DFI_STATUS_IF_EVENT_0_CFG (RW)
`define DDR_DFI_STATUS_IF_EVENT_0_CFG_SW_EVENT_CNT_FIELD 19:0
`define DDR_DFI_STATUS_IF_EVENT_0_CFG_SW_EVENT_CNT_FIELD_WIDTH 20
`define DDR_DFI_STATUS_IF_EVENT_0_CFG_SW_EVENT_CNT_SEL_FIELD 31
`define DDR_DFI_STATUS_IF_EVENT_0_CFG_SW_EVENT_CNT_SEL_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_EVENT_0_CFG_RANGE 31:0
`define DDR_DFI_STATUS_IF_EVENT_0_CFG_WIDTH 32
`define DDR_DFI_STATUS_IF_EVENT_0_CFG_ADR 32'h00000014
`define DDR_DFI_STATUS_IF_EVENT_0_CFG_POR 32'h00000000
`define DDR_DFI_STATUS_IF_EVENT_0_CFG_MSK 32'h800FFFFF

// Word Address 0x00000018 : DDR_DFI_STATUS_IF_EVENT_1_CFG (RW)
`define DDR_DFI_STATUS_IF_EVENT_1_CFG_SW_EVENT_CNT_FIELD 19:0
`define DDR_DFI_STATUS_IF_EVENT_1_CFG_SW_EVENT_CNT_FIELD_WIDTH 20
`define DDR_DFI_STATUS_IF_EVENT_1_CFG_SW_EVENT_CNT_SEL_FIELD 31
`define DDR_DFI_STATUS_IF_EVENT_1_CFG_SW_EVENT_CNT_SEL_FIELD_WIDTH 1
`define DDR_DFI_STATUS_IF_EVENT_1_CFG_RANGE 31:0
`define DDR_DFI_STATUS_IF_EVENT_1_CFG_WIDTH 32
`define DDR_DFI_STATUS_IF_EVENT_1_CFG_ADR 32'h00000018
`define DDR_DFI_STATUS_IF_EVENT_1_CFG_POR 32'h00000000
`define DDR_DFI_STATUS_IF_EVENT_1_CFG_MSK 32'h800FFFFF

// Word Address 0x0000001C : DDR_DFI_CTRLUPD_IF_CFG (RW)
`define DDR_DFI_CTRLUPD_IF_CFG_SW_ACK_OVR_FIELD 2
`define DDR_DFI_CTRLUPD_IF_CFG_SW_ACK_OVR_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_CFG_SW_ACK_VAL_FIELD 3
`define DDR_DFI_CTRLUPD_IF_CFG_SW_ACK_VAL_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_CFG_SW_EVENT_0_OVR_FIELD 4
`define DDR_DFI_CTRLUPD_IF_CFG_SW_EVENT_0_OVR_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_CFG_SW_EVENT_0_VAL_FIELD 5
`define DDR_DFI_CTRLUPD_IF_CFG_SW_EVENT_0_VAL_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_CFG_SW_EVENT_1_OVR_FIELD 6
`define DDR_DFI_CTRLUPD_IF_CFG_SW_EVENT_1_OVR_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_CFG_SW_EVENT_1_VAL_FIELD 7
`define DDR_DFI_CTRLUPD_IF_CFG_SW_EVENT_1_VAL_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_CFG_SW_REQ_OVR_FIELD 0
`define DDR_DFI_CTRLUPD_IF_CFG_SW_REQ_OVR_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_CFG_SW_REQ_VAL_FIELD 1
`define DDR_DFI_CTRLUPD_IF_CFG_SW_REQ_VAL_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_CFG_RANGE 7:0
`define DDR_DFI_CTRLUPD_IF_CFG_WIDTH 8
`define DDR_DFI_CTRLUPD_IF_CFG_ADR 32'h0000001C
`define DDR_DFI_CTRLUPD_IF_CFG_POR 32'h00000000
`define DDR_DFI_CTRLUPD_IF_CFG_MSK 32'h000000FF

// Word Address 0x00000020 : DDR_DFI_CTRLUPD_IF_STA (R)
`define DDR_DFI_CTRLUPD_IF_STA_ACK_FIELD 1
`define DDR_DFI_CTRLUPD_IF_STA_ACK_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_STA_REQ_FIELD 0
`define DDR_DFI_CTRLUPD_IF_STA_REQ_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_STA_RANGE 1:0
`define DDR_DFI_CTRLUPD_IF_STA_WIDTH 2
`define DDR_DFI_CTRLUPD_IF_STA_ADR 32'h00000020
`define DDR_DFI_CTRLUPD_IF_STA_POR 32'h00000000
`define DDR_DFI_CTRLUPD_IF_STA_MSK 32'h00000003

// Word Address 0x00000024 : DDR_DFI_CTRLUPD_IF_EVENT_0_CFG (RW)
`define DDR_DFI_CTRLUPD_IF_EVENT_0_CFG_SW_EVENT_CNT_FIELD 19:0
`define DDR_DFI_CTRLUPD_IF_EVENT_0_CFG_SW_EVENT_CNT_FIELD_WIDTH 20
`define DDR_DFI_CTRLUPD_IF_EVENT_0_CFG_SW_EVENT_CNT_SEL_FIELD 31
`define DDR_DFI_CTRLUPD_IF_EVENT_0_CFG_SW_EVENT_CNT_SEL_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_EVENT_0_CFG_RANGE 31:0
`define DDR_DFI_CTRLUPD_IF_EVENT_0_CFG_WIDTH 32
`define DDR_DFI_CTRLUPD_IF_EVENT_0_CFG_ADR 32'h00000024
`define DDR_DFI_CTRLUPD_IF_EVENT_0_CFG_POR 32'h00000000
`define DDR_DFI_CTRLUPD_IF_EVENT_0_CFG_MSK 32'h800FFFFF

// Word Address 0x00000028 : DDR_DFI_CTRLUPD_IF_EVENT_1_CFG (RW)
`define DDR_DFI_CTRLUPD_IF_EVENT_1_CFG_SW_EVENT_CNT_FIELD 19:0
`define DDR_DFI_CTRLUPD_IF_EVENT_1_CFG_SW_EVENT_CNT_FIELD_WIDTH 20
`define DDR_DFI_CTRLUPD_IF_EVENT_1_CFG_SW_EVENT_CNT_SEL_FIELD 31
`define DDR_DFI_CTRLUPD_IF_EVENT_1_CFG_SW_EVENT_CNT_SEL_FIELD_WIDTH 1
`define DDR_DFI_CTRLUPD_IF_EVENT_1_CFG_RANGE 31:0
`define DDR_DFI_CTRLUPD_IF_EVENT_1_CFG_WIDTH 32
`define DDR_DFI_CTRLUPD_IF_EVENT_1_CFG_ADR 32'h00000028
`define DDR_DFI_CTRLUPD_IF_EVENT_1_CFG_POR 32'h00000000
`define DDR_DFI_CTRLUPD_IF_EVENT_1_CFG_MSK 32'h800FFFFF

// Word Address 0x0000002C : DDR_DFI_LP_CTRL_IF_CFG (RW)
`define DDR_DFI_LP_CTRL_IF_CFG_SW_ACK_OVR_FIELD 2
`define DDR_DFI_LP_CTRL_IF_CFG_SW_ACK_OVR_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_CFG_SW_ACK_VAL_FIELD 3
`define DDR_DFI_LP_CTRL_IF_CFG_SW_ACK_VAL_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_CFG_SW_EVENT_0_OVR_FIELD 4
`define DDR_DFI_LP_CTRL_IF_CFG_SW_EVENT_0_OVR_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_CFG_SW_EVENT_0_VAL_FIELD 5
`define DDR_DFI_LP_CTRL_IF_CFG_SW_EVENT_0_VAL_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_CFG_SW_EVENT_1_OVR_FIELD 6
`define DDR_DFI_LP_CTRL_IF_CFG_SW_EVENT_1_OVR_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_CFG_SW_EVENT_1_VAL_FIELD 7
`define DDR_DFI_LP_CTRL_IF_CFG_SW_EVENT_1_VAL_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_CFG_SW_REQ_OVR_FIELD 0
`define DDR_DFI_LP_CTRL_IF_CFG_SW_REQ_OVR_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_CFG_SW_REQ_VAL_FIELD 1
`define DDR_DFI_LP_CTRL_IF_CFG_SW_REQ_VAL_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_CFG_RANGE 7:0
`define DDR_DFI_LP_CTRL_IF_CFG_WIDTH 8
`define DDR_DFI_LP_CTRL_IF_CFG_ADR 32'h0000002C
`define DDR_DFI_LP_CTRL_IF_CFG_POR 32'h00000000
`define DDR_DFI_LP_CTRL_IF_CFG_MSK 32'h000000FF

// Word Address 0x00000030 : DDR_DFI_LP_CTRL_IF_STA (R)
`define DDR_DFI_LP_CTRL_IF_STA_ACK_FIELD 1
`define DDR_DFI_LP_CTRL_IF_STA_ACK_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_STA_REQ_FIELD 0
`define DDR_DFI_LP_CTRL_IF_STA_REQ_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_STA_WAKEUP_FIELD 9:4
`define DDR_DFI_LP_CTRL_IF_STA_WAKEUP_FIELD_WIDTH 6
`define DDR_DFI_LP_CTRL_IF_STA_RANGE 9:0
`define DDR_DFI_LP_CTRL_IF_STA_WIDTH 10
`define DDR_DFI_LP_CTRL_IF_STA_ADR 32'h00000030
`define DDR_DFI_LP_CTRL_IF_STA_POR 32'h00000000
`define DDR_DFI_LP_CTRL_IF_STA_MSK 32'h000003F3

// Word Address 0x00000034 : DDR_DFI_LP_CTRL_IF_EVENT_0_CFG (RW)
`define DDR_DFI_LP_CTRL_IF_EVENT_0_CFG_SW_EVENT_CNT_FIELD 19:0
`define DDR_DFI_LP_CTRL_IF_EVENT_0_CFG_SW_EVENT_CNT_FIELD_WIDTH 20
`define DDR_DFI_LP_CTRL_IF_EVENT_0_CFG_SW_EVENT_CNT_SEL_FIELD 31
`define DDR_DFI_LP_CTRL_IF_EVENT_0_CFG_SW_EVENT_CNT_SEL_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_EVENT_0_CFG_RANGE 31:0
`define DDR_DFI_LP_CTRL_IF_EVENT_0_CFG_WIDTH 32
`define DDR_DFI_LP_CTRL_IF_EVENT_0_CFG_ADR 32'h00000034
`define DDR_DFI_LP_CTRL_IF_EVENT_0_CFG_POR 32'h00000000
`define DDR_DFI_LP_CTRL_IF_EVENT_0_CFG_MSK 32'h800FFFFF

// Word Address 0x00000038 : DDR_DFI_LP_CTRL_IF_EVENT_1_CFG (RW)
`define DDR_DFI_LP_CTRL_IF_EVENT_1_CFG_SW_EVENT_CNT_FIELD 19:0
`define DDR_DFI_LP_CTRL_IF_EVENT_1_CFG_SW_EVENT_CNT_FIELD_WIDTH 20
`define DDR_DFI_LP_CTRL_IF_EVENT_1_CFG_SW_EVENT_CNT_SEL_FIELD 31
`define DDR_DFI_LP_CTRL_IF_EVENT_1_CFG_SW_EVENT_CNT_SEL_FIELD_WIDTH 1
`define DDR_DFI_LP_CTRL_IF_EVENT_1_CFG_RANGE 31:0
`define DDR_DFI_LP_CTRL_IF_EVENT_1_CFG_WIDTH 32
`define DDR_DFI_LP_CTRL_IF_EVENT_1_CFG_ADR 32'h00000038
`define DDR_DFI_LP_CTRL_IF_EVENT_1_CFG_POR 32'h00000000
`define DDR_DFI_LP_CTRL_IF_EVENT_1_CFG_MSK 32'h800FFFFF

// Word Address 0x0000003C : DDR_DFI_LP_DATA_IF_CFG (RW)
`define DDR_DFI_LP_DATA_IF_CFG_SW_ACK_OVR_FIELD 2
`define DDR_DFI_LP_DATA_IF_CFG_SW_ACK_OVR_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_CFG_SW_ACK_VAL_FIELD 3
`define DDR_DFI_LP_DATA_IF_CFG_SW_ACK_VAL_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_CFG_SW_EVENT_0_OVR_FIELD 4
`define DDR_DFI_LP_DATA_IF_CFG_SW_EVENT_0_OVR_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_CFG_SW_EVENT_0_VAL_FIELD 5
`define DDR_DFI_LP_DATA_IF_CFG_SW_EVENT_0_VAL_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_CFG_SW_EVENT_1_OVR_FIELD 6
`define DDR_DFI_LP_DATA_IF_CFG_SW_EVENT_1_OVR_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_CFG_SW_EVENT_1_VAL_FIELD 7
`define DDR_DFI_LP_DATA_IF_CFG_SW_EVENT_1_VAL_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_CFG_SW_REQ_OVR_FIELD 0
`define DDR_DFI_LP_DATA_IF_CFG_SW_REQ_OVR_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_CFG_SW_REQ_VAL_FIELD 1
`define DDR_DFI_LP_DATA_IF_CFG_SW_REQ_VAL_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_CFG_RANGE 7:0
`define DDR_DFI_LP_DATA_IF_CFG_WIDTH 8
`define DDR_DFI_LP_DATA_IF_CFG_ADR 32'h0000003C
`define DDR_DFI_LP_DATA_IF_CFG_POR 32'h00000000
`define DDR_DFI_LP_DATA_IF_CFG_MSK 32'h000000FF

// Word Address 0x00000040 : DDR_DFI_LP_DATA_IF_STA (R)
`define DDR_DFI_LP_DATA_IF_STA_ACK_FIELD 1
`define DDR_DFI_LP_DATA_IF_STA_ACK_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_STA_REQ_FIELD 0
`define DDR_DFI_LP_DATA_IF_STA_REQ_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_STA_WAKEUP_FIELD 9:4
`define DDR_DFI_LP_DATA_IF_STA_WAKEUP_FIELD_WIDTH 6
`define DDR_DFI_LP_DATA_IF_STA_RANGE 9:0
`define DDR_DFI_LP_DATA_IF_STA_WIDTH 10
`define DDR_DFI_LP_DATA_IF_STA_ADR 32'h00000040
`define DDR_DFI_LP_DATA_IF_STA_POR 32'h00000000
`define DDR_DFI_LP_DATA_IF_STA_MSK 32'h000003F3

// Word Address 0x00000044 : DDR_DFI_LP_DATA_IF_EVENT_0_CFG (RW)
`define DDR_DFI_LP_DATA_IF_EVENT_0_CFG_SW_EVENT_CNT_FIELD 19:0
`define DDR_DFI_LP_DATA_IF_EVENT_0_CFG_SW_EVENT_CNT_FIELD_WIDTH 20
`define DDR_DFI_LP_DATA_IF_EVENT_0_CFG_SW_EVENT_CNT_SEL_FIELD 31
`define DDR_DFI_LP_DATA_IF_EVENT_0_CFG_SW_EVENT_CNT_SEL_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_EVENT_0_CFG_RANGE 31:0
`define DDR_DFI_LP_DATA_IF_EVENT_0_CFG_WIDTH 32
`define DDR_DFI_LP_DATA_IF_EVENT_0_CFG_ADR 32'h00000044
`define DDR_DFI_LP_DATA_IF_EVENT_0_CFG_POR 32'h00000000
`define DDR_DFI_LP_DATA_IF_EVENT_0_CFG_MSK 32'h800FFFFF

// Word Address 0x00000048 : DDR_DFI_LP_DATA_IF_EVENT_1_CFG (RW)
`define DDR_DFI_LP_DATA_IF_EVENT_1_CFG_SW_EVENT_CNT_FIELD 19:0
`define DDR_DFI_LP_DATA_IF_EVENT_1_CFG_SW_EVENT_CNT_FIELD_WIDTH 20
`define DDR_DFI_LP_DATA_IF_EVENT_1_CFG_SW_EVENT_CNT_SEL_FIELD 31
`define DDR_DFI_LP_DATA_IF_EVENT_1_CFG_SW_EVENT_CNT_SEL_FIELD_WIDTH 1
`define DDR_DFI_LP_DATA_IF_EVENT_1_CFG_RANGE 31:0
`define DDR_DFI_LP_DATA_IF_EVENT_1_CFG_WIDTH 32
`define DDR_DFI_LP_DATA_IF_EVENT_1_CFG_ADR 32'h00000048
`define DDR_DFI_LP_DATA_IF_EVENT_1_CFG_POR 32'h00000000
`define DDR_DFI_LP_DATA_IF_EVENT_1_CFG_MSK 32'h800FFFFF

// Word Address 0x0000004C : DDR_DFI_PHYUPD_IF_CFG (RW)
`define DDR_DFI_PHYUPD_IF_CFG_SW_ACK_OVR_FIELD 2
`define DDR_DFI_PHYUPD_IF_CFG_SW_ACK_OVR_FIELD_WIDTH 1
`define DDR_DFI_PHYUPD_IF_CFG_SW_ACK_VAL_FIELD 3
`define DDR_DFI_PHYUPD_IF_CFG_SW_ACK_VAL_FIELD_WIDTH 1
`define DDR_DFI_PHYUPD_IF_CFG_SW_EVENT_OVR_FIELD 4
`define DDR_DFI_PHYUPD_IF_CFG_SW_EVENT_OVR_FIELD_WIDTH 1
`define DDR_DFI_PHYUPD_IF_CFG_SW_EVENT_VAL_FIELD 5
`define DDR_DFI_PHYUPD_IF_CFG_SW_EVENT_VAL_FIELD_WIDTH 1
`define DDR_DFI_PHYUPD_IF_CFG_SW_REQ_OVR_FIELD 0
`define DDR_DFI_PHYUPD_IF_CFG_SW_REQ_OVR_FIELD_WIDTH 1
`define DDR_DFI_PHYUPD_IF_CFG_SW_REQ_VAL_FIELD 1
`define DDR_DFI_PHYUPD_IF_CFG_SW_REQ_VAL_FIELD_WIDTH 1
`define DDR_DFI_PHYUPD_IF_CFG_SW_TYPE_FIELD 9:8
`define DDR_DFI_PHYUPD_IF_CFG_SW_TYPE_FIELD_WIDTH 2
`define DDR_DFI_PHYUPD_IF_CFG_RANGE 9:0
`define DDR_DFI_PHYUPD_IF_CFG_WIDTH 10
`define DDR_DFI_PHYUPD_IF_CFG_ADR 32'h0000004C
`define DDR_DFI_PHYUPD_IF_CFG_POR 32'h00000000
`define DDR_DFI_PHYUPD_IF_CFG_MSK 32'h0000033F

// Word Address 0x00000050 : DDR_DFI_PHYUPD_IF_STA (R)
`define DDR_DFI_PHYUPD_IF_STA_ACK_FIELD 1
`define DDR_DFI_PHYUPD_IF_STA_ACK_FIELD_WIDTH 1
`define DDR_DFI_PHYUPD_IF_STA_EVENT_FIELD 2
`define DDR_DFI_PHYUPD_IF_STA_EVENT_FIELD_WIDTH 1
`define DDR_DFI_PHYUPD_IF_STA_REQ_FIELD 0
`define DDR_DFI_PHYUPD_IF_STA_REQ_FIELD_WIDTH 1
`define DDR_DFI_PHYUPD_IF_STA_RANGE 2:0
`define DDR_DFI_PHYUPD_IF_STA_WIDTH 3
`define DDR_DFI_PHYUPD_IF_STA_ADR 32'h00000050
`define DDR_DFI_PHYUPD_IF_STA_POR 32'h00000000
`define DDR_DFI_PHYUPD_IF_STA_MSK 32'h00000007

// Word Address 0x00000054 : DDR_DFI_PHYMSTR_IF_CFG (RW)
`define DDR_DFI_PHYMSTR_IF_CFG_SW_ACK_OVR_FIELD 2
`define DDR_DFI_PHYMSTR_IF_CFG_SW_ACK_OVR_FIELD_WIDTH 1
`define DDR_DFI_PHYMSTR_IF_CFG_SW_ACK_VAL_FIELD 3
`define DDR_DFI_PHYMSTR_IF_CFG_SW_ACK_VAL_FIELD_WIDTH 1
`define DDR_DFI_PHYMSTR_IF_CFG_SW_CS_STATE_FIELD 8:7
`define DDR_DFI_PHYMSTR_IF_CFG_SW_CS_STATE_FIELD_WIDTH 2
`define DDR_DFI_PHYMSTR_IF_CFG_SW_EVENT_OVR_FIELD 4
`define DDR_DFI_PHYMSTR_IF_CFG_SW_EVENT_OVR_FIELD_WIDTH 1
`define DDR_DFI_PHYMSTR_IF_CFG_SW_EVENT_VAL_FIELD 5
`define DDR_DFI_PHYMSTR_IF_CFG_SW_EVENT_VAL_FIELD_WIDTH 1
`define DDR_DFI_PHYMSTR_IF_CFG_SW_REQ_OVR_FIELD 0
`define DDR_DFI_PHYMSTR_IF_CFG_SW_REQ_OVR_FIELD_WIDTH 1
`define DDR_DFI_PHYMSTR_IF_CFG_SW_REQ_VAL_FIELD 1
`define DDR_DFI_PHYMSTR_IF_CFG_SW_REQ_VAL_FIELD_WIDTH 1
`define DDR_DFI_PHYMSTR_IF_CFG_SW_STATE_SEL_FIELD 6
`define DDR_DFI_PHYMSTR_IF_CFG_SW_STATE_SEL_FIELD_WIDTH 1
`define DDR_DFI_PHYMSTR_IF_CFG_SW_TYPE_FIELD 10:9
`define DDR_DFI_PHYMSTR_IF_CFG_SW_TYPE_FIELD_WIDTH 2
`define DDR_DFI_PHYMSTR_IF_CFG_RANGE 10:0
`define DDR_DFI_PHYMSTR_IF_CFG_WIDTH 11
`define DDR_DFI_PHYMSTR_IF_CFG_ADR 32'h00000054
`define DDR_DFI_PHYMSTR_IF_CFG_POR 32'h00000000
`define DDR_DFI_PHYMSTR_IF_CFG_MSK 32'h000007FF

// Word Address 0x00000058 : DDR_DFI_PHYMSTR_IF_STA (R)
`define DDR_DFI_PHYMSTR_IF_STA_ACK_FIELD 1
`define DDR_DFI_PHYMSTR_IF_STA_ACK_FIELD_WIDTH 1
`define DDR_DFI_PHYMSTR_IF_STA_EVENT_FIELD 2
`define DDR_DFI_PHYMSTR_IF_STA_EVENT_FIELD_WIDTH 1
`define DDR_DFI_PHYMSTR_IF_STA_REQ_FIELD 0
`define DDR_DFI_PHYMSTR_IF_STA_REQ_FIELD_WIDTH 1
`define DDR_DFI_PHYMSTR_IF_STA_RANGE 2:0
`define DDR_DFI_PHYMSTR_IF_STA_WIDTH 3
`define DDR_DFI_PHYMSTR_IF_STA_ADR 32'h00000058
`define DDR_DFI_PHYMSTR_IF_STA_POR 32'h00000000
`define DDR_DFI_PHYMSTR_IF_STA_MSK 32'h00000007

// Word Address 0x0000005C : DDR_DFI_DEBUG_CFG (RW)
`define DDR_DFI_DEBUG_CFG_DEBUG_BUS_SEL_FIELD 3:0
`define DDR_DFI_DEBUG_CFG_DEBUG_BUS_SEL_FIELD_WIDTH 4
`define DDR_DFI_DEBUG_CFG_RANGE 3:0
`define DDR_DFI_DEBUG_CFG_WIDTH 4
`define DDR_DFI_DEBUG_CFG_ADR 32'h0000005C
`define DDR_DFI_DEBUG_CFG_POR 32'h00000000
`define DDR_DFI_DEBUG_CFG_MSK 32'h0000000F
