.class Lcom/avast/android/generic/service/b;
.super Ljava/lang/Object;
.source "AvastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/service/a;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/service/a;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 137
    const-string v2, "AvastGenericSc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v4, v4, Lcom/avast/android/generic/service/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " syncing..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v2, v2, Lcom/avast/android/generic/service/a;->d:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v2}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/service/AvastService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 140
    :try_start_0
    iget-object v3, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v3, v3, Lcom/avast/android/generic/service/a;->d:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v3}, Lcom/avast/android/generic/service/AvastService;->b(Lcom/avast/android/generic/service/AvastService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    const-string v0, "AvastGenericSc"

    const-string v1, "Not accepting further commands"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v0, v0, Lcom/avast/android/generic/service/a;->d:Lcom/avast/android/generic/service/AvastService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/service/AvastService;Z)Z

    .line 146
    iget-object v0, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v0, v0, Lcom/avast/android/generic/service/a;->d:Lcom/avast/android/generic/service/AvastService;

    iget-object v1, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v1, v1, Lcom/avast/android/generic/service/a;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 147
    invoke-static {}, Lcom/avast/android/generic/util/ax;->a()V

    .line 148
    monitor-exit v2

    .line 163
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 152
    const-string v5, "AvastGenericSc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task sync for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v7, v7, Lcom/avast/android/generic/service/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " took "

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

    .line 154
    iget-object v3, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v3, v3, Lcom/avast/android/generic/service/a;->d:Lcom/avast/android/generic/service/AvastService;

    iget-object v4, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v4, v4, Lcom/avast/android/generic/service/a;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v5, v5, Lcom/avast/android/generic/service/a;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Lcom/avast/android/generic/service/AvastService;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 156
    iget-object v3, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v3, v3, Lcom/avast/android/generic/service/a;->d:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v3}, Lcom/avast/android/generic/service/AvastService;->e()V

    .line 158
    iget-object v3, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v3, v3, Lcom/avast/android/generic/service/a;->d:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v3}, Lcom/avast/android/generic/service/AvastService;->c(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/h/o;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v4, v4, Lcom/avast/android/generic/service/a;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v5, v5, Lcom/avast/android/generic/service/a;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 161
    const-string v5, "AvastGenericSc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task handling of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/avast/android/generic/service/b;->a:Lcom/avast/android/generic/service/a;

    iget-object v7, v7, Lcom/avast/android/generic/service/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " took "

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

    .line 162
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
