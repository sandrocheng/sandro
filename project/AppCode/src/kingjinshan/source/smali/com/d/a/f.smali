.class public final Lcom/d/a/f;
.super Ljava/lang/Object;
.source "RandomAccessFileSeekableSource.java"

# interfaces
.implements Lcom/d/a/g;


# instance fields
.field private a:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "raf"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/d/a/f;->a:Ljava/io/RandomAccessFile;

    .line 49
    return-void
.end method

.method private a([BII)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/d/a/f;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method private a()J
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/d/a/f;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 71
    iget-object v0, p0, Lcom/d/a/f;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 72
    if-ne v0, v4, :cond_0

    move v0, v4

    .line 75
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/d/a/f;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 54
    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/d/a/f;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 67
    return-void
.end method
