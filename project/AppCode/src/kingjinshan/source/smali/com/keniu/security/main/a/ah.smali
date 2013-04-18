.class public final Lcom/keniu/security/main/a/ah;
.super Ljava/lang/Object;
.source "TrafficOutCheckModule.java"

# interfaces
.implements Lcom/keniu/security/main/a/m;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "\u5f53\u524d\u6d41\u91cf\u5df2\u8d85\u8fc7\u6bcf\u6708\u9650\u989d"

    iput-object v0, p0, Lcom/keniu/security/main/a/ah;->a:Ljava/lang/String;

    .line 19
    const-string v0, "\u67e5\u770b"

    iput-object v0, p0, Lcom/keniu/security/main/a/ah;->b:Ljava/lang/String;

    .line 20
    const-string v0, "\u5df2\u67e5\u770b"

    iput-object v0, p0, Lcom/keniu/security/main/a/ah;->c:Ljava/lang/String;

    .line 21
    const-string v0, "\u5df2\u67e5\u770b"

    iput-object v0, p0, Lcom/keniu/security/main/a/ah;->d:Ljava/lang/String;

    .line 22
    const-string v0, "\u5f53\u524d\u6d41\u91cf\u4f7f\u7528\u6b63\u5e38"

    iput-object v0, p0, Lcom/keniu/security/main/a/ah;->e:Ljava/lang/String;

    .line 24
    sget v0, Lcom/keniu/security/main/a/k;->e:I

    iput v0, p0, Lcom/keniu/security/main/a/ah;->f:I

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/a/ah;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/keniu/security/main/a/ah;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/keniu/security/main/a/ah;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/a/ah;->i:Z

    return v0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    .line 96
    invoke-static {p1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 98
    iput-wide v7, p0, Lcom/keniu/security/main/a/ah;->h:J

    .line 99
    new-instance v1, Lcom/keniu/security/main/a/ai;

    invoke-direct {v1, p0, v0, p1}, Lcom/keniu/security/main/a/ai;-><init>(Lcom/keniu/security/main/a/ah;Lcom/keniu/security/traffic/y;Landroid/content/Context;)V

    .line 128
    iput-boolean v5, p0, Lcom/keniu/security/main/a/ah;->i:Z

    .line 129
    invoke-static {p1, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 131
    monitor-enter v1

    .line 132
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/keniu/security/main/a/ah;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 134
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    goto :goto_0

    .line 138
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    iget-wide v1, v0, Lcom/keniu/security/traffic/y;->d:J

    iget-wide v3, p0, Lcom/keniu/security/main/a/ah;->h:J

    sub-long/2addr v1, v3

    .line 141
    cmp-long v3, v1, v7

    if-ltz v3, :cond_1

    iget-wide v3, v0, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_3

    .line 143
    :cond_1
    invoke-static {}, Lcom/keniu/security/main/cb;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    .line 149
    :goto_1
    return v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    move v0, v6

    .line 146
    goto :goto_1

    :cond_3
    move v0, v6

    .line 149
    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/keniu/security/main/a/ah;->f:I

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    sget v0, Lcom/keniu/security/main/a/k;->k:I

    if-ne p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/keniu/security/main/a/ah;->a:Ljava/lang/String;

    .line 91
    :goto_0
    return-object v0

    .line 79
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->l:I

    if-ne p1, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/keniu/security/main/a/ah;->b:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_1
    sget v0, Lcom/keniu/security/main/a/k;->m:I

    if-ne p1, v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/keniu/security/main/a/ah;->c:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_2
    sget v0, Lcom/keniu/security/main/a/k;->n:I

    if-ne p1, v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/keniu/security/main/a/ah;->d:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_3
    sget v0, Lcom/keniu/security/main/a/k;->o:I

    if-ne p1, v0, :cond_5

    .line 86
    invoke-virtual {p0}, Lcom/keniu/security/main/a/ah;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/keniu/security/main/a/ah;->a:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/main/a/ah;->e:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    invoke-static {}, Lcom/keniu/security/main/cb;->g()V

    .line 180
    return-void
.end method

.method public final a(Lcom/keniu/security/main/a/l;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->a(Lcom/keniu/security/main/a/m;)I

    .line 159
    invoke-direct {p0, p2}, Lcom/keniu/security/main/a/ah;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget v0, Lcom/keniu/security/main/a/k;->h:I

    iput v0, p0, Lcom/keniu/security/main/a/ah;->g:I

    .line 166
    :goto_0
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->b(Lcom/keniu/security/main/a/m;)I

    .line 167
    return-void

    .line 162
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/ah;->g:I

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 173
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/main/a/ah;->g:I

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    iget v0, p0, Lcom/keniu/security/main/a/ah;->g:I

    sget v1, Lcom/keniu/security/main/a/k;->i:I

    if-ne v0, v1, :cond_0

    .line 186
    invoke-static {}, Lcom/keniu/security/main/cb;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/ah;->g:I

    .line 190
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/keniu/security/main/a/ah;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/keniu/security/main/a/ah;->g:I

    sget v1, Lcom/keniu/security/main/a/k;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/main/a/ah;->g:I

    sget v1, Lcom/keniu/security/main/a/k;->g:I

    if-ne v0, v1, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
