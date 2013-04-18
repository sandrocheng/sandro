.class final Lcom/c/a/a/z;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/c/a/a/x;


# direct methods
.method constructor <init>(Lcom/c/a/a/x;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/c/a/a/z;->a:Lcom/c/a/a/x;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 236
    .line 239
    :try_start_0
    invoke-virtual {p0}, Lcom/c/a/a/z;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 256
    :goto_0
    invoke-static {}, Lcom/c/a/a/x;->e()Lcom/c/a/a/ab;

    move-result-object v1

    new-instance v2, Lcom/c/a/a/w;

    iget-object v3, p0, Lcom/c/a/a/z;->a:Lcom/c/a/a/x;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/c/a/a/w;-><init>(Lcom/c/a/a/x;[Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v2}, Lcom/c/a/a/ab;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    :goto_1
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v1, "CellTaskEx"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 253
    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    .line 243
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 246
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/c/a/a/x;->e()Lcom/c/a/a/ab;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Lcom/c/a/a/w;

    iget-object v3, p0, Lcom/c/a/a/z;->a:Lcom/c/a/a/x;

    invoke-direct {v2, v3, v4}, Lcom/c/a/a/w;-><init>(Lcom/c/a/a/x;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/c/a/a/ab;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 250
    :catch_3
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
