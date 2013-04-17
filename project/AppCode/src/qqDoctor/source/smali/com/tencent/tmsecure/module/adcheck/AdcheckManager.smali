.class public final Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbto;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkIsAd(Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Lbto;

    goto :goto_0
.end method

.method public final clear(Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Lbto;

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lbto;->a(Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clear(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Lbto;

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    return v1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;

    invoke-static {v0, v2}, Lbto;->a(Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;Z)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2
.end method

.method public final findAllNotificationInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Lbto;

    invoke-static {}, Lbto;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbto;

    invoke-direct {v0}, Lbto;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Lbto;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Lbto;

    invoke-virtual {v0, p1}, Lbto;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->a:Lbto;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
