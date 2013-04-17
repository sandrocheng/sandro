.class public Lkr;
.super Ljava/io/InputStream;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lkq;

.field private c:Lkq$a;

.field private d:Ljava/io/RandomAccessFile;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lkr;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lkr;->i:I

    invoke-direct {p0}, Lkr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "ImageViewStream::init() Failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Lkq;

    invoke-direct {v2}, Lkq;-><init>()V

    iput-object v2, p0, Lkr;->b:Lkq;

    iget-object v2, p0, Lkr;->b:Lkq;

    iget-object v3, p0, Lkr;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lkq;->a(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lkr;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "decryptPartialFile() failed:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lkr;->b:Lkq;

    invoke-virtual {v2}, Lkq;->b()Lkq$a;

    move-result-object v2

    iput-object v2, p0, Lkr;->c:Lkq$a;

    iget-object v2, p0, Lkr;->b:Lkq;

    invoke-virtual {v2}, Lkq;->a()[B

    move-result-object v2

    iput-object v2, p0, Lkr;->f:[B

    iget-object v2, p0, Lkr;->f:[B

    array-length v2, v2

    iput v2, p0, Lkr;->g:I

    iget-object v2, p0, Lkr;->c:Lkq$a;

    iget-byte v2, v2, Lkq$a;->d:B

    if-ne v2, v1, :cond_1

    iget v0, p0, Lkr;->g:I

    iput v0, p0, Lkr;->h:I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lkr;->g:I

    const/16 v3, 0x400

    if-eq v2, v3, :cond_2

    sget-object v2, Lkr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error length:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lkr;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --- 1024"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lkr;->c:Lkq$a;

    iget-wide v2, v2, Lkq$a;->i:J

    long-to-int v2, v2

    iput v2, p0, Lkr;->h:I

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lkr;->e:Ljava/lang/String;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lkr;->d:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lkr;->h:I

    iget v1, p0, Lkr;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkr;->c:Lkq$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkr;->c:Lkq$a;

    iget-byte v0, v0, Lkq$a;->d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lkr;->d:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkr;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lkr;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    new-array v1, v2, [B

    invoke-virtual {p0, v1, v3, v2}, Lkr;->read([BII)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    or-int v2, p3, p2

    if-ltz v2, :cond_1

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    if-nez p3, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    iget v2, p0, Lkr;->i:I

    iget v3, p0, Lkr;->g:I

    if-ge v2, v3, :cond_8

    iget v1, p0, Lkr;->i:I

    add-int/2addr v1, p3

    iget v2, p0, Lkr;->g:I

    if-gt v1, v2, :cond_7

    move v1, p3

    :cond_5
    :goto_1
    if-lez v1, :cond_6

    iget-object v2, p0, Lkr;->f:[B

    iget v3, p0, Lkr;->i:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lkr;->i:I

    add-int/2addr v2, v1

    iput v2, p0, Lkr;->i:I

    :cond_6
    if-lez v0, :cond_b

    iget-object v2, p0, Lkr;->d:Ljava/io/RandomAccessFile;

    iget v3, p0, Lkr;->i:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Lkr;->d:Ljava/io/RandomAccessFile;

    add-int v3, p2, v1

    invoke-virtual {v2, p1, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_3

    iget v2, p0, Lkr;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lkr;->i:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_7
    iget v1, p0, Lkr;->g:I

    iget v2, p0, Lkr;->i:I

    sub-int/2addr v1, v2

    iget v2, p0, Lkr;->g:I

    iget v3, p0, Lkr;->h:I

    if-ge v2, v3, :cond_5

    sub-int v0, p3, v1

    iget v2, p0, Lkr;->i:I

    add-int/2addr v2, p3

    iget v3, p0, Lkr;->h:I

    if-le v2, v3, :cond_5

    iget v0, p0, Lkr;->h:I

    iget v2, p0, Lkr;->g:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lkr;->c:Lkq$a;

    iget-byte v2, v2, Lkq$a;->d:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    sget-object v0, Lkr;->a:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_9
    iget v2, p0, Lkr;->i:I

    iget v3, p0, Lkr;->h:I

    if-ne v2, v3, :cond_a

    sget-object v0, Lkr;->a:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_a
    iget v1, p0, Lkr;->i:I

    add-int/2addr v1, p3

    iget v2, p0, Lkr;->h:I

    if-le v1, v2, :cond_c

    iget v1, p0, Lkr;->h:I

    iget v2, p0, Lkr;->i:I

    sub-int p3, v1, v2

    move v1, v0

    move v0, p3

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    move v1, v0

    move v0, p3

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkr;->i:I

    return-void
.end method
