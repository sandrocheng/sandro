.class public final Lcom/jxphone/mosecurity/d/i;
.super Ljava/io/InputStream;
.source "NOTInputStream.java"


# instance fields
.field private a:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/jxphone/mosecurity/d/i;->a:Ljava/io/InputStream;

    .line 14
    return-void
.end method

.method static a([BII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    add-int v0, p1, p2

    move v1, p1

    .line 30
    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    aget-byte v2, p0, v1

    xor-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final read([B)I
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 24
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/jxphone/mosecurity/d/i;->a([BII)V

    .line 25
    return v0
.end method

.method public final read([BII)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 38
    invoke-static {p1, p2, p3}, Lcom/jxphone/mosecurity/d/i;->a([BII)V

    .line 39
    return v0
.end method
