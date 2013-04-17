.class final Lblm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# instance fields
.field private synthetic a:Lblh;


# direct methods
.method constructor <init>(Lblh;)V
    .locals 0

    iput-object p1, p0, Lblm;->a:Lblh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lblm;->a:Lblh;

    invoke-virtual {v0}, Lblh;->a()Lakv;

    move-result-object v0

    invoke-virtual {v0}, Lakv;->c()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lblm;->a:Lblh;

    invoke-static {v0}, Lblh;->n(Lblh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lblm;->a:Lblh;

    invoke-virtual {v3}, Lblh;->a()Lakv;

    move-result-object v3

    invoke-virtual {v3, v0}, Lakv;->c(Lkw;)Ljava/lang/String;

    invoke-virtual {v0}, Lkw;->n()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lblm;->a:Lblh;

    invoke-virtual {v4}, Lblh;->a()Lakv;

    move-result-object v4

    invoke-virtual {v4, v0}, Lakv;->b(Lkw;)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lblm;->a:Lblh;

    invoke-static {v0}, Lblh;->o(Lblh;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lblm;->a:Lblh;

    invoke-virtual {v0}, Lblh;->a()Lakv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lakv;->a(Ljava/util/List;)V

    iget-object v0, p0, Lblm;->a:Lblh;

    invoke-static {v0}, Lblh;->p(Lblh;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onPackageReinstall(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
