.class final Lbnh;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    iput-object p1, p0, Lbnh;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x5

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lbnh;->a:Lbng;

    iget-object v0, v0, Lbng;->a:Lbnd;

    invoke-static {v0}, Lbnd;->A(Lbnd;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lbnh;->a:Lbng;

    iget-object v0, v0, Lbng;->a:Lbnd;

    invoke-static {v0}, Lbnd;->B(Lbnd;)LQQPIM/FeatureKey;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lbnh;->a:Lbng;

    iget-object v0, v0, Lbng;->a:Lbnd;

    invoke-static {v0}, Lbnd;->z(Lbnd;)I

    move-result v3

    const-string v0, "label_soft_score"

    const-string v4, "soft_score.sdb"

    invoke-static {v1, v0, v4}, Lfj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    new-instance v4, LQQPIM/SoftScore;

    invoke-direct {v4}, LQQPIM/SoftScore;-><init>()V

    invoke-virtual {v4, v2}, LQQPIM/SoftScore;->setSoftname(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, LQQPIM/SoftScore;->setScore(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "label_soft_score"

    const-string v3, "soft_score.sdb"

    invoke-static {v1, v0, v2, v3}, Lfj;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lbnh;->a:Lbng;

    iget-object v0, v0, Lbng;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbnh;->a:Lbng;

    iget-object v0, v0, Lbng;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbnh;->a:Lbng;

    iget-object v1, v1, Lbng;->a:Lbnd;

    invoke-static {v1}, Lbnd;->C(Lbnd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b04d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbnh;->a:Lbng;

    iget-object v1, v1, Lbng;->a:Lbnd;

    invoke-static {v1}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lbnh;->a:Lbng;

    iget-object v0, v0, Lbng;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbnh;->a:Lbng;

    iget-object v0, v0, Lbng;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbnh;->a:Lbng;

    iget-object v0, v0, Lbng;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbnh;->a:Lbng;

    iget-object v1, v1, Lbng;->a:Lbnd;

    invoke-static {v1}, Lbnd;->D(Lbnd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b04d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbnh;->a:Lbng;

    iget-object v1, v1, Lbng;->a:Lbnd;

    invoke-static {v1}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
