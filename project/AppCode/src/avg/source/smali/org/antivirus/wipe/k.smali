.class final Lorg/antivirus/wipe/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/WipeByApp;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/WipeByApp;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/k;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lorg/antivirus/wipe/ai;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/wipe/k;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->k(Lorg/antivirus/wipe/WipeByApp;)V

    iget-object v0, p0, Lorg/antivirus/wipe/k;->a:Lorg/antivirus/wipe/WipeByApp;

    iget-object v0, v0, Lorg/antivirus/wipe/WipeByApp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/wipe/k;->a:Lorg/antivirus/wipe/WipeByApp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/antivirus/wipe/WipeByApp;->b(Lorg/antivirus/wipe/WipeByApp;Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lorg/antivirus/wipe/k;->a:Lorg/antivirus/wipe/WipeByApp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antivirus/wipe/WipeByApp;->b(Lorg/antivirus/wipe/WipeByApp;Z)V

    goto :goto_1
.end method
