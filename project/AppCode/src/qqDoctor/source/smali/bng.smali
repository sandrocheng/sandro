.class final Lbng;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbnd;


# direct methods
.method constructor <init>(Lbnd;)V
    .locals 0

    iput-object p1, p0, Lbng;->a:Lbnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    iget-object v1, p0, Lbng;->a:Lbnd;

    invoke-static {v1}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v1

    iget-object v1, v1, Lkv;->d:Lkw;

    invoke-static {v1}, La;->a(Lkw;)LQQPIM/SoftKey;

    move-result-object v1

    iget-object v2, p0, Lbng;->a:Lbnd;

    invoke-static {v2}, Lbnd;->z(Lbnd;)I

    move-result v2

    new-instance v3, Lbnh;

    invoke-direct {v3, p0}, Lbnh;-><init>(Lbng;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmsecure/module/market/MarketManager;->evaluateSoftware(LQQPIM/SoftKey;ILcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    return-void
.end method
