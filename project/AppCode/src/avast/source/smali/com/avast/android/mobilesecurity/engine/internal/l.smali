.class public Lcom/avast/android/mobilesecurity/engine/internal/l;
.super Ljava/io/OutputStream;
.source "ProgressOutputStream.java"


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:J

.field private c:J

.field private d:Lcom/avast/android/mobilesecurity/engine/r;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JLcom/avast/android/mobilesecurity/engine/r;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->c:J

    .line 54
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->a:Ljava/io/OutputStream;

    .line 55
    iput-wide p2, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->b:J

    .line 56
    iput-object p4, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->d:Lcom/avast/android/mobilesecurity/engine/r;

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 122
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 127
    return-void
.end method

.method public write(I)V
    .locals 5
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 72
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->d:Lcom/avast/android/mobilesecurity/engine/r;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->d:Lcom/avast/android/mobilesecurity/engine/r;

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->c:J

    iget-wide v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->b:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    .line 75
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 5
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 113
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->d:Lcom/avast/android/mobilesecurity/engine/r;

    if-eqz v0, :cond_0

    .line 114
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->c:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->c:J

    .line 115
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->d:Lcom/avast/android/mobilesecurity/engine/r;

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->c:J

    iget-wide v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->b:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    .line 117
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 94
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->d:Lcom/avast/android/mobilesecurity/engine/r;

    if-eqz v0, :cond_0

    .line 95
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->c:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->c:J

    .line 96
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->d:Lcom/avast/android/mobilesecurity/engine/r;

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->c:J

    iget-wide v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/l;->b:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    .line 98
    :cond_0
    return-void
.end method
