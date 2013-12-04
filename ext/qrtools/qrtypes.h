/////////////////////////////////////////////////////////////////////////
//
// qrtypes.h --a part of libdecodeqr
//
// Copyright(C) 2007 NISHI Takao <zophos@koka-in.org>
//                   JMA  (Japan Medical Association)
//                   NaCl (Network Applied Communication Laboratory Ltd.)
//
// This is free software with ABSOLUTELY NO WARRANTY.
// You can redistribute and/or modify it under the terms of LGPL.
//
// $Id: qrtypes.h 36 2007-02-21 23:22:03Z zophos $
//
#ifndef __QR_TYPES__
#define __QR_TYPES__

#define QR_LEVEL_M 0
#define QR_LEVEL_L 1
#define QR_LEVEL_H 2
#define QR_LEVEL_Q 3

#define QR_MODE_NUMBER   QR_MODE_NUM
#define QR_MODE_ALPHABET QR_MODE_AN
#define QR_MODE_JOINT    QR_MODE_AN
#define QR_MODE_8BIT     QR_MODE_8
#define QR_MODE_FNC1_1   QR_MODE_FNC1FIRST
// #define QR_MODE_ECI 7
#define QR_MODE_KANJIS   QR_MODE_KANJI
#define QR_MODE_FNC1_2   QR_MODE_FNC1SECOND

typedef void * QrDecoderHandle;
typedef struct{
    int model;
    int version;
    int level;
    //int mode;     //not supported yet
    //int eci_mode; //not supported yet
    int charactor_size;
    int byte_size;
} QrCodeHeader;

#endif
