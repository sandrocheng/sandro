.class public final Lbwr;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field public a:Lbws;

.field public b:Landroid/content/Context;

.field public c:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-object p0

    :sswitch_0
    const-string p0, "\u5317\u4eac"

    goto :goto_0

    :sswitch_1
    const-string p0, "\u5e7f\u4e1c"

    goto :goto_0

    :sswitch_2
    const-string p0, "\u4e0a\u6d77"

    goto :goto_0

    :sswitch_3
    const-string p0, "\u5929\u6d25"

    goto :goto_0

    :sswitch_4
    const-string p0, "\u91cd\u5e86"

    goto :goto_0

    :sswitch_5
    const-string p0, "\u8fbd\u5b81"

    goto :goto_0

    :sswitch_6
    const-string p0, "\u6c5f\u82cf"

    goto :goto_0

    :sswitch_7
    const-string p0, "\u6e56\u5317"

    goto :goto_0

    :sswitch_8
    const-string p0, "\u56db\u5ddd"

    goto :goto_0

    :sswitch_9
    const-string p0, "\u9655\u897f"

    goto :goto_0

    :sswitch_a
    const-string p0, "\u6cb3\u5317"

    goto :goto_0

    :sswitch_b
    const-string p0, "\u5c71\u897f"

    goto :goto_0

    :sswitch_c
    const-string p0, "\u6cb3\u5357"

    goto :goto_0

    :sswitch_d
    const-string p0, "\u5409\u6797"

    goto :goto_0

    :sswitch_e
    const-string p0, "\u9ed1\u9f99\u6c5f"

    goto :goto_0

    :sswitch_f
    const-string p0, "\u5185\u8499\u53e4"

    goto :goto_0

    :sswitch_10
    const-string p0, "\u5c71\u4e1c"

    goto :goto_0

    :sswitch_11
    const-string p0, "\u5b89\u5fbd"

    goto :goto_0

    :sswitch_12
    const-string p0, "\u6d59\u6c5f"

    goto :goto_0

    :sswitch_13
    const-string p0, "\u798f\u5efa"

    goto :goto_0

    :sswitch_14
    const-string p0, "\u6e56\u5357"

    goto :goto_0

    :sswitch_15
    const-string p0, "\u5e7f\u897f"

    goto :goto_0

    :sswitch_16
    const-string p0, "\u6c5f\u897f"

    goto :goto_0

    :sswitch_17
    const-string p0, "\u8d35\u5dde"

    goto :goto_0

    :sswitch_18
    const-string p0, "\u4e91\u5357"

    goto :goto_0

    :sswitch_19
    const-string p0, "\u897f\u85cf"

    goto :goto_0

    :sswitch_1a
    const-string p0, "\u6d77\u5357"

    goto :goto_0

    :sswitch_1b
    const-string p0, "\u7518\u8083"

    goto :goto_0

    :sswitch_1c
    const-string p0, "\u5b81\u590f"

    goto :goto_0

    :sswitch_1d
    const-string p0, "\u9752\u6d77"

    goto :goto_0

    :sswitch_1e
    const-string p0, "\u65b0\u7586"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_1f
    const-string p0, "QUAN_QIU_TONG"

    goto :goto_0

    :sswitch_20
    const-string p0, "SHEN_ZHOU_XING"

    goto :goto_0

    :sswitch_21
    const-string p0, "DONG_GAN"

    goto :goto_0

    :sswitch_22
    const-string p0, "UNICOM_2G"

    goto :goto_0

    :sswitch_23
    const-string p0, "UNICOM_3G"

    goto :goto_0

    :sswitch_24
    const-string p0, "CHINA_TELECOM"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
        0x19 -> :sswitch_6
        0x1b -> :sswitch_7
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x137 -> :sswitch_a
        0x15f -> :sswitch_b
        0x173 -> :sswitch_c
        0x1af -> :sswitch_d
        0x1c3 -> :sswitch_e
        0x1d7 -> :sswitch_f
        0x213 -> :sswitch_10
        0x227 -> :sswitch_11
        0x23b -> :sswitch_12
        0x24f -> :sswitch_13
        0x2db -> :sswitch_14
        0x303 -> :sswitch_15
        0x317 -> :sswitch_16
        0x353 -> :sswitch_17
        0x367 -> :sswitch_18
        0x37b -> :sswitch_19
        0x382 -> :sswitch_1a
        0x3a3 -> :sswitch_1b
        0x3b7 -> :sswitch_1c
        0x3cb -> :sswitch_1d
        0x3df -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2710 -> :sswitch_1f
        0x4e20 -> :sswitch_21
        0x7530 -> :sswitch_20
        0xc350 -> :sswitch_22
        0xea60 -> :sswitch_24
        0x11170 -> :sswitch_23
    .end sparse-switch
.end method


# virtual methods
.method public final a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I
    .locals 13

    const/4 v12, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lbwr;->a:Lbws;

    sget-object v1, LQQPIM/EQueryType;->E_QUERY_TRAFFIC:LQQPIM/EQueryType;

    invoke-virtual {v1}, LQQPIM/EQueryType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lbws;->b(I)Ljava/util/List;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbwr;->a:Lbws;

    invoke-virtual {v0}, Lbws;->a()Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    move-result-object v5

    new-instance v0, LQQPIM/STSmsInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->getBody()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    invoke-static {v4, v12}, Lbwr;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    invoke-static {v5, v8}, Lbwr;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2710

    const-string v9, ""

    move v10, v8

    move v11, v8

    invoke-direct/range {v0 .. v11}, LQQPIM/STSmsInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZ)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v3, p0, Lbwr;->c:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getTrafficTemplate(LQQPIM/STSmsInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v12, :cond_0

    if-nez v0, :cond_5

    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STRetInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STTrafficTemplate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LQQPIM/STTrafficTemplate;->getMatchRules()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LQQPIM/STTrafficTemplate;->getMatchRules()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lbwr;->a:Lbws;

    iget-object v2, v1, Lbws;->a:Lbtl;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MATCH_RULE"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_LEFT:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v4}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v8}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lbws;->a:Lbtl;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MATCH_RULE"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, LQQPIM/ETrafficTemplateType;->E_TRAFFIC_TEMPLATE_TYPE_USE:LQQPIM/ETrafficTemplateType;

    invoke-virtual {v4}, LQQPIM/ETrafficTemplateType;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v8}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v1, Lbws;->a:Lbtl;

    iget-object v1, v1, Lbtl;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lbwr;->a:Lbws;

    invoke-virtual {v1, v0}, Lbws;->a(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lbwr;->a:Lbws;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Lbws;->a:Lbtl;

    const-string v3, "MATCH_RULE_UPDATE_TIME"

    invoke-virtual {v0, v3, v1, v2}, Lbtl;->a(Ljava/lang/String;J)V

    :goto_1
    return v8

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryInfo;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, v0, LQQPIM/STQueryInfo;->strCode:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_3
    const-string v2, "|"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, v0, LQQPIM/STQueryInfo;->strCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_4
    const/16 v8, -0x65

    goto :goto_1

    :cond_5
    const/16 v8, -0x66

    goto :goto_1
.end method

.method public final a(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tccdb/MatchRule;",
            ">;",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            "Z)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v4, Lcom/tencent/tccdb/SmsInfo;

    iget-object v0, p3, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Lcom/tencent/tccdb/SmsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v0, v1

    move v3, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Used "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " kb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iput v3, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    iput v8, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    :cond_1
    :goto_1
    return v1

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/MatchRule;

    iget-object v7, p0, Lbwr;->b:Landroid/content/Context;

    invoke-static {v7, v4, v0, v5}, Lcom/tencent/tccdb/SmsParser;->getNumberEntrance(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Lcom/tencent/tccdb/MatchRule;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/Ret;

    iget v0, v0, Lcom/tencent/tccdb/Ret;->number:I

    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v0, v1

    move v3, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    move v1, v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Left "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " kb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_1

    iput v8, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    iput v3, p1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    goto :goto_1

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/MatchRule;

    iget-object v7, p0, Lbwr;->b:Landroid/content/Context;

    invoke-static {v7, v4, v0, v5}, Lcom/tencent/tccdb/SmsParser;->getNumberEntrance(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Lcom/tencent/tccdb/MatchRule;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/Ret;

    iget v0, v0, Lcom/tencent/tccdb/Ret;->number:I

    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    goto :goto_2
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lbwr;->b:Landroid/content/Context;

    new-instance v0, Lbws;

    invoke-direct {v0}, Lbws;-><init>()V

    iput-object v0, p0, Lbwr;->a:Lbws;

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    iput-object v0, p0, Lbwr;->c:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    return-void
.end method
