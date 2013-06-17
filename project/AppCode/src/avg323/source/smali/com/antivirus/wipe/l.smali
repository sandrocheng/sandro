.class Lcom/antivirus/wipe/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/b;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/b;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/l;->a:Lcom/antivirus/wipe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/antivirus/wipe/l;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0, v3}, Lcom/antivirus/wipe/b;->b(Lcom/antivirus/wipe/b;Z)Z

    invoke-static {}, Lcom/antivirus/wipe/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/wipe/l;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->J(Lcom/antivirus/wipe/b;)V

    iget-object v0, p0, Lcom/antivirus/wipe/l;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->d(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v0

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

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/l;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->K(Lcom/antivirus/wipe/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/wipe/l;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0, v3}, Lcom/antivirus/wipe/b;->c(Lcom/antivirus/wipe/b;Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/wipe/l;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->L(Lcom/antivirus/wipe/b;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/antivirus/wipe/l;->a:Lcom/antivirus/wipe/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/antivirus/wipe/b;->c(Lcom/antivirus/wipe/b;Z)V

    goto :goto_1
.end method
