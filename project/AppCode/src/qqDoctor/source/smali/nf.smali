.class final Lnf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lnd;


# direct methods
.method constructor <init>(Lnd;)V
    .locals 0

    iput-object p1, p0, Lnf;->a:Lnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-wide/16 v7, 0x64

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dC()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lho;->dD()V

    const-class v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getMemoryHelper()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getFreeMemery()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getMemoryHelper()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getTotalMemery()J

    move-result-wide v5

    mul-long/2addr v3, v7

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    int-to-long v3, v0

    sub-long v0, v3, v1

    long-to-int v0, v0

    iget-object v1, p0, Lnf;->a:Lnd;

    const/16 v2, 0x6734

    invoke-virtual {v1, v2, v0}, Lnd;->b(II)V

    goto :goto_0
.end method
