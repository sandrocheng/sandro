.class public final enum Lcom/google/zxing/EncodeHintType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

.field private static final synthetic ENUM$VALUES:[Lcom/google/zxing/EncodeHintType;

.field public static final enum ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "ERROR_CORRECTION"

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "CHARACTER_SET"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/EncodeHintType;

    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/zxing/EncodeHintType;->ENUM$VALUES:[Lcom/google/zxing/EncodeHintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/EncodeHintType;
    .locals 1

    const-class v0, Lcom/google/zxing/EncodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/EncodeHintType;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/EncodeHintType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/zxing/EncodeHintType;->ENUM$VALUES:[Lcom/google/zxing/EncodeHintType;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/zxing/EncodeHintType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
