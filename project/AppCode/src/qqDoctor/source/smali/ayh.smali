.class final Layh;
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
        "Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Laye;


# direct methods
.method constructor <init>(Laye;)V
    .locals 0

    iput-object p1, p0, Layh;->a:Laye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7

    const/4 v1, 0x2

    const/4 v2, 0x0

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0}, Laye;->h(Laye;)V

    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0}, Laye;->i(Laye;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Layh;->a:Laye;

    invoke-virtual {v0, v2}, Laye;->setReloadData(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Layh;->a:Laye;

    invoke-static {v1}, Laye;->j(Laye;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0, v2}, Laye;->a(Laye;Z)Z

    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0}, Laye;->k(Laye;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0}, Laye;->l(Laye;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, La;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lkw;->b(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0, v1}, Laye;->a(Laye;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0}, Laye;->m(Laye;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0}, Laye;->n(Laye;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0}, Laye;->q(Laye;)Ljt;

    move-result-object v1

    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0}, Laye;->o(Laye;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0}, Laye;->p(Laye;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v1, Ljt;->a:Lhs;

    new-instance v0, Ljy;

    invoke-direct/range {v0 .. v5}, Ljy;-><init>(Ljt;Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {v6, v0}, Lhs;->a(Ldv;)Z

    :cond_3
    iget-object v0, p0, Layh;->a:Laye;

    invoke-static {v0}, Laye;->r(Laye;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
