.class final Ladb;
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
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/util/ArrayList;

.field private synthetic d:Lacz;


# direct methods
.method constructor <init>(Lacz;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Ladb;->d:Lacz;

    iput-object p2, p0, Ladb;->a:Ljava/lang/String;

    iput-object p3, p0, Ladb;->b:Ljava/lang/String;

    iput-object p4, p0, Ladb;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Ladb;->d:Lacz;

    iget v0, v0, Lacz;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " WeekRecService requestWeekRecData RenetTimes currentNetTimes "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ladb;->d:Lacz;

    iget v1, v1, Lacz;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Ladb;->d:Lacz;

    iget v1, v0, Lacz;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lacz;->a:I

    iget-object v0, p0, Ladb;->d:Lacz;

    iget-object v1, p0, Ladb;->a:Ljava/lang/String;

    iget-object v2, p0, Ladb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lacz;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ladb;->d:Lacz;

    iput v3, v0, Lacz;->a:I

    invoke-static {p2}, La;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ladb;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " WeekRecService requestWeekRecData categoryInfoList "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ladb;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Ladb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_3

    iget-object v1, p0, Ladb;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lla;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WeekRecService requestOneWeekSoftListData  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v6, p0, Ladb;->d:Lacz;

    invoke-static {v6, v0, v1}, Lacz;->a(Lacz;Lcom/tencent/tmsecure/module/market/MarketManager;Lla;)V

    iget-object v1, p0, Ladb;->d:Lacz;

    iget v1, v1, Lacz;->a:I

    if-eqz v1, :cond_2

    iget-object v0, p0, Ladb;->d:Lacz;

    iput v3, v0, Lacz;->a:I

    move v0, v2

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Ladb;->d:Lacz;

    iget-object v0, v0, Lacz;->c:Ljt;

    iget-object v1, p0, Ladb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljt;->a(Ljava/util/List;)Z

    iget-object v0, p0, Ladb;->d:Lacz;

    iget-object v0, p0, Ladb;->a:Ljava/lang/String;

    iget-object v1, p0, Ladb;->b:Ljava/lang/String;

    invoke-static {}, Lov;->a()Lov;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lov;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ladb;->d:Lacz;

    iget-object v0, v0, Lacz;->b:Lis;

    invoke-virtual {v0, v2}, Lis;->a(Z)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2
.end method
