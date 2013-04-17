.class public final Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbzd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkApkUrl(Ljava/lang/String;)I
    .locals 7

    invoke-static {}, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Lbzd;

    new-instance v6, Lbzd$a;

    invoke-direct {v6, v3}, Lbzd$a;-><init>(Lbzd;)V

    invoke-static {p1, v6}, Lbzd;->a(Ljava/lang/String;Lbzd$a;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/BrowserClient;

    const/16 v1, 0xd

    const-string v2, "1.0.0"

    iget-object v3, v3, Lbzd;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "guid"

    const-string v5, "ua"

    invoke-direct/range {v0 .. v5}, LQQPIM/BrowserClient;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, LQQPIM/BrowserUrl;

    iget-object v1, v6, Lbzd$a;->a:Ljava/lang/String;

    iget v3, v6, Lbzd$a;->b:I

    invoke-direct {v2, p1, v1, v3}, LQQPIM/BrowserUrl;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v1, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->browerCheck(LQQPIM/BrowserClient;LQQPIM/BrowserUrl;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/BrowserResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LQQPIM/BrowserResult;->getCheckAdvise()Ljava/lang/String;

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final checkUrl(Ljava/lang/String;)LQQPIM/UrlCheckResponse;
    .locals 9

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LQQPIM/UrlCheckResponse;

    const-string v5, ""

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, LQQPIM/UrlCheckResponse;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Lbzd;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v3, LQQPIM/UrlCheckResponse;

    const-string v8, ""

    move-object v4, p1

    move v6, v2

    move v7, v2

    invoke-direct/range {v3 .. v8}, LQQPIM/UrlCheckResponse;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lbzd;->a()V

    iget-object v0, v1, Lbzd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, p1, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->checkUrl(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UrlCheckResponse;

    if-eqz v0, :cond_5

    iget-object v3, v0, LQQPIM/UrlCheckResponse;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    new-instance v3, LQQPIM/UrlCheckResponse;

    const-string v8, ""

    move-object v4, p1

    move v6, v2

    move v7, v2

    invoke-direct/range {v3 .. v8}, LQQPIM/UrlCheckResponse;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UrlCheckResponse;

    invoke-virtual {v0}, LQQPIM/UrlCheckResponse;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lbzd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lbzd;->c:Ljava/util/LinkedHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v1, Lbzd;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iput-wide v2, v1, Lbzd;->d:J

    goto/16 :goto_0

    :cond_8
    new-instance v3, LQQPIM/UrlCheckResponse;

    const-string v8, ""

    move-object v4, p1

    move v6, v2

    move v7, v2

    invoke-direct/range {v3 .. v8}, LQQPIM/UrlCheckResponse;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public final checkUrlEx(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LQQPIM/UrlCheckResponse;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Lbzd;

    invoke-virtual {v0, p1}, Lbzd;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbzd;

    invoke-direct {v0}, Lbzd;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Lbzd;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Lbzd;

    invoke-virtual {v0, p1}, Lbzd;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Lbzd;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
