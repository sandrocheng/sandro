.class public Lcom/tencent/tmsecure/module/market/MarketManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final JCE_EXPAND_KEY:Ljava/lang/String; = "expand"

.field public static final REQUEST_TYPE_CLASSIFIED_SOFTWARE:I = 0x4

.field public static final REQUEST_TYPE_COOPERATE_CATEGORY:I = 0x9

.field public static final REQUEST_TYPE_DAILY_SOFTWARE:I = 0x6

.field public static final REQUEST_TYPE_GAME_SOFTWARE:I = 0x10

.field public static final REQUEST_TYPE_MY_SOFTWARE:I = 0x0

.field public static final REQUEST_TYPE_NECCESSARY_SOFTWARE:I = 0x2

.field public static final REQUEST_TYPE_NEW_PRODUCT:I = 0xa

.field public static final REQUEST_TYPE_PROFESSIONAL_KILLER:I = 0xd

.field public static final REQUEST_TYPE_RELEASE_SOFTWARE:I = 0x7

.field public static final REQUEST_TYPE_ROOT_TOOLS:I = 0xe

.field public static final REQUEST_TYPE_SEARCH_SOFTWARE:I = 0x8

.field public static final REQUEST_TYPE_SOFTWARE_CATEGORY:I = 0x3

.field public static final REQUEST_TYPE_SOFTWARE_DETAILS:I = 0x5

.field public static final REQUEST_TYPE_SOFTWARE_MANAGER:I = 0x1

.field public static final REQUEST_TYPE_SPECIAL_CATEGORY:I = 0xb

.field public static final REQUEST_TYPE_SPECIAL_SOFTWARE:I = 0xc

.field public static final REQUEST_TYPE_WEEKLY_SOFTWARE:I = 0xf

.field public static final RESPONESE_TYPE_FAILED:I = 0x1

.field public static final RESPONESE_TYPE_NETWORK_ERROR:I = 0x2

.field public static final RESPONESE_TYPE_SUCCESS:I

.field public static final SORT_TYPE_NORMAL:I


# instance fields
.field private a:Lbwd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluateSoftware(LQQPIM/SoftKey;ILcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/SoftKey;",
            "I",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    new-instance v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    new-instance v2, LQQPIM/CommentInfo;

    invoke-direct {v2}, LQQPIM/CommentInfo;-><init>()V

    invoke-virtual {v2, p1}, LQQPIM/CommentInfo;->setSoftkey(LQQPIM/SoftKey;)V

    invoke-virtual {v2, p2}, LQQPIM/CommentInfo;->setScore(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lbwd;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportUserComment(Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    :goto_1
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3, v1, v0}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1
.end method

.method public fetchAdList(Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "LQQPIM/ADInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    new-instance v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lbwd;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getADs(Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    :goto_1
    if-eqz p1, :cond_0

    invoke-interface {p1, v1, v2}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1
.end method

.method public fetchAnalyseInfo(Lcom/tencent/tmsecure/module/market/RequestInfo;Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/market/RequestInfo;",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftFeature;",
            ">;",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    new-instance v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lbwd;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, p2, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getAnalyseInfo(Ljava/util/List;Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    :goto_1
    if-eqz p3, :cond_0

    invoke-static {v2}, Lbwd;->b(Ljava/util/List;)V

    invoke-interface {p3, v1, v2}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1
.end method

.method public fetchCategoryList(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/market/RequestInfo;",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "Lcom/tencent/tmsecure/module/market/CategoryEx;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    new-instance v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/market/RequestInfo;->getRequestCommand()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lbwd;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v1, v0, v4, v5}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getCategoryList(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x2

    iput v1, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    :cond_3
    :goto_1
    if-eqz p2, :cond_0

    invoke-interface {p2, v2, v3}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    iput v1, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    iput v1, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    new-instance v1, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/Category;

    new-instance v5, Lcom/tencent/tmsecure/module/market/CategoryEx;

    invoke-direct {v5}, Lcom/tencent/tmsecure/module/market/CategoryEx;-><init>()V

    invoke-virtual {v5, v0}, Lcom/tencent/tmsecure/module/market/CategoryEx;->setCategory(LQQPIM/Category;)V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, LQQPIM/Category;->getExpand()[B

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    invoke-virtual {v0}, LQQPIM/Category;->getExpand()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "expand"

    new-instance v6, LQQPIM/AndroidCategoryExpand;

    invoke-direct {v6}, LQQPIM/AndroidCategoryExpand;-><init>()V

    invoke-virtual {v1, v0, v6}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AndroidCategoryExpand;

    invoke-virtual {v5, v0}, Lcom/tencent/tmsecure/module/market/CategoryEx;->setExpand(LQQPIM/AndroidCategoryExpand;)V

    :cond_6
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public fetchHotWords(LQQPIM/HotWordReqInfo;Lcom/tencent/tmsecure/module/market/IFetchHotWordListener;)V
    .locals 4

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    new-instance v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    new-instance v0, LQQPIM/HotWordResInfo;

    invoke-direct {v0}, LQQPIM/HotWordResInfo;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, v1, Lbwd;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v1, p1, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getHotWord(LQQPIM/HotWordReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    iput v3, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    :goto_1
    if-eqz p2, :cond_0

    invoke-interface {p2, v2, v0}, Lcom/tencent/tmsecure/module/market/IFetchHotWordListener;->onReceive(Lcom/tencent/tmsecure/module/market/ResponseInfo;LQQPIM/HotWordResInfo;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput v0, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/HotWordResInfo;

    goto :goto_1
.end method

.method public fetchMySoftwareListInfo(Lcom/tencent/tmsecure/module/market/RequestInfo;Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/market/RequestInfo;",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftKey;",
            ">;",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "LQQPIM/MySoftSimpleInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    new-instance v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lbwd;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, p2, v2, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getMySoftList(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    :goto_1
    if-eqz p3, :cond_0

    invoke-interface {p3, v1, v3}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1
.end method

.method public fetchSoftwareList(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/market/RequestInfo;",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    new-instance v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/market/RequestInfo;->getRequestCommand()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lbwd;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v1, v0, v4, v5}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getSoftList(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x2

    iput v1, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    :cond_3
    :goto_1
    if-eqz p2, :cond_0

    invoke-static {v5}, Lbwd;->a(Ljava/util/List;)V

    invoke-interface {p2, v2, v3}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    iput v1, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    iput v1, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    new-instance v1, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftSimpleInfo;

    new-instance v6, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;

    invoke-direct {v6}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;-><init>()V

    invoke-virtual {v6, v0}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->setSoftSimpleInfo(LQQPIM/SoftSimpleInfo;)V

    invoke-virtual {v0}, LQQPIM/SoftSimpleInfo;->getExpand()[B

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    invoke-virtual {v0}, LQQPIM/SoftSimpleInfo;->getExpand()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "expand"

    new-instance v7, LQQPIM/AndroidSimpleInfoExpand;

    invoke-direct {v7}, LQQPIM/AndroidSimpleInfoExpand;-><init>()V

    invoke-virtual {v1, v0, v7}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AndroidSimpleInfoExpand;

    invoke-virtual {v6, v0}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->setExpand(LQQPIM/AndroidSimpleInfoExpand;)V

    :cond_6
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public fetchSpecialCategory(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;)V
    .locals 8

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    new-instance v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/market/RequestInfo;->getRequestCommand()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lbwd;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v1, v0, v3, v4}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getSoftList(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v4}, Lbwd;->a(Ljava/util/List;)V

    new-instance v1, Lcom/tencent/tmsecure/module/market/SpecialCategory;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/SpecialCategory;-><init>()V

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    iput v3, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    :goto_1
    if-eqz p2, :cond_0

    invoke-interface {p2, v2, v1}, Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;->onReceive(Lcom/tencent/tmsecure/module/market/ResponseInfo;Lcom/tencent/tmsecure/module/market/SpecialCategory;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    iput v5, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v2, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    new-instance v5, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v5}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v0, "UTF-8"

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftServerInfo;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, LQQPIM/SoftServerInfo;->getExpand()[B

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/tencent/tmsecure/module/market/CategoryEx;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/market/CategoryEx;-><init>()V

    invoke-virtual {v5}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    invoke-virtual {v0}, LQQPIM/SoftServerInfo;->getExpand()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "expand"

    new-instance v6, LQQPIM/Category;

    invoke-direct {v6}, LQQPIM/Category;-><init>()V

    invoke-virtual {v5, v0, v6}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/Category;

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/market/CategoryEx;->setCategory(LQQPIM/Category;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LQQPIM/Category;->getExpand()[B

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    invoke-virtual {v0}, LQQPIM/Category;->getExpand()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "expand"

    new-instance v6, LQQPIM/AndroidCategoryExpand;

    invoke-direct {v6}, LQQPIM/AndroidCategoryExpand;-><init>()V

    invoke-virtual {v5, v0, v6}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AndroidCategoryExpand;

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/market/CategoryEx;->setExpand(LQQPIM/AndroidCategoryExpand;)V

    :cond_5
    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->setCategoryEx(Lcom/tencent/tmsecure/module/market/CategoryEx;)V

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->setSoftSimpleInfoExList(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftSimpleInfo;

    new-instance v6, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;

    invoke-direct {v6}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;-><init>()V

    invoke-virtual {v6, v0}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->setSoftSimpleInfo(LQQPIM/SoftSimpleInfo;)V

    invoke-virtual {v0}, LQQPIM/SoftSimpleInfo;->getExpand()[B

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    invoke-virtual {v0}, LQQPIM/SoftSimpleInfo;->getExpand()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "expand"

    new-instance v7, LQQPIM/AndroidSimpleInfoExpand;

    invoke-direct {v7}, LQQPIM/AndroidSimpleInfoExpand;-><init>()V

    invoke-virtual {v5, v0, v7}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AndroidSimpleInfoExpand;

    invoke-virtual {v6, v0}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->setExpand(LQQPIM/AndroidSimpleInfoExpand;)V

    :cond_8
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbwd;

    invoke-direct {v0}, Lbwd;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    invoke-virtual {v0, p1}, Lbwd;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/market/MarketManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public refreshStatus()Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    goto :goto_0
.end method

.method public reportSoftware(Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftFeature;",
            ">;",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Lbwd;

    new-instance v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    iget-object v0, v0, Lbwd;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportSoftFeature(Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    :goto_1
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v1, v0}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_1
.end method
