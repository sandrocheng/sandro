.class public final Lcom/jxphone/mosecurity/d/j;
.super Ljava/io/OutputStream;
.source "NOTOutputStream.java"


# instance fields
.field private a:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/jxphone/mosecurity/d/j;->a:Ljava/io/OutputStream;

    .line 14
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/j;->a:Ljava/io/OutputStream;

    xor-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 19
    return-void
.end method

.method public final write([B)V
    .locals 2
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/jxphone/mosecurity/d/i;->a([BII)V

    .line 24
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/j;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 25
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {p1, p2, p3}, Lcom/jxphone/mosecurity/d/i;->a([BII)V

    .line 30
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/j;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 31
    return-void
.end method
