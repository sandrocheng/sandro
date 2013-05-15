.class Lcom/avast/android/generic/service/e;
.super Ljava/lang/Object;
.source "AvastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/service/AvastService;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/service/AvastService;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    const-string v1, "AvastGenericSc"

    const-string v4, "Shutdown check syncing..."

    invoke-static {v1, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v1}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/service/AvastService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 238
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 239
    const-string v1, "AvastGenericSc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sync for shutdown check took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v5, v2

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :try_start_1
    const-string v1, "AvastGeneric"

    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v5}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Service shutdown check"

    invoke-static {v1, v5, v6}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    .line 252
    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v5}, Lcom/avast/android/generic/service/AvastService;->d(Lcom/avast/android/generic/service/AvastService;)I

    move-result v5

    if-lez v5, :cond_0

    .line 254
    const-string v1, "AvastSDC"

    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v5}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v7}, Lcom/avast/android/generic/service/AvastService;->d(Lcom/avast/android/generic/service/AvastService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " clients still bound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v1}, Lcom/avast/android/generic/service/AvastService;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_4

    .line 275
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :goto_1
    return-void

    .line 256
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v5}, Lcom/avast/android/generic/service/AvastService;->e(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/f/a/b;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v5}, Lcom/avast/android/generic/service/AvastService;->e(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/f/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avast/android/generic/f/a/b;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    const-string v1, "AvastSDC"

    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v5}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "- SMS sender is sending"

    invoke-static {v1, v5, v6}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 290
    :try_start_4
    const-string v1, "AvastGeneric"

    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v5}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Service shutdown check failed"

    invoke-static {v1, v5, v6, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 294
    const-string v5, "AvastGenericSc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service shutdown check took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v0, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 260
    :cond_1
    :try_start_5
    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v5}, Lcom/avast/android/generic/service/AvastService;->f(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/internet/HttpSender;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v5}, Lcom/avast/android/generic/service/AvastService;->f(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/internet/HttpSender;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avast/android/generic/internet/HttpSender;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 262
    const-string v1, "AvastSDC"

    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v5}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "- HTTP sender is sending"

    invoke-static {v1, v5, v6}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_2
    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v5}, Lcom/avast/android/generic/service/AvastService;->g(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/b/l;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v5}, Lcom/avast/android/generic/service/AvastService;->g(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/b/l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avast/android/generic/b/l;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 266
    const-string v1, "AvastSDC"

    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v5}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "- Command receiver is populated"

    invoke-static {v1, v5, v6}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_3
    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v5}, Lcom/avast/android/generic/service/AvastService;->c(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/h/o;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v5}, Lcom/avast/android/generic/service/AvastService;->c(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/h/o;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avast/android/generic/h/o;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 270
    const-string v1, "AvastSDC"

    iget-object v5, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v5}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "- Task handler is running"

    invoke-static {v1, v5, v6}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :cond_4
    if-nez v0, :cond_5

    .line 279
    const-string v0, "AvastGeneric"

    iget-object v1, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v1}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "Service stops"

    invoke-static {v0, v1, v5}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v0}, Lcom/avast/android/generic/service/AvastService;->h(Lcom/avast/android/generic/service/AvastService;)V

    goto/16 :goto_2

    .line 286
    :cond_5
    const-string v0, "AvastGeneric"

    iget-object v1, p0, Lcom/avast/android/generic/service/e;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v1}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "Service continues"

    invoke-static {v0, v1, v5}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method
