.class final Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;


# static fields
.field private static final HORIZONTAL_SEPARATION_PATTERN:[[I = null

.field private static final POSITION_ADJUSTMENT_PATTERN:[[I = null

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I = null

.field private static final POSITION_DETECTION_PATTERN:[[I = null

.field private static final TYPE_INFO_COORDINATES:[[I = null

.field private static final TYPE_INFO_MASK_PATTERN:I = 0x5412

.field private static final TYPE_INFO_POLY:I = 0x537

.field private static final VERSION_INFO_POLY:I = 0x1f25

.field private static final VERTICAL_SEPARATION_PATTERN:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x7

    new-array v0, v4, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v7

    new-array v1, v4, [I

    aput v5, v1, v7

    const/4 v2, 0x6

    aput v5, v1, v2

    aput-object v1, v0, v5

    new-array v1, v4, [I

    aput v5, v1, v7

    aput v5, v1, v6

    const/4 v2, 0x3

    aput v5, v1, v2

    aput v5, v1, v8

    const/4 v2, 0x6

    aput v5, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v4, [I

    aput v5, v2, v7

    aput v5, v2, v6

    const/4 v3, 0x3

    aput v5, v2, v3

    aput v5, v2, v8

    const/4 v3, 0x6

    aput v5, v2, v3

    aput-object v2, v0, v1

    new-array v1, v4, [I

    aput v5, v1, v7

    aput v5, v1, v6

    const/4 v2, 0x3

    aput v5, v1, v2

    aput v5, v1, v8

    const/4 v2, 0x6

    aput v5, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v4, [I

    aput v5, v2, v7

    const/4 v3, 0x6

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    new-array v0, v5, [[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    new-array v0, v4, [[I

    new-array v1, v5, [I

    aput-object v1, v0, v7

    new-array v1, v5, [I

    aput-object v1, v0, v5

    new-array v1, v5, [I

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v5, [I

    aput-object v2, v0, v1

    new-array v1, v5, [I

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v5, [I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [I

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    const/4 v0, 0x5

    new-array v0, v0, [[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v5, v1, v8

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v5, v1, v6

    aput v5, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v5, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    const/16 v0, 0x28

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v4, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v4, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v4, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v4, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v4, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v4, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v4, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v4, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v4, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v4, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v4, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v4, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v4, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v4, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v4, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v4, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v4, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v4, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    const/16 v0, 0xf

    new-array v0, v0, [[I

    new-array v1, v6, [I

    const/16 v2, 0x8

    aput v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v6, [I

    fill-array-data v1, :array_2c

    aput-object v1, v0, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_2d

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_2f

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_32

    aput-object v1, v0, v4

    const/16 v1, 0x8

    new-array v2, v6, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [I

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_8
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_9
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_b
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_d
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_f
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_10
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_11
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_12
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_13
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_14
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_15
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_16
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_17
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_18
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_19
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1b
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1d
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1f
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_20
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_21
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_22
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_23
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_24
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_25
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_26
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
    .end array-data

    :array_27
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
    .end array-data

    :array_28
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
    .end array-data

    :array_29
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
    .end array-data

    :array_2b
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
    .end array-data

    :array_2c
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2d
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2f
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_30
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_31
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_32
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_33
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_34
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_35
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_37
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_38
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p4, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedBasicPatterns(ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedVersionInfo(ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p0, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method static calculateBCHCode(II)I
    .locals 3

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    shl-int v0, p0, v0

    :goto_0
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v2

    if-ge v2, v1, :cond_0

    return v0

    :cond_0
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v2

    sub-int/2addr v2, v1

    shl-int v2, p1, v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method static clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    return-void
.end method

.method static embedBasicPatterns(ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    return-void
.end method

.method static embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 11

    const/4 v7, -0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v7

    move v3, v1

    :goto_0
    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    if-eq v3, v0, :cond_8

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not all bits consumed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v4, 0x6

    if-ne v2, v4, :cond_9

    add-int/lit8 v2, v2, -0x1

    move v4, v0

    move v5, v2

    move v0, v3

    :goto_1
    if-ltz v4, :cond_1

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    if-lt v4, v2, :cond_2

    :cond_1
    neg-int v6, v6

    add-int v2, v4, v6

    add-int/lit8 v3, v5, -0x2

    move v10, v2

    move v2, v3

    move v3, v0

    move v0, v10

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_2
    const/4 v2, 0x2

    if-lt v3, v2, :cond_3

    add-int v2, v4, v6

    move v4, v2

    goto :goto_1

    :cond_3
    sub-int v8, v5, v3

    invoke-virtual {p2, v8, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    add-int/lit8 v0, v0, 0x1

    move v10, v2

    move v2, v0

    move v0, v10

    :goto_3
    if-eq p1, v7, :cond_4

    invoke-static {p1, v8, v4}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->getDataMaskBit(III)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v0, :cond_7

    move v0, v1

    :cond_4
    :goto_4
    invoke-virtual {p2, v8, v4, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    move v0, v2

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_6
    move v2, v0

    move v0, v1

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    return-void

    :cond_9
    move v4, v0

    move v5, v2

    move v0, v3

    goto :goto_1
.end method

.method private static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x0

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    aget-object v0, v0, v1

    array-length v0, v0

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bad horizontal separation pattern"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_2

    return-void

    :cond_2
    add-int v2, p0, v0

    invoke-virtual {p2, v2, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_3
    add-int v2, p0, v0

    sget-object v3, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    aget-object v3, v3, v1

    aget v3, v3, v0

    invoke-virtual {p2, v2, p1, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x5

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v0, v0, v1

    array-length v0, v0

    if-ne v0, v6, :cond_0

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    array-length v0, v0

    if-eq v0, v6, :cond_1

    :cond_0
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bad position adjustment"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    :goto_0
    if-lt v2, v6, :cond_2

    return-void

    :cond_2
    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    add-int v3, p0, v0

    add-int v4, p1, v2

    invoke-virtual {p2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_4
    add-int v3, p0, v0

    add-int v4, p1, v2

    sget-object v5, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v5, v5, v2

    aget v5, v5, v0

    invoke-virtual {p2, v3, v4, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x7

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v0, v0, v1

    array-length v0, v0

    if-ne v0, v6, :cond_0

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    array-length v0, v0

    if-eq v0, v6, :cond_1

    :cond_0
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bad position detection pattern"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    :goto_0
    if-lt v2, v6, :cond_2

    return-void

    :cond_2
    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    add-int v3, p0, v0

    add-int v4, p1, v2

    invoke-virtual {p2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_4
    add-int v3, p0, v0

    add-int v4, p1, v2

    sget-object v5, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v5, v5, v2

    aget v5, v5, v0

    invoke-virtual {p2, v3, v4, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    invoke-static {v3, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    invoke-static {v3, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    array-length v0, v0

    invoke-static {v0, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v0, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method private static embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    const/4 v3, 0x6

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isValidValue(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_2
    invoke-virtual {p0, v3, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isValidValue(I)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p0, v3, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x8

    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-static {p0, p1, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    sget-object v5, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {p2, v4, v5, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    if-ge v0, v7, :cond_1

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4, v7, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v5, v0, -0x8

    add-int/2addr v4, v5

    invoke-virtual {p2, v7, v4, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_1
.end method

.method private static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v1, 0x0

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    aget-object v0, v0, v1

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    array-length v0, v0

    if-eq v0, v4, :cond_1

    :cond_0
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bad vertical separation pattern"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_2

    return-void

    :cond_2
    add-int v2, p1, v0

    invoke-virtual {p2, p0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_3
    add-int v2, p1, v0

    sget-object v3, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    invoke-virtual {p2, p0, v2, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static findMSBSet(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-nez p0, :cond_0

    return v0

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isEmpty(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidValue(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method static makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V
    .locals 3

    const/16 v2, 0xf

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid mask pattern"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p1

    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v1, 0x537

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p2, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/16 v1, 0x5412

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/BitArray;->xor(Lcom/google/zxing/common/BitArray;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    if-eq v0, v2, :cond_1

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "should not happen but we got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static makeVersionInfoBits(ILcom/google/zxing/common/BitArray;)V
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v0, 0x1f25

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "should not happen but we got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, -0x1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, p0, -0x1

    sget-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v3, v2, v0

    sget-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v0, v2, v0

    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    aget v5, v3, v2

    aget v6, v3, v0

    if-eq v6, v8, :cond_3

    if-eq v5, v8, :cond_3

    invoke-virtual {p1, v6, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v5, v5, -0x2

    invoke-static {v6, v5, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static maybeEmbedVersionInfo(ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x7

    if-ge p0, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-static {p0, v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeVersionInfoBits(ILcom/google/zxing/common/BitArray;)V

    const/16 v0, 0x11

    move v3, v1

    :goto_0
    const/4 v2, 0x6

    if-ge v3, v2, :cond_0

    move v2, v0

    move v0, v1

    :goto_1
    const/4 v5, 0x3

    if-lt v0, v5, :cond_2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0xb

    add-int/2addr v6, v0

    invoke-virtual {p1, v3, v6, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0xb

    add-int/2addr v6, v0

    invoke-virtual {p1, v6, v3, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
