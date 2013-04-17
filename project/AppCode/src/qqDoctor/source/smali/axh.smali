.class final Laxh;
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
.field private synthetic a:Laxe;


# direct methods
.method constructor <init>(Laxe;)V
    .locals 0

    iput-object p1, p0, Laxh;->a:Laxe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 6

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Laxh;->a:Laxe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laxe;->setReloadData(Z)V

    iget-object v0, p0, Laxh;->a:Laxe;

    invoke-static {v0}, Laxe;->e(Laxe;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, La;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Laxh;->a:Laxe;

    invoke-static {v1}, Laxe;->f(Laxe;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Laxh;->a:Laxe;

    invoke-static {v0}, Laxe;->g(Laxe;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-lez v0, :cond_0

    iget-object v0, p0, Laxh;->a:Laxe;

    invoke-static {v0}, Laxe;->i(Laxe;)Ljt;

    move-result-object v0

    iget-object v3, p0, Laxh;->a:Laxe;

    invoke-static {v3}, Laxe;->h(Laxe;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Ljt;->a:Lhs;

    new-instance v5, Lkb;

    invoke-direct {v5, v0, v3}, Lkb;-><init>(Ljt;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lhs;->a(Ldv;)Z

    iget-object v0, p0, Laxh;->a:Laxe;

    invoke-static {v0}, Laxe;->j(Laxe;)Lho;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lho;->n(J)V

    goto :goto_0
.end method
