.class public final Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbtw;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lbvj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final addIntercepter(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    invoke-virtual {v0, p1}, Lbtw;->a(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V

    goto :goto_0
.end method

.method public final findAheadProcess()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "android.permission.RECEIVE_MMS"

    const-string v6, "android.permission.RECEIVE_WAP_PUSH"

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v1, v1, Lbtw;->d:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v9, 0x22

    invoke-virtual {v0, v8, v9}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPermissions()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPermissions()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->isSystemApp()Z

    move-result v10

    if-nez v10, :cond_1

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ge v1, v3, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_4
    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->b:Ljava/util/Map;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "incoming_call"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "incoming_sms"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "outing_sms"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "system_call"

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    :goto_1
    return-object v0

    :cond_1
    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->b:Ljava/util/Map;

    new-instance v5, Lbvi;

    invoke-direct {v5, v3}, Lbvi;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    iget-object v0, v0, Lbtw;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    goto :goto_1
.end method

.method public final getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    iget-object v1, v0, Lbtw;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The AresEngineManager\'s Factor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lbtw;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    return-object v0
.end method

.method public final getIntelligentSmsChecker()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->c:Lbvj;

    if-nez v0, :cond_0

    new-instance v0, Lbvj;

    invoke-direct {v0}, Lbvj;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->c:Lbvj;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->c:Lbvj;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    iget-object v0, v0, Lbtw;->b:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    goto :goto_0
.end method

.method public final getMmsTransactionHelper()Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;
    .locals 3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    iget-object v1, v0, Lbtw;->e:Lbvg;

    if-nez v1, :cond_0

    new-instance v1, Lbvg;

    iget-object v2, v0, Lbtw;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lbvg;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lbtw;->e:Lbvg;

    :cond_0
    iget-object v0, v0, Lbtw;->e:Lbvg;

    return-object v0
.end method

.method public final intercepters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v1, Lbtw;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbtw;

    invoke-direct {v0}, Lbtw;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    invoke-virtual {v0, p1}, Lbtw;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final reportSms(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lbtw;->b:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportSms(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-interface {v3, v0}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;->check(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

    new-instance v6, LQQPIM/SmsReport;

    invoke-direct {v6}, LQQPIM/SmsReport;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, LQQPIM/SmsReport;->setComment(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, LQQPIM/SmsReport;->setMatchTime(I)V

    iget-object v7, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v6, v7}, LQQPIM/SmsReport;->setSender(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, LQQPIM/SmsReport;->setSms(Ljava/lang/String;)V

    iget v7, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ltz v7, :cond_2

    iget v7, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_3

    :cond_2
    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    :cond_3
    sget-object v7, Lbtw$b;->a:[[I

    iget v0, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    aget-object v0, v7, v0

    aget v0, v0, v1

    invoke-virtual {v6, v0}, LQQPIM/SmsReport;->setSmsType(I)V

    iget v0, v5, Lcom/tencent/tccdb/MMatchSysResult;->finalAction:I

    invoke-virtual {v6, v0}, LQQPIM/SmsReport;->setUcAction(I)V

    iget v0, v5, Lcom/tencent/tccdb/MMatchSysResult;->actionReason:I

    invoke-virtual {v6, v0}, LQQPIM/SmsReport;->setUcActionReason(I)V

    iget v0, v5, Lcom/tencent/tccdb/MMatchSysResult;->minusMark:I

    invoke-virtual {v6, v0}, LQQPIM/SmsReport;->setUcMinusMark(I)V

    iget v0, v5, Lcom/tencent/tccdb/MMatchSysResult;->contentType:I

    invoke-virtual {v6, v0}, LQQPIM/SmsReport;->setUcContentType(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/tencent/tccdb/MMatchSysResult;->ruleTypeID:[Lcom/tencent/tccdb/MRuleTypeID;

    array-length v7, v5

    move v0, v1

    :goto_2
    if-lt v0, v7, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    aget-object v8, v5, v0

    new-instance v9, LQQPIM/RuleTypeID;

    iget v10, v8, Lcom/tencent/tccdb/MRuleTypeID;->ruleType:I

    iget v8, v8, Lcom/tencent/tccdb/MRuleTypeID;->ruleID:I

    invoke-direct {v9, v10, v8}, LQQPIM/RuleTypeID;-><init>(II)V

    iget-object v8, v6, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method public final setAresEngineFactor(Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    iput-object p1, v0, Lbtw;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    return-void
.end method

.method public final setHoldoffMode(I)V
    .locals 5

    const/high16 v4, 0x1000

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->a:Lbtw;

    if-eqz p1, :cond_1

    const-string v0, "#"

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:**67*"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "00000000000"

    goto :goto_1

    :pswitch_1
    const-string v0, "13632545744"

    goto :goto_1

    :pswitch_2
    const-string v0, "13826512148"

    goto :goto_1

    :cond_1
    const-string v0, "#"

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "67"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
