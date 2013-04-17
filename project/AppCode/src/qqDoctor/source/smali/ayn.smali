.class final Layn;
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
.field private synthetic a:Layj;


# direct methods
.method constructor <init>(Layj;)V
    .locals 0

    iput-object p1, p0, Layn;->a:Layj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 6

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Layn;->a:Layj;

    invoke-static {v0}, Layj;->g(Layj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, La;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Layn;->a:Layj;

    invoke-static {v1}, Layj;->h(Layj;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Layn;->a:Layj;

    invoke-static {v0}, Layj;->i(Layj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-lez v0, :cond_0

    iget-object v0, p0, Layn;->a:Layj;

    invoke-static {v0}, Layj;->k(Layj;)Ljt;

    move-result-object v0

    iget-object v3, p0, Layn;->a:Layj;

    invoke-static {v3}, Layj;->j(Layj;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Ljt;->a:Lhs;

    new-instance v5, Ljv;

    invoke-direct {v5, v0, v3}, Ljv;-><init>(Ljt;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lhs;->a(Ldv;)Z

    iget-object v0, p0, Layn;->a:Layj;

    invoke-static {v0}, Layj;->l(Layj;)Lho;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lho;->m(J)V

    goto :goto_0
.end method
