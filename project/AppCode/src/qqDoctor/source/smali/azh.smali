.class final Lazh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/market/IMarketManagerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
        "<",
        "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
        "Lcom/tencent/tmsecure/module/market/CategoryEx;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Laze;


# direct methods
.method constructor <init>(Laze;)V
    .locals 0

    iput-object p1, p0, Lazh;->a:Laze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazh;->a:Laze;

    invoke-static {v0}, Laze;->e(Laze;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lazh;->a:Laze;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laze;->setReloadData(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/CategoryEx;

    new-instance v3, Lla;

    invoke-direct {v3}, Lla;-><init>()V

    iget-object v4, v0, Lcom/tencent/tmsecure/module/market/CategoryEx;->category:LQQPIM/Category;

    invoke-virtual {v4}, LQQPIM/Category;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Lla;->a(I)V

    invoke-virtual {v4}, LQQPIM/Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lla;->b(Ljava/lang/String;)V

    invoke-virtual {v4}, LQQPIM/Category;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Lla;->b(I)V

    invoke-virtual {v4}, LQQPIM/Category;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lla;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, LQQPIM/Category;->getViewtimes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lla;->c(Ljava/lang/String;)V

    invoke-virtual {v4}, LQQPIM/Category;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lla;->d(Ljava/lang/String;)V

    invoke-virtual {v4}, LQQPIM/Category;->getSign()I

    move-result v5

    invoke-virtual {v3, v5}, Lla;->c(I)V

    invoke-virtual {v4}, LQQPIM/Category;->getState()I

    move-result v5

    invoke-virtual {v3, v5}, Lla;->d(I)V

    iget-object v5, v0, Lcom/tencent/tmsecure/module/market/CategoryEx;->expand:LQQPIM/AndroidCategoryExpand;

    iget v5, v5, LQQPIM/AndroidCategoryExpand;->ispush:I

    invoke-virtual {v3, v5}, Lla;->e(I)V

    iget-object v0, v0, Lcom/tencent/tmsecure/module/market/CategoryEx;->expand:LQQPIM/AndroidCategoryExpand;

    iget v0, v0, LQQPIM/AndroidCategoryExpand;->updatetime:I

    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Lla;->a(J)V

    iget v0, v4, LQQPIM/Category;->rank:I

    invoke-virtual {v3, v0}, Lla;->f(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lazh;->a:Laze;

    invoke-static {v0}, Laze;->f(Laze;)Ljt;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljt;->b(Ljava/util/List;)Z

    iget-object v0, p0, Lazh;->a:Laze;

    iget-object v4, p0, Lazh;->a:Laze;

    invoke-static {v4}, Laze;->f(Laze;)Ljt;

    move-result-object v4

    invoke-virtual {v4}, Ljt;->c()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Laze;->a(Laze;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lazh;->a:Laze;

    invoke-static {v0}, Laze;->g(Laze;)Lho;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lho;->o(J)V

    iget-object v0, p0, Lazh;->a:Laze;

    invoke-static {v0}, Laze;->g(Laze;)Lho;

    move-result-object v0

    iget-object v2, p0, Lazh;->a:Laze;

    invoke-static {v1}, Laze;->a(Ljava/util/List;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->p(J)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lazh;->a:Laze;

    iget-object v1, p0, Lazh;->a:Laze;

    invoke-static {v1}, Laze;->f(Laze;)Ljt;

    move-result-object v1

    invoke-virtual {v1}, Ljt;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Laze;->b(Laze;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0
.end method
