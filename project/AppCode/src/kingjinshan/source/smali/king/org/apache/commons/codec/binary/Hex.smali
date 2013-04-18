.class public Lking/org/apache/commons/codec/binary/Hex;
.super Ljava/lang/Object;
.source "Hex.java"

# interfaces
.implements Lking/org/apache/commons/codec/BinaryDecoder;
.implements Lking/org/apache/commons/codec/BinaryEncoder;


# static fields
.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# instance fields
.field private final charsetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 50
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lking/org/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    .line 55
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lking/org/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    return-void

    .line 50
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data

    .line 55
    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const-string v0, "UTF-8"

    iput-object v0, p0, Lking/org/apache/commons/codec/binary/Hex;->charsetName:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lking/org/apache/commons/codec/binary/Hex;->charsetName:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public static decodeHex([C)[B
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 70
    array-length v0, p0

    .line 72
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Lking/org/apache/commons/codec/DecoderException;

    const-string v1, "Odd number of characters."

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    shr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    move v3, v2

    .line 79
    :goto_0
    if-ge v2, v0, :cond_1

    .line 80
    aget-char v4, p0, v2

    invoke-static {v4, v2}, Lking/org/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lking/org/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_1
    return-object v1
.end method

.method public static encodeHex([B)[C
    .locals 1
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    if-eqz p1, :cond_0

    sget-object v0, Lking/org/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    :goto_0
    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lking/org/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    goto :goto_0
.end method

.method protected static encodeHex([B[C)[C
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 132
    array-length v0, p0

    .line 133
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    move v3, v2

    .line 135
    :goto_0
    if-ge v3, v0, :cond_0

    .line 136
    add-int/lit8 v4, v2, 0x1

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v1, v2

    .line 137
    add-int/lit8 v2, v4, 0x1

    aget-byte v5, p0, v3

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v1, v4

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-object v1
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 152
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method protected static toDigit(CI)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 167
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 168
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 169
    new-instance v0, Lking/org/apache/commons/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hexadecimal character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 232
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 233
    :goto_0
    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    check-cast p1, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    new-instance v1, Lking/org/apache/commons/codec/DecoderException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decode([B)[B
    .locals 3
    .parameter

    .prologue
    .line 210
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lking/org/apache/commons/codec/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->decodeHex([C)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Lking/org/apache/commons/codec/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 280
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lking/org/apache/commons/codec/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 281
    :goto_0
    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v0

    return-object v0

    .line 280
    :cond_0
    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, p1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Lking/org/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lking/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 284
    :catch_1
    move-exception v0

    .line 285
    new-instance v1, Lking/org/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lking/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode([B)[B
    .locals 2
    .parameter

    .prologue
    .line 258
    invoke-static {p1}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lking/org/apache/commons/codec/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/Hex;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Hex;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
