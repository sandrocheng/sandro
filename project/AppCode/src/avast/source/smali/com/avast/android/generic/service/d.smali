.class Lcom/avast/android/generic/service/d;
.super Ljava/lang/Object;
.source "AvastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/service/c;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/service/c;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/avast/android/generic/service/d;->a:Lcom/avast/android/generic/service/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    const-string v2, "AvastGenericSc"

    const-string v3, "Task handling syncing..."

    invoke-static {v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/avast/android/generic/service/d;->a:Lcom/avast/android/generic/service/c;

    iget-object v2, v2, Lcom/avast/android/generic/service/c;->b:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v2}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/service/AvastService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/avast/android/generic/service/d;->a:Lcom/avast/android/generic/service/c;

    iget-object v3, v3, Lcom/avast/android/generic/service/c;->b:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v3}, Lcom/avast/android/generic/service/AvastService;->b(Lcom/avast/android/generic/service/AvastService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    const-string v0, "AvastGenericSc"

    const-string v1, "Not accepting further commands"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/avast/android/generic/service/d;->a:Lcom/avast/android/generic/service/c;

    iget-object v0, v0, Lcom/avast/android/generic/service/c;->b:Lcom/avast/android/generic/service/AvastService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/service/AvastService;Z)Z

    .line 190
    iget-object v0, p0, Lcom/avast/android/generic/service/d;->a:Lcom/avast/android/generic/service/c;

    iget-object v0, v0, Lcom/avast/android/generic/service/c;->b:Lcom/avast/android/generic/service/AvastService;

    iget-object v1, p0, Lcom/avast/android/generic/service/d;->a:Lcom/avast/android/generic/service/c;

    iget-object v1, v1, Lcom/avast/android/generic/service/c;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 191
    invoke-static {}, Lcom/avast/android/generic/util/ax;->a()V

    .line 192
    monitor-exit v2

    .line 206
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 196
    const-string v5, "AvastGenericSc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task handling sync took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/avast/android/generic/service/d;->a:Lcom/avast/android/generic/service/c;

    iget-object v3, v3, Lcom/avast/android/generic/service/c;->b:Lcom/avast/android/generic/service/AvastService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/avast/android/generic/service/AvastService;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 199
    iget-object v3, p0, Lcom/avast/android/generic/service/d;->a:Lcom/avast/android/generic/service/c;

    iget-object v3, v3, Lcom/avast/android/generic/service/c;->b:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v3}, Lcom/avast/android/generic/service/AvastService;->e()V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 202
    const-string v5, "AvastGenericSc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task handling took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v0, v3, v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iget-object v0, p0, Lcom/avast/android/generic/service/d;->a:Lcom/avast/android/generic/service/c;

    iget-object v0, v0, Lcom/avast/android/generic/service/c;->b:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v0}, Lcom/avast/android/generic/service/AvastService;->b()V

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
