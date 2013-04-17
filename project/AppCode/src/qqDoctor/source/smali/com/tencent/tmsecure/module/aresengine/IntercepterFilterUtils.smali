.class public final Lcom/tencent/tmsecure/module/aresengine/IntercepterFilterUtils;
.super Ljava/lang/Object;


# static fields
.field public static final INTERCEPTER_MODE_ACCEPTED_ONLY_WHITELIST:I = 0x2

.field public static final INTERCEPTER_MODE_REJECTED_ONLY_BLACKLIST:I = 0x1

.field public static final INTERCEPTER_MODE_STANDARD:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIntercepterMode(I)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_0
    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    const-string v1, "outing_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_1
    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    const-string v1, "incoming_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_2
    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    const-string v1, "system_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_3
    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    goto/16 :goto_0

    :pswitch_1
    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v3

    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_4
    invoke-virtual {v3, v6, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v3, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v3, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x10

    invoke-virtual {v3, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x20

    invoke-virtual {v3, v2, v6}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x40

    invoke-virtual {v3, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x80

    invoke-virtual {v3, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    const-string v1, "outing_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v3

    if-eqz v2, :cond_5

    invoke-virtual {v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_5
    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    const-string v1, "incoming_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v3

    if-eqz v2, :cond_6

    invoke-virtual {v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_6
    invoke-virtual {v3, v6, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v3, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v3, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x10

    invoke-virtual {v3, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x20

    invoke-virtual {v3, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    const-string v1, "system_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_7
    invoke-virtual {v2, v6, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v2, v7, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v2, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x10

    invoke-virtual {v2, v1, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x40

    invoke-virtual {v2, v1, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x80

    invoke-virtual {v2, v1, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x100

    invoke-virtual {v2, v1, v6}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    goto/16 :goto_0

    :pswitch_2
    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v3

    if-eqz v2, :cond_8

    invoke-virtual {v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v3, v6, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v3, v7, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v3, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x10

    invoke-virtual {v3, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x20

    invoke-virtual {v3, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x40

    invoke-virtual {v3, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x80

    invoke-virtual {v3, v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    const-string v1, "outing_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v3

    if-eqz v2, :cond_9

    invoke-virtual {v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_9
    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    const-string v1, "incoming_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v3

    if-eqz v2, :cond_a

    invoke-virtual {v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v3, v6, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v3, v7, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v3, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x10

    invoke-virtual {v3, v2, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v2, 0x20

    invoke-virtual {v3, v2, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    const-string v1, "system_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v2

    if-eqz v1, :cond_b

    invoke-virtual {v1, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v2, v6, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v2, v7, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v2, v8, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x10

    invoke-virtual {v2, v1, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    invoke-virtual {v2, v1, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x40

    invoke-virtual {v2, v1, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x80

    invoke-virtual {v2, v1, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x100

    invoke-virtual {v2, v1, v6}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
