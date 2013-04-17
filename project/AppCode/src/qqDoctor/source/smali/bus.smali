.class final Lbus;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;


# direct methods
.method constructor <init>(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V
    .locals 0

    iput-object p1, p0, Lbus;->a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getMmsTransactionHelper()Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;

    move-result-object v0

    const/16 v1, 0x83

    iget-object v2, p0, Lbus;->a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-interface {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;->sendNotifyRespInd(ILcom/tencent/tmsecure/module/aresengine/SmsEntity;)I

    return-void
.end method
