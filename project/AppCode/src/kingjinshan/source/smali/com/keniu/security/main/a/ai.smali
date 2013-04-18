.class final Lcom/keniu/security/main/a/ai;
.super Ljava/lang/Object;
.source "TrafficOutCheckModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/y;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/keniu/security/main/a/ah;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/a/ah;Lcom/keniu/security/traffic/y;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/keniu/security/main/a/ai;->c:Lcom/keniu/security/main/a/ah;

    iput-object p2, p0, Lcom/keniu/security/main/a/ai;->a:Lcom/keniu/security/traffic/y;

    iput-object p3, p0, Lcom/keniu/security/main/a/ai;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/keniu/security/main/a/ai;->a:Lcom/keniu/security/traffic/y;

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v1

    .line 104
    iget-object v3, p0, Lcom/keniu/security/main/a/ai;->a:Lcom/keniu/security/traffic/y;

    invoke-virtual {v3, v0}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v3

    .line 106
    iget-object v0, p0, Lcom/keniu/security/main/a/ai;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 108
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    .line 114
    iget-object v2, p0, Lcom/keniu/security/main/a/ai;->c:Lcom/keniu/security/main/a/ah;

    iget-wide v3, v1, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v5, v1, Lcom/keniu/security/traffic/ac;->c:J

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/keniu/security/main/a/ah;->a(Lcom/keniu/security/main/a/ah;J)J

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    .line 118
    :cond_1
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/main/a/ai;->c:Lcom/keniu/security/main/a/ah;

    invoke-static {v0}, Lcom/keniu/security/main/a/ah;->a(Lcom/keniu/security/main/a/ah;)Z

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
