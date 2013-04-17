.class final Lbqy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbqv;


# direct methods
.method constructor <init>(Lbqv;)V
    .locals 0

    iput-object p1, p0, Lbqy;->a:Lbqv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lzk;

    iget-object v1, p0, Lbqy;->a:Lbqv;

    invoke-static {v1}, Lbqv;->i(Lbqv;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzk;-><init>(Landroid/content/Context;Lzk$b;)V

    invoke-virtual {v0, v4}, Lzk;->a(Z)Lzk$a;

    move-result-object v0

    iget-object v1, p0, Lbqy;->a:Lbqv;

    iget v2, v0, Lzk$a;->b:I

    iget-wide v2, v0, Lzk$a;->c:J

    invoke-static {v1, v2, v3}, Lbqv;->a(Lbqv;J)V

    iget-boolean v1, v0, Lzk$a;->d:Z

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lbqy;->a:Lbqv;

    invoke-static {v1}, Lbqv;->e(Lbqv;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lzk$a;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbqy;->a:Lbqv;

    invoke-static {v1}, Lbqv;->d(Lbqv;)Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, Lzk$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lbqy;->a:Lbqv;

    invoke-static {v0}, Lbqv;->g(Lbqv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbqy;->a:Lbqv;

    invoke-static {v0}, Lbqv;->j(Lbqv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbqy;->a:Lbqv;

    invoke-static {v0}, Lbqv;->k(Lbqv;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbqy;->a:Lbqv;

    invoke-static {v1}, Lbqv;->d(Lbqv;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbqy;->a:Lbqv;

    invoke-static {v0}, Lbqv;->l(Lbqv;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbqy;->a:Lbqv;

    invoke-static {v1}, Lbqv;->e(Lbqv;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbqy;->a:Lbqv;

    iget-object v0, v0, Lbqv;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbqy;->a:Lbqv;

    invoke-static {v0}, Lbqv;->m(Lbqv;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
