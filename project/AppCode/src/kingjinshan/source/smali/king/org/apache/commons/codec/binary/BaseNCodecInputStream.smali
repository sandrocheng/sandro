.class public Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;
.super Ljava/io/FilterInputStream;
.source "BaseNCodecInputStream.java"


# instance fields
.field private final baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

.field private final doEncode:Z

.field private final singleByte:[B


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Lking/org/apache/commons/codec/binary/BaseNCodec;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    .line 39
    iput-boolean p3, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    .line 40
    iput-object p2, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    .line 41
    return-void
.end method


# virtual methods
.method public markSupported()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    invoke-virtual {p0, v0, v1, v2}, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->read([BII)I

    move-result v0

    .line 53
    :goto_0
    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    invoke-virtual {p0, v0, v1, v2}, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 56
    :cond_0
    if-lez v0, :cond_2

    .line 57
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    aget-byte v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 59
    :goto_1
    return v0

    .line 57
    :cond_1
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    aget-byte v0, v0, v1

    goto :goto_1

    .line 59
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public read([BII)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 85
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 87
    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_4

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 89
    :cond_4
    if-nez p3, :cond_6

    move v0, v3

    .line 121
    :cond_5
    return v0

    :cond_6
    move v0, v3

    .line 109
    :goto_0
    if-nez v0, :cond_5

    .line 110
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    invoke-virtual {v0}, Lking/org/apache/commons/codec/binary/BaseNCodec;->hasData()Z

    move-result v0

    if-nez v0, :cond_7

    .line 111
    iget-boolean v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x1000

    :goto_1
    new-array v0, v0, [B

    .line 112
    iget-object v1, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 113
    iget-boolean v2, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    if-eqz v2, :cond_9

    .line 114
    iget-object v2, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    invoke-virtual {v2, v0, v3, v1}, Lking/org/apache/commons/codec/binary/BaseNCodec;->encode([BII)V

    .line 119
    :cond_7
    :goto_2
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    invoke-virtual {v0, p1, p2, p3}, Lking/org/apache/commons/codec/binary/BaseNCodec;->readResults([BII)I

    move-result v0

    goto :goto_0

    .line 111
    :cond_8
    const/16 v0, 0x2000

    goto :goto_1

    .line 116
    :cond_9
    iget-object v2, p0, Lking/org/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    invoke-virtual {v2, v0, v3, v1}, Lking/org/apache/commons/codec/binary/BaseNCodec;->decode([BII)V

    goto :goto_2
.end method
