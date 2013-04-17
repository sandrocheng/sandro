.class public final Lcom/tencent/tmsecure/module/aresengine/Proguard;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callAllMethods()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->addIntercepter(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->setAresEngineFactor(Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;)V

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->intercepters()Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getIntelligentSmsChecker()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->createInComingCallIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->createInComingSmsIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->createOutgoingSmsIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->createSystemCallLogIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;

    return-void
.end method
