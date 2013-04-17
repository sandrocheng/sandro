.class final Lbtw$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/common/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lbtw;


# direct methods
.method constructor <init>(Lbtw;)V
    .locals 0

    iput-object p1, p0, Lbtw$a;->a:Lbtw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isMatch(I)Z
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onProcessing(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/common/DataEntity;->what()I

    move-result v0

    new-instance v3, Lcom/tencent/tmsecure/common/DataEntity;

    invoke-direct {v3, v0}, Lcom/tencent/tmsecure/common/DataEntity;-><init>(I)V

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v3}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "has_exceprtion"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-object v3

    :pswitch_0
    invoke-virtual {p1}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "sms"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->a([B)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v4

    iget-object v0, p0, Lbtw$a;->a:Lbtw;

    const-string v5, "incoming_sms"

    invoke-virtual {v0, v5}, Lbtw;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v0

    :goto_1
    if-eqz v5, :cond_4

    instance-of v6, v0, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;

    if-eqz v6, :cond_4

    invoke-interface {v5}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->a()V

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v2, v6, v8

    invoke-virtual {v0, v4, v6}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->filter(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v2

    invoke-virtual {v0, v5}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->a(Lcom/tencent/tmsecure/module/aresengine/DataHandler;)V

    if-eqz v2, :cond_4

    iget-boolean v0, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->isBlocked:Z

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;->mPkg:Ljava/lang/String;

    iget v4, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    iput v4, v1, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;->mField:I

    iget v4, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    iput v4, v1, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;->mState:I

    iget-boolean v2, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->isBlocked:Z

    iput-boolean v2, v1, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;->mBlocked:Z

    invoke-virtual {v3}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "information"

    invoke-static {v1}, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;->a(Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "blocked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->a([B)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v2

    const-string v4, "informations"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lbtw$a;->a:Lbtw;

    const-string v6, "incoming_sms"

    invoke-virtual {v5, v6}, Lbtw;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v5

    const-string v6, "event_sender"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataMonitor()Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    move-result-object v0

    instance-of v5, v0, Lbuo$a;

    if-eqz v5, :cond_2

    check-cast v0, Lbuo$a;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    aput-object v6, v5, v8

    aput-object v4, v5, v9

    invoke-virtual {v0, v2, v5}, Lbuo$a;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->notifyDataReached(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "command"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lbtx;->a()Lbtx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbtx;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lbtx;->a()Lbtx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbtx;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->supportThisPhone()Z

    move-result v0

    invoke-virtual {v3}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "support_this_phone"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pkg"

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
