.class final Laym;
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

    iput-object p1, p0, Laym;->a:Layj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 2

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Laym;->a:Layj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Layj;->setReloadData(Z)V

    iget-object v0, p0, Laym;->a:Layj;

    invoke-static {v0}, Layj;->e(Layj;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laym;->a:Layj;

    invoke-static {p2}, La;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Layj;->a(Layj;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Laym;->a:Layj;

    invoke-static {v0}, Layj;->f(Layj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
