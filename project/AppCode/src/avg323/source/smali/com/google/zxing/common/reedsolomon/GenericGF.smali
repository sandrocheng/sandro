.class public final Lcom/google/zxing/common/reedsolomon/GenericGF;
.super Ljava/lang/Object;


# static fields
.field public static final AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field private static final INITIALIZATION_THRESHOLD:I

.field public static final MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;


# instance fields
.field private expTable:[I

.field private initialized:Z

.field private logTable:[I

.field private one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

.field private final primitive:I

.field private final size:I

.field private zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x100

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x1069

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x409

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x43

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x13

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x11d

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    iput p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->primitive:I

    iput p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    if-gtz p2, :cond_0

    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialize()V

    :cond_0
    return-void
.end method

.method static addOrSubtract(II)I
    .locals 1

    xor-int v0, p0, p1

    return v0
.end method

.method private checkInit()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialize()V

    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    move v0, v1

    move v2, v3

    :goto_0
    iget v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_2

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-array v2, v3, [I

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-array v2, v3, [I

    aput v3, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iput-boolean v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    return-void

    :cond_0
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aput v2, v4, v0

    shl-int/lit8 v2, v2, 0x1

    iget v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    if-lt v2, v4, :cond_1

    iget v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->primitive:I

    xor-int/2addr v2, v4

    iget v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v4, v4, v0

    aput v0, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    :goto_0
    return-object v0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p2, v1, v0

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    goto :goto_0
.end method

.method exp(I)I
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v0, v0, p1

    return v0
.end method

.method getOne()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    return v0
.end method

.method getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    return-object v0
.end method

.method inverse(I)I
    .locals 3

    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    iget v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method log(I)I
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v0, v0, p1

    return v0
.end method

.method multiply(II)I
    .locals 4

    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    if-lt p2, v0, :cond_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    :cond_3
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    iget v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    rem-int v2, v0, v2

    iget v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    aget v0, v1, v0

    goto :goto_0
.end method
