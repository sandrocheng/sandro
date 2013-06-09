.class public final enum Lcom/google/zxing/DecodeHintType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

.field public static final enum CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

.field private static final synthetic ENUM$VALUES:[Lcom/google/zxing/DecodeHintType;

.field public static final enum NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

.field public static final enum OTHER:Lcom/google/zxing/DecodeHintType;

.field public static final enum POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

.field public static final enum PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

.field public static final enum TRY_HARDER:Lcom/google/zxing/DecodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->OTHER:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string v1, "PURE_BARCODE"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string v1, "POSSIBLE_FORMATS"

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string v1, "TRY_HARDER"

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string v1, "CHARACTER_SET"

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string v1, "ALLOWED_LENGTHS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string v1, "ASSUME_CODE_39_CHECK_DIGIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-string v1, "NEED_RESULT_POINT_CALLBACK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/zxing/DecodeHintType;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->OTHER:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/DecodeHintType;->ENUM$VALUES:[Lcom/google/zxing/DecodeHintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/DecodeHintType;
    .locals 1

    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/DecodeHintType;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/DecodeHintType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/zxing/DecodeHintType;->ENUM$VALUES:[Lcom/google/zxing/DecodeHintType;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/zxing/DecodeHintType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
