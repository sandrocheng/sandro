.class public abstract Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBlackListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntityConverter()Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;
.end method

.method public abstract getKeyWordDao()Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;
.end method

.method public abstract getLastCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
.end method

.method public getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;
    .locals 2

    new-instance v0, Lbub;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbub;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract getPrivateCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrivateSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    move-result-object v0

    return-object v0
.end method

.method public abstract getWhiteListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isDualSimDevice()Z
.end method
