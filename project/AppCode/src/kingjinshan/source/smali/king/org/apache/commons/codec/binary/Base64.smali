.class public Lking/org/apache/commons/codec/binary/Base64;
.super Lking/org/apache/commons/codec/binary/BaseNCodec;
.source "Base64.java"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x6

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x4

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x3

.field static final CHUNK_SEPARATOR:[B = null

.field private static final DECODE_TABLE:[B = null

.field private static final MASK_6BITS:I = 0x3f

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private bitWorkArea:I

.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lking/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 80
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lking/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 93
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lking/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 112
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lking/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    return-void

    .line 71
    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 80
    nop

    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 93
    :array_2
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 112
    :array_3
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0x3et
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0x3ft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/binary/Base64;-><init>(I)V

    .line 177
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 217
    sget-object v0, Lking/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lking/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    .line 218
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lking/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 244
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 272
    const/4 v0, 0x3

    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v0, v3, p1, v1}, Lking/org/apache/commons/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 140
    sget-object v0, Lking/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    iput-object v0, p0, Lking/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    .line 277
    if-eqz p2, :cond_3

    .line 278
    invoke-virtual {p0, p2}, Lking/org/apache/commons/codec/binary/Base64;->containsAlphabetOrPad([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-static {p2}, Lking/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 282
    :cond_1
    if-lez p1, :cond_2

    .line 283
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 284
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lking/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    .line 285
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :goto_1
    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lking/org/apache/commons/codec/binary/Base64;->decodeSize:I

    .line 295
    if-eqz p3, :cond_4

    sget-object v0, Lking/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v0, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    .line 296
    return-void

    .line 287
    :cond_2
    iput v3, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 288
    iput-object v4, p0, Lking/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 291
    :cond_3
    iput v3, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 292
    iput-object v4, p0, Lking/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 295
    :cond_4
    sget-object v0, Lking/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter

    .prologue
    .line 195
    const/16 v0, 0x4c

    sget-object v1, Lking/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lking/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 196
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 670
    new-instance v0, Lking/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lking/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lking/org/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1
    .parameter

    .prologue
    .line 681
    new-instance v0, Lking/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lking/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lking/org/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3
    .parameter

    .prologue
    .line 696
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lking/org/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .parameter

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lking/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 623
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lking/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 643
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 658
    :goto_0
    return-object v0

    .line 649
    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lking/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p2}, Lking/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    .line 650
    :goto_1
    invoke-virtual {v0, p0}, Lking/org/apache/commons/codec/binary/Base64;->getEncodedLength([B)J

    move-result-wide v1

    .line 651
    int-to-long v3, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input array too big, the output array would be bigger ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") than the specified maximum size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_2
    new-instance v0, Lking/org/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    sget-object v2, Lking/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v1, v2, p2}, Lking/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    goto :goto_1

    .line 658
    :cond_3
    invoke-virtual {v0, p0}, Lking/org/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .parameter

    .prologue
    .line 590
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 553
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2
    .parameter

    .prologue
    .line 566
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lking/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 579
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lking/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2
    .parameter

    .prologue
    .line 710
    if-nez p0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_0
    invoke-static {p0}, Lking/org/apache/commons/codec/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lking/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 1
    .parameter

    .prologue
    .line 508
    invoke-static {p0}, Lking/org/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64(B)Z
    .locals 2
    .parameter

    .prologue
    .line 479
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    sget-object v0, Lking/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lking/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBase64(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 493
    invoke-static {p0}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64([B)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 522
    move v0, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 523
    aget-byte v1, p0, v0

    invoke-static {v1}, Lking/org/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v1

    if-nez v1, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lking/org/apache/commons/codec/binary/Base64;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 527
    :goto_1
    return v0

    .line 522
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 6
    .parameter

    .prologue
    .line 724
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 726
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    .line 727
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 729
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    rem-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v3, v0, 0x8

    if-ne v2, v3, :cond_0

    move-object v0, v1

    .line 744
    :goto_0
    return-object v0

    .line 733
    :cond_0
    const/4 v2, 0x0

    .line 734
    array-length v3, v1

    .line 737
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 738
    const/4 v2, 0x1

    .line 739
    add-int/lit8 v3, v3, -0x1

    move v5, v3

    move v3, v2

    move v2, v5

    .line 741
    :goto_1
    div-int/lit8 v4, v0, 0x8

    sub-int/2addr v4, v2

    .line 742
    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 743
    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_1
.end method


# virtual methods
.method decode([BII)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 417
    iget-boolean v0, p0, Lking/org/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    if-gez p3, :cond_2

    .line 421
    iput-boolean v5, p0, Lking/org/apache/commons/codec/binary/Base64;->eof:Z

    .line 423
    :cond_2
    const/4 v0, 0x0

    move v1, p2

    :goto_1
    if-ge v0, p3, :cond_3

    .line 424
    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v2}, Lking/org/apache/commons/codec/binary/Base64;->ensureBufferSize(I)V

    .line 425
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    .line 426
    const/16 v3, 0x3d

    if-ne v1, v3, :cond_4

    .line 428
    iput-boolean v5, p0, Lking/org/apache/commons/codec/binary/Base64;->eof:Z

    .line 449
    :cond_3
    iget-boolean v0, p0, Lking/org/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->modulus:I

    if-eqz v0, :cond_0

    .line 450
    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v0}, Lking/org/apache/commons/codec/binary/Base64;->ensureBufferSize(I)V

    .line 454
    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->modulus:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 458
    :pswitch_0
    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    .line 459
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v1, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 431
    :cond_4
    if-ltz v1, :cond_5

    sget-object v3, Lking/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 432
    sget-object v3, Lking/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v1, v3, v1

    .line 433
    if-ltz v1, :cond_5

    .line 434
    iget v3, p0, Lking/org/apache/commons/codec/binary/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lking/org/apache/commons/codec/binary/Base64;->modulus:I

    .line 435
    iget v3, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    iput v1, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    .line 436
    iget v1, p0, Lking/org/apache/commons/codec/binary/Base64;->modulus:I

    if-nez v1, :cond_5

    .line 437
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget v4, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 438
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget v4, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 439
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget v4, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 423
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto/16 :goto_1

    .line 462
    :pswitch_1
    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    .line 463
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v1, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 464
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v1, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method encode([BII)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3d

    const/4 v6, 0x0

    .line 328
    iget-boolean v0, p0, Lking/org/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    if-gez p3, :cond_4

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lking/org/apache/commons/codec/binary/Base64;->eof:Z

    .line 335
    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->modulus:I

    if-nez v0, :cond_2

    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-eqz v0, :cond_0

    .line 338
    :cond_2
    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v0}, Lking/org/apache/commons/codec/binary/Base64;->ensureBufferSize(I)V

    .line 339
    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    .line 340
    iget v1, p0, Lking/org/apache/commons/codec/binary/Base64;->modulus:I

    packed-switch v1, :pswitch_data_0

    .line 361
    :cond_3
    :goto_1
    iget v1, p0, Lking/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    sub-int v0, v2, v0

    add-int/2addr v0, v1

    iput v0, p0, Lking/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 363
    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v0, :cond_0

    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    if-lez v0, :cond_0

    .line 364
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v3, p0, Lking/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v3, v3

    invoke-static {v0, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iget v0, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    goto :goto_0

    .line 342
    :pswitch_0
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v3, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v4, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 343
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v3, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v4, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 345
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v2, Lking/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v1, v2, :cond_3

    .line 346
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v5, v1, v2

    .line 347
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v5, v1, v2

    goto :goto_1

    .line 352
    :pswitch_1
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v3, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v4, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v4, 0xa

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 353
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v3, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v4, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 354
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v3, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v4, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 356
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v2, Lking/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v1, v2, :cond_3

    .line 357
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v5, v1, v2

    goto/16 :goto_1

    :cond_4
    move v0, v6

    move v1, p2

    .line 368
    :goto_2
    if-ge v0, p3, :cond_0

    .line 369
    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v2}, Lking/org/apache/commons/codec/binary/Base64;->ensureBufferSize(I)V

    .line 370
    iget v2, p0, Lking/org/apache/commons/codec/binary/Base64;->modulus:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    iput v2, p0, Lking/org/apache/commons/codec/binary/Base64;->modulus:I

    .line 371
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    .line 372
    if-gez v1, :cond_5

    .line 373
    add-int/lit16 v1, v1, 0x100

    .line 375
    :cond_5
    iget v3, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    iput v1, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    .line 376
    iget v1, p0, Lking/org/apache/commons/codec/binary/Base64;->modulus:I

    if-nez v1, :cond_6

    .line 377
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v5, v5, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 378
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v5, v5, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 379
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    shr-int/lit8 v5, v5, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 380
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v3, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p0, Lking/org/apache/commons/codec/binary/Base64;->bitWorkArea:I

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 381
    iget v1, p0, Lking/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lking/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 382
    iget v1, p0, Lking/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v1, :cond_6

    iget v1, p0, Lking/org/apache/commons/codec/binary/Base64;->lineLength:I

    iget v3, p0, Lking/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    if-gt v1, v3, :cond_6

    .line 383
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget-object v3, p0, Lking/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lking/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v5, v5

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget v1, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v3, p0, Lking/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v3, v3

    add-int/2addr v1, v3

    iput v1, p0, Lking/org/apache/commons/codec/binary/Base64;->pos:I

    .line 385
    iput v6, p0, Lking/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 368
    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto/16 :goto_2

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected isInAlphabet(B)Z
    .locals 2
    .parameter

    .prologue
    .line 756
    if-ltz p1, :cond_0

    iget-object v0, p0, Lking/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lking/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlSafe()Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v1, Lking/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
