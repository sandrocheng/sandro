.class final Lbuu;
.super Lbuh$a;


# instance fields
.field private synthetic g:Lbuo$b;


# direct methods
.method constructor <init>(Lbuo$b;)V
    .locals 0

    iput-object p1, p0, Lbuu;->g:Lbuo$b;

    invoke-direct {p0}, Lbuh$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget v2, p0, Lbuh$a;->b:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lbuu;->g:Lbuo$b;

    invoke-static {v2}, Lbuo$b;->d(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v2

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    new-instance v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    iget-object v1, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iput-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget v1, p0, Lbuh$a;->e:I

    iput v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    iget v1, p0, Lbuh$a;->b:I

    iput v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lbuu;->g:Lbuo$b;

    iget-object v3, p0, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-static {v3}, Lbuo$b;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v1, v4

    iput-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    iget v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-eqz v1, :cond_0

    const-class v1, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->isDualSimDevice()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iput-boolean v5, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->isBlocked:Z

    iget-object v1, p0, Lbuu;->g:Lbuo$b;

    invoke-static {v1}, Lbuo$b;->b(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v1

    iget-object v3, p0, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-interface {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v3, p0, Lbuu;->g:Lbuo$b;

    iget-object v4, p0, Lbuu;->g:Lbuo$b;

    invoke-static {v4}, Lbuo$b;->e(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v4

    invoke-static {v3, v0, v4, v2}, Lbuo$b;->a(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ne v1, v5, :cond_1

    iget-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v3, p0, Lbuu;->g:Lbuo$b;

    invoke-static {v3, v0}, Lbuo$b;->a(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iput-object v2, p0, Lbuh$a;->c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    return-void

    :cond_2
    iput-boolean v4, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->isBlocked:Z

    iget-object v1, p0, Lbuu;->g:Lbuo$b;

    invoke-static {v1}, Lbuo$b;->b(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v1

    iget-object v3, p0, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-interface {v1, v0, v3}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->unBlockSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    goto :goto_0
.end method
