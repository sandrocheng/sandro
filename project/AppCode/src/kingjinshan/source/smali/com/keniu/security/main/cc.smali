.class final Lcom/keniu/security/main/cc;
.super Ljava/lang/Object;
.source "ModuleTraffic.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/y;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/keniu/security/main/cb;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/cb;Lcom/keniu/security/traffic/y;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/keniu/security/main/cc;->c:Lcom/keniu/security/main/cb;

    iput-object p2, p0, Lcom/keniu/security/main/cc;->a:Lcom/keniu/security/traffic/y;

    iput-object p3, p0, Lcom/keniu/security/main/cc;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/keniu/security/main/cc;->a:Lcom/keniu/security/traffic/y;

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v1

    .line 136
    iget-object v3, p0, Lcom/keniu/security/main/cc;->a:Lcom/keniu/security/traffic/y;

    invoke-virtual {v3, v0}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v3

    .line 138
    iget-object v0, p0, Lcom/keniu/security/main/cc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 140
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    iget-wide v2, v1, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v4, v1, Lcom/keniu/security/traffic/ac;->c:J

    add-long v1, v2, v4

    invoke-static {v1, v2}, Lcom/keniu/security/main/cb;->a(J)J

    .line 149
    :cond_0
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    .line 150
    :cond_1
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/main/cc;->c:Lcom/keniu/security/main/cb;

    invoke-static {v0}, Lcom/keniu/security/main/cb;->a(Lcom/keniu/security/main/cb;)Z

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
