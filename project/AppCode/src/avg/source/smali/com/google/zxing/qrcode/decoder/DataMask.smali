.class abstract Lcom/google/zxing/qrcode/decoder/DataMask;
.super Ljava/lang/Object;


# static fields
.field private static final DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataMask;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/DataMask;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>()V

    return-void
.end method

.method static forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method abstract isMasked(II)Z
.end method

.method final unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V
    .locals 4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, p2, :cond_0

    return-void

    :cond_0
    move v0, v1

    :goto_1
    if-lt v0, p2, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/qrcode/decoder/DataMask;->isMasked(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0, v2}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
