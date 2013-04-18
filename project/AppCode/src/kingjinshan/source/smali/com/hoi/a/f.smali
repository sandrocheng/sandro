.class public final Lcom/hoi/a/f;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field private static e:[B


# instance fields
.field private final a:Lcom/hoi/a/b;

.field private final b:I

.field private c:[B

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/hoi/a/f;->e:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/hoi/a/f;-><init>(Ljava/io/OutputStream;IZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    iput-object v1, p0, Lcom/hoi/a/f;->c:[B

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/hoi/a/f;->d:I

    .line 62
    iput p2, p0, Lcom/hoi/a/f;->b:I

    .line 63
    if-eqz p3, :cond_0

    .line 64
    new-instance v0, Lcom/hoi/a/d;

    invoke-direct {v0, p2, v1}, Lcom/hoi/a/d;-><init>(I[B)V

    iput-object v0, p0, Lcom/hoi/a/f;->a:Lcom/hoi/a/b;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/hoi/a/c;

    invoke-direct {v0, p2, v1}, Lcom/hoi/a/c;-><init>(I[B)V

    iput-object v0, p0, Lcom/hoi/a/f;->a:Lcom/hoi/a/b;

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget v0, p0, Lcom/hoi/a/f;->d:I

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/hoi/a/f;->c:[B

    iget v1, p0, Lcom/hoi/a/f;->d:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/hoi/a/f;->a([BIIZ)V

    .line 95
    iput v2, p0, Lcom/hoi/a/f;->d:I

    .line 97
    :cond_0
    return-void
.end method

.method private a([BIIZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/hoi/a/f;->a:Lcom/hoi/a/b;

    iget-object v1, p0, Lcom/hoi/a/f;->a:Lcom/hoi/a/b;

    iget-object v1, v1, Lcom/hoi/a/b;->a:[B

    iget-object v2, p0, Lcom/hoi/a/f;->a:Lcom/hoi/a/b;

    invoke-virtual {v2, p3}, Lcom/hoi/a/b;->a(I)I

    move-result v2

    if-eqz v1, :cond_0

    array-length v3, v1

    if-ge v3, v2, :cond_1

    :cond_0
    new-array v1, v2, [B

    :cond_1
    iput-object v1, v0, Lcom/hoi/a/b;->a:[B

    .line 141
    iget-object v0, p0, Lcom/hoi/a/f;->a:Lcom/hoi/a/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hoi/a/b;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/hoi/a/f;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/hoi/a/f;->a:Lcom/hoi/a/b;

    iget-object v1, v1, Lcom/hoi/a/b;->a:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hoi/a/f;->a:Lcom/hoi/a/b;

    iget v3, v3, Lcom/hoi/a/b;->b:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 145
    return-void
.end method

.method private static a([BI)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 152
    if-eqz p0, :cond_0

    array-length v0, p0

    if-ge v0, p1, :cond_1

    .line 153
    :cond_0
    new-array v0, p1, [B

    .line 155
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/hoi/a/f;->a()V

    .line 111
    sget-object v1, Lcom/hoi/a/f;->e:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/hoi/a/f;->a([BIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :goto_0
    :try_start_1
    iget v1, p0, Lcom/hoi/a/f;->b:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/hoi/a/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 129
    throw v0

    .line 120
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/hoi/a/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 122
    :catch_0
    move-exception v1

    .line 123
    if-eqz v0, :cond_0

    move-object v0, v1

    .line 124
    goto :goto_1

    .line 131
    :cond_2
    return-void

    .line 112
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final write(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/hoi/a/f;->c:[B

    if-nez v0, :cond_0

    .line 78
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hoi/a/f;->c:[B

    .line 80
    :cond_0
    iget v0, p0, Lcom/hoi/a/f;->d:I

    iget-object v1, p0, Lcom/hoi/a/f;->c:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/hoi/a/f;->c:[B

    iget v1, p0, Lcom/hoi/a/f;->d:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/hoi/a/f;->a([BIIZ)V

    .line 83
    iput v2, p0, Lcom/hoi/a/f;->d:I

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/hoi/a/f;->c:[B

    iget v1, p0, Lcom/hoi/a/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hoi/a/f;->d:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 86
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    if-gtz p3, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/hoi/a/f;->a()V

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hoi/a/f;->a([BIIZ)V

    goto :goto_0
.end method
