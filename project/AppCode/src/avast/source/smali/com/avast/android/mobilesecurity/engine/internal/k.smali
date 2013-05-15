.class public Lcom/avast/android/mobilesecurity/engine/internal/k;
.super Ljava/io/InputStream;
.source "ProgressInputStream.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:J

.field private c:J

.field private d:Lcom/avast/android/mobilesecurity/engine/r;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLcom/avast/android/mobilesecurity/engine/r;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->c:J

    .line 54
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->a:Ljava/io/InputStream;

    .line 55
    iput-wide p2, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->b:J

    .line 56
    iput-object p4, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->d:Lcom/avast/android/mobilesecurity/engine/r;

    .line 57
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 67
    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 72
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->d:Lcom/avast/android/mobilesecurity/engine/r;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->d:Lcom/avast/android/mobilesecurity/engine/r;

    iget-wide v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->c:J

    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->b:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    .line 96
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 6
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->d:Lcom/avast/android/mobilesecurity/engine/r;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 144
    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->c:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->c:J

    .line 145
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->d:Lcom/avast/android/mobilesecurity/engine/r;

    iget-wide v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->c:J

    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->b:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    .line 147
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->d:Lcom/avast/android/mobilesecurity/engine/r;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 120
    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->c:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->c:J

    .line 121
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->d:Lcom/avast/android/mobilesecurity/engine/r;

    iget-wide v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->c:J

    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->b:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    .line 123
    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
