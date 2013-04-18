.class public Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;
.super Ljava/io/FilterOutputStream;
.source "BaseNCodecOutputStream.java"


# instance fields
.field private final baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

.field private final doEncode:Z

.field private final singleByte:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lking/org/apache/commons/codec/binary/BaseNCodec;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    .line 39
    iput-object p2, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    .line 40
    iput-boolean p3, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    .line 41
    return-void
.end method

.method private flush(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    invoke-virtual {v0}, Lking/org/apache/commons/codec/binary/BaseNCodec;->available()I

    move-result v0

    .line 104
    if-lez v0, :cond_0

    .line 105
    new-array v1, v0, [B

    .line 106
    iget-object v2, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    invoke-virtual {v2, v1, v3, v0}, Lking/org/apache/commons/codec/binary/BaseNCodec;->readResults([BII)I

    move-result v0

    .line 107
    if-lez v0, :cond_0

    .line 108
    iget-object v2, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    :cond_0
    if-eqz p1, :cond_1

    .line 112
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 114
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 136
    iget-boolean v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    invoke-virtual {v0, v1, v3, v2}, Lking/org/apache/commons/codec/binary/BaseNCodec;->encode([BII)V

    .line 141
    :goto_0
    invoke-virtual {p0}, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->flush()V

    .line 142
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 143
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    invoke-virtual {v0, v1, v3, v2}, Lking/org/apache/commons/codec/binary/BaseNCodec;->decode([BII)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->flush(Z)V

    .line 125
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 54
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->write([BII)V

    .line 55
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 79
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 81
    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_4

    .line 82
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 83
    :cond_4
    if-lez p3, :cond_5

    .line 84
    iget-boolean v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_6

    .line 85
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    invoke-virtual {v0, p1, p2, p3}, Lking/org/apache/commons/codec/binary/BaseNCodec;->encode([BII)V

    .line 89
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->flush(Z)V

    .line 91
    :cond_5
    return-void

    .line 87
    :cond_6
    iget-object v0, p0, Lking/org/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lking/org/apache/commons/codec/binary/BaseNCodec;

    invoke-virtual {v0, p1, p2, p3}, Lking/org/apache/commons/codec/binary/BaseNCodec;->decode([BII)V

    goto :goto_0
.end method
