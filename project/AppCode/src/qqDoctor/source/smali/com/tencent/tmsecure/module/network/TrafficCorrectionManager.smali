.class public final Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbwr;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CodeName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getAllProvinces()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CodeName;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->b:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lbwj;->b()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getBrands(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CodeName;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->b:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lbwj;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCarries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CodeName;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->b:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lbwj;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCities(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CodeName;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->b:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lbwj;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getConfig()Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Lbwr;

    iget-object v0, v0, Lbwr;->a:Lbws;

    invoke-virtual {v0}, Lbws;->a()Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCorrectionResult(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, -0x1869f

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Lbwr;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    const/4 v2, -0x6

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v5}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    iput-object p2, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iput-object p3, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    new-instance v0, Lcom/tencent/tccdb/SmsInfo;

    iget-object v3, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Lcom/tencent/tccdb/SmsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v6, v4, Lbwr;->b:Landroid/content/Context;

    invoke-static {v6, v0, v3}, Lcom/tencent/tccdb/SmsParser;->getWrongSmsType(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/Ret;

    iget-object v0, v0, Lcom/tencent/tccdb/Ret;->sms:Ljava/lang/String;

    const/16 v2, -0x67

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, v4, Lbwr;->a:Lbws;

    iget-object v0, v0, Lbws;->a:Lbtl;

    const-string v3, "MATCH_RULE_UPDATE_TIME"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v3, v8, v9}, Lbtl;->b(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x240c8400

    cmp-long v0, v6, v8

    if-lez v0, :cond_9

    invoke-virtual {v4, v5}, Lbwr;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "updateMatchRule 1 result = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v1

    :cond_4
    :goto_1
    iget-object v3, v4, Lbwr;->a:Lbws;

    sget-object v6, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_USE:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v6}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v6

    invoke-virtual {v3, v6}, Lbws;->a(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v4, p1, v3, v5, v1}, Lbwr;->a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Z)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_5

    iget-object v6, v4, Lbwr;->a:Lbws;

    sget-object v7, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_LEFT:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v7}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Lbws;->a(I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v4, p1, v6, v5, v2}, Lbwr;->a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Z)Z

    move-result v3

    :cond_5
    if-nez v3, :cond_8

    if-nez v0, :cond_8

    invoke-virtual {v4, v5}, Lbwr;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "updateMatchRule 2 result = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    move v3, v0

    move v0, v1

    :goto_4
    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbwr;

    invoke-direct {v0}, Lbwr;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Lbwr;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Lbwr;

    invoke-virtual {v0, p1}, Lbwr;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Lbwr;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final setConfig(Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;)I
    .locals 9

    const/4 v8, 0x2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0x1869f

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Lbwr;

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    iget-object v6, v2, Lbwr;->a:Lbws;

    new-instance v7, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    invoke-direct {v7, v0, v3, v4, v5}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v6, Lbws;->a:Lbtl;

    const-string v4, "SIM_CARD_PROVINCE"

    iget-object v0, v7, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4, v0, v1}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v6, Lbws;->a:Lbtl;

    const-string v4, "SIM_CARD_CITY"

    iget-object v0, v7, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v4, v0, v1}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v6, Lbws;->a:Lbtl;

    const-string v4, "SIM_CARD_CARRY"

    iget-object v0, v7, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v4, v0, v1}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v6, Lbws;->a:Lbtl;

    const-string v4, "SIM_CARD_BRAND"

    iget-object v0, v7, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v4, v0, v1}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v6, Lbws;->a:Lbtl;

    iget-object v0, v0, Lbtl;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, v2, Lbwr;->a:Lbws;

    iget-object v0, v0, Lbws;->a:Lbtl;

    const-string v3, "MATCH_RULE_UPDATE_TIME"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lbtl;->a(Ljava/lang/String;J)V

    iget-object v0, v2, Lbwr;->a:Lbws;

    invoke-virtual {v0}, Lbws;->a()Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-nez v0, :cond_7

    :cond_2
    const/16 v0, -0x39

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_2

    :cond_5
    const-string v0, ""

    goto :goto_3

    :cond_6
    const-string v0, ""

    goto :goto_4

    :cond_7
    new-instance v5, LQQPIM/STQuery;

    invoke-direct {v5, v3, v4, v0, v8}, LQQPIM/STQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, v2, Lbwr;->c:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v5, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getOperatorDataSyncInfo(LQQPIM/STQuery;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-eq v0, v8, :cond_8

    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryResult;

    invoke-virtual {v0}, LQQPIM/STQueryResult;->getQueryinfo()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, v2, Lbwr;->a:Lbws;

    iget-object v4, v3, Lbws;->a:Lbtl;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QUERY_INFO"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v6}, LQQPIM/EQueryType;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v1}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, v3, Lbws;->a:Lbtl;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QUERY_INFO"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, LQQPIM/EQueryType;->E_QUERY_MONEY:LQQPIM/EQueryType;

    invoke-virtual {v6}, LQQPIM/EQueryType;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v1}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v3, Lbws;->a:Lbtl;

    iget-object v3, v3, Lbtl;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, v2, Lbwr;->a:Lbws;

    invoke-virtual {v3, v0}, Lbws;->b(Ljava/util/List;)V

    :cond_9
    iget-object v0, v2, Lbwr;->a:Lbws;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v0, Lbws;->a:Lbtl;

    const-string v4, "OPERATOR_CONFIG_UPDATE_TIME"

    invoke-virtual {v0, v4, v2, v3}, Lbtl;->a(Ljava/lang/String;J)V

    move v0, v1

    goto/16 :goto_0

    :cond_a
    const/4 v0, -0x6

    goto/16 :goto_0
.end method

.method public final startCorrection(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x1869f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->a:Lbwr;

    if-nez p1, :cond_1

    const/4 v0, -0x6

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lbwr;->a:Lbws;

    sget-object v1, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v1}, LQQPIM/EQueryType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lbws;->b(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/16 v0, -0x68

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, LQQPIM/STQueryInfo;->getStrCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "[MONTH]"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "[YEAR]"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    const-string v6, "[MONTH]"

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "[YEAR]"

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    new-instance v5, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;

    invoke-direct {v5, v4, v0}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
