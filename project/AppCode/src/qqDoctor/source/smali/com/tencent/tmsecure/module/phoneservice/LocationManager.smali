.class public final Lcom/tencent/tmsecure/module/phoneservice/LocationManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbxm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Lbxm;

    invoke-virtual {v0, p1}, Lbxm;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Lbxm;

    invoke-virtual {v0, p1}, Lbxm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Lbxm;

    if-nez p4, :cond_2

    const-string v4, ""

    :goto_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v0, v0, Lbxm;->a:Lcom/tencent/tccdb/TelNumberLocator;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tccdb/TelNumberLocator;->getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v4, p4

    goto :goto_1
.end method

.method public final getProvinceNameList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Lbxm;

    invoke-virtual {v0}, Lbxm;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final isYellowPageNumber(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Lbxm;

    if-eqz p1, :cond_0

    iget-object v0, v1, Lbxm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbxm;

    invoke-direct {v0}, Lbxm;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Lbxm;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Lbxm;

    invoke-virtual {v0, p1}, Lbxm;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->a:Lbxm;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
