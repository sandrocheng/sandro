.class final Lbof;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbod;


# direct methods
.method constructor <init>(Lbod;)V
    .locals 0

    iput-object p1, p0, Lbof;->a:Lbod;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lbof;->a:Lbod;

    invoke-static {v2}, Lbod;->d(Lbod;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lbof;->a:Lbod;

    invoke-static {v3}, Lbod;->e(Lbod;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lbof;->a:Lbod;

    iget-object v4, p0, Lbof;->a:Lbod;

    invoke-static {v4}, Lbod;->f(Lbod;)Labe;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Labe;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v1}, Labe;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3, v5}, Lbod;->a(Lbod;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lbof;->a:Lbod;

    iget-object v3, p0, Lbof;->a:Lbod;

    invoke-static {v3}, Lbod;->f(Lbod;)Labe;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Labe;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v4}, Lbod;->b(Lbod;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lbof;->a:Lbod;

    invoke-static {v1}, Lbod;->d(Lbod;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbof;->a:Lbod;

    invoke-static {v1}, Lbod;->e(Lbod;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbof;->a:Lbod;

    invoke-static {v1, v0}, Lbod;->c(Lbod;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lbof;->a:Lbod;

    invoke-static {v0}, Lbod;->g(Lbod;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
