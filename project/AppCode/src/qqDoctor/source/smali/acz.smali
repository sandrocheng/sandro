.class public final Lacz;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Lis;

.field c:Ljt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lis;->a(Landroid/content/Context;)Lis;

    move-result-object v0

    iput-object v0, p0, Lacz;->b:Lis;

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Lacz;->c:Ljt;

    return-void
.end method

.method static synthetic a(Lacz;Lcom/tencent/tmsecure/module/market/MarketManager;Lla;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    invoke-virtual {p2}, Lla;->b()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/market/RequestInfo;->categoryID:I

    iput v2, v0, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchOffset:I

    const/16 v1, 0x400

    iput v1, v0, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchSize:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    iput v2, v0, Lcom/tencent/tmsecure/module/market/RequestInfo;->sort_type:I

    iput v2, v0, Lcom/tencent/tmsecure/module/market/RequestInfo;->pushType:I

    new-instance v1, Ladc;

    invoke-direct {v1, p0, p1, p2}, Ladc;-><init>(Lacz;Lcom/tencent/tmsecure/module/market/MarketManager;Lla;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchSoftwareList(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0xb

    const-wide/16 v6, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v2, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    iput v8, v2, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/tmsecure/module/market/RequestInfo;->pushType:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestWeekRecData 11 toAppInfo mMarketDao.getLastWeekTime() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lacz;->b:Lis;

    iget-object v4, v4, Lis;->b:Landroid/content/SharedPreferences;

    const-string v5, "last_week_time"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lacz;->b:Lis;

    iget-object v4, v4, Lis;->b:Landroid/content/SharedPreferences;

    const-string v5, "last_week_time"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/tmsecure/module/market/RequestInfo;->time:Ljava/lang/String;

    new-instance v3, Lada;

    invoke-direct {v3, p0, p1, p2, v1}, Lada;-><init>(Lacz;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchCategoryList(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    iget v2, p0, Lacz;->a:I

    if-lez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    iput v8, v2, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    const/4 v3, 0x2

    iput v3, v2, Lcom/tencent/tmsecure/module/market/RequestInfo;->pushType:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestWeekRecData 22 toAppInfo mMarketDao.getLastWeekTime() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lacz;->b:Lis;

    iget-object v4, v4, Lis;->b:Landroid/content/SharedPreferences;

    const-string v5, "last_week_time"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lacz;->b:Lis;

    iget-object v4, v4, Lis;->b:Landroid/content/SharedPreferences;

    const-string v5, "last_week_time"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/tmsecure/module/market/RequestInfo;->time:Ljava/lang/String;

    new-instance v3, Ladb;

    invoke-direct {v3, p0, p1, p2, v1}, Ladb;-><init>(Lacz;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchCategoryList(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    goto :goto_0
.end method
