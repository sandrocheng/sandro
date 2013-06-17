.class Lcom/antivirus/wipe/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/r;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/r;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/s;->a:Lcom/antivirus/wipe/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/wipe/s;->a:Lcom/antivirus/wipe/r;

    iget-object v0, v0, Lcom/antivirus/wipe/r;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->d(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/antivirus/wipe/s;->a:Lcom/antivirus/wipe/r;

    iget-object v0, v0, Lcom/antivirus/wipe/r;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->p(Lcom/antivirus/wipe/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/antivirus/wipe/s;->a:Lcom/antivirus/wipe/r;

    iget-object v2, v2, Lcom/antivirus/wipe/r;->a:Lcom/antivirus/wipe/b;

    invoke-static {v2}, Lcom/antivirus/wipe/b;->d(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/s;->a:Lcom/antivirus/wipe/r;

    iget-object v0, v0, Lcom/antivirus/wipe/r;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->q(Lcom/antivirus/wipe/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/antivirus/wipe/s;->a:Lcom/antivirus/wipe/r;

    iget-object v2, v2, Lcom/antivirus/wipe/r;->a:Lcom/antivirus/wipe/b;

    invoke-static {v2}, Lcom/antivirus/wipe/b;->d(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/antivirus/wipe/s;->a:Lcom/antivirus/wipe/r;

    iget-object v0, v0, Lcom/antivirus/wipe/r;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->r(Lcom/antivirus/wipe/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/antivirus/wipe/s;->a:Lcom/antivirus/wipe/r;

    iget-object v2, v2, Lcom/antivirus/wipe/r;->a:Lcom/antivirus/wipe/b;

    invoke-static {v2}, Lcom/antivirus/wipe/b;->d(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-void
.end method
