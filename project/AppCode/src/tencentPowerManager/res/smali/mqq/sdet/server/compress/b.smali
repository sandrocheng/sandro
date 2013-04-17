.class public final Lmqq/sdet/server/compress/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lmqq/sdet/server/compress/CompressInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 2
    .parameter

    .prologue
    .line 11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 15
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 16
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 19
    return-object v1
.end method

.method public final b([B)[B
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 23
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 28
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    :goto_0
    array-length v4, v2

    invoke-virtual {v1, v2, v6, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 32
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 33
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 34
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 35
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 37
    return-object v2

    .line 30
    :cond_0
    invoke-virtual {v3, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method
