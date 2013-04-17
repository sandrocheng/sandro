.class final Lazb;
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
.field private synthetic a:Layy;


# direct methods
.method constructor <init>(Layy;)V
    .locals 0

    iput-object p1, p0, Lazb;->a:Layy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lazb;->a:Layy;

    invoke-static {v1}, Layy;->e(Layy;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lazb;->a:Layy;

    invoke-static {v0}, Layy;->f(Layy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lazb;->a:Layy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Layy;->setReloadData(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lazb;->a:Layy;

    invoke-static {p2}, La;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lazb;->a:Layy;

    invoke-virtual {v2}, Layy;->e()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v2

    iget-object v3, p0, Lazb;->a:Layy;

    invoke-static {v3}, Layy;->g(Layy;)I

    move-result v3

    invoke-static {v1, v2, v3}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Layy;->a(Layy;Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lazb;->a:Layy;

    invoke-static {v0}, Layy;->h(Layy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lazb;->a:Layy;

    invoke-static {v0}, Layy;->k(Layy;)Ljt;

    move-result-object v1

    iget-object v0, p0, Lazb;->a:Layy;

    invoke-static {v0}, Layy;->i(Layy;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, La;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lazb;->a:Layy;

    invoke-static {v0}, Layy;->j(Layy;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v1, Ljt;->a:Lhs;

    new-instance v0, Lka;

    invoke-direct/range {v0 .. v5}, Lka;-><init>(Ljt;Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {v6, v0}, Lhs;->a(Ldv;)Z

    goto :goto_0
.end method
