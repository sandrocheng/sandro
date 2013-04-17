.class final Lbni;
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
        "LQQPIM/AnalyseInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lbnd;


# direct methods
.method constructor <init>(Lbnd;)V
    .locals 0

    iput-object p1, p0, Lbni;->a:Lbnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-nez v0, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v3, p0, Lbni;->a:Lbnd;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AnalyseInfo;

    invoke-static {v3, v0}, Lbnd;->a(Lbnd;LQQPIM/AnalyseInfo;)LQQPIM/AnalyseInfo;

    iget-object v0, p0, Lbni;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    iget-object v0, v0, Lkv;->d:Lkw;

    iget-object v3, p0, Lbni;->a:Lbnd;

    invoke-static {v3}, Lbnd;->t(Lbnd;)LQQPIM/AnalyseInfo;

    move-result-object v3

    invoke-virtual {v3}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v3

    invoke-virtual {v3}, LQQPIM/SoftInfo;->getFileurl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkw;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lbni;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    iget-object v3, p0, Lbni;->a:Lbnd;

    invoke-static {v3}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v3

    iget-object v3, v3, Lkv;->d:Lkw;

    invoke-virtual {v3}, Lkw;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lkv;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lbni;->a:Lbnd;

    invoke-static {v0}, Lbnd;->t(Lbnd;)LQQPIM/AnalyseInfo;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/SoftInfo;->getIsoftclass()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lbni;->a:Lbnd;

    invoke-static {v0}, Lbnd;->t(Lbnd;)LQQPIM/AnalyseInfo;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/SoftInfo;->getIsoftclass()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lbni;->a:Lbnd;

    invoke-static {v3}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v3

    iget-object v3, v3, Lkv;->d:Lkw;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lkw;->a(I)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lbni;->a:Lbnd;

    invoke-static {v0}, Lbnd;->u(Lbnd;)Z

    iget-object v0, p0, Lbni;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbni;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lbni;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lbni;->a:Lbnd;

    invoke-static {v1}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
