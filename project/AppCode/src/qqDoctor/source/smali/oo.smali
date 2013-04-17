.class public final Loo;
.super Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loo$a;
    }
.end annotation


# static fields
.field private static b:Z


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;-><init>()V

    iput-object p1, p0, Loo;->a:Landroid/content/Context;

    invoke-static {}, Lu;->a()Lu;

    move-result-object v0

    invoke-virtual {v0}, Lu;->b()I

    move-result v0

    if-le v0, v1, :cond_0

    sput-boolean v1, Loo;->b:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lft;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v1, Loo;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Loo;->b:Z

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Loo;->b:Z

    return v0
.end method


# virtual methods
.method public final getBlackListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 2

    new-instance v0, Lhq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    return-object v0
.end method

.method public final getCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 2

    new-instance v0, Lhi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhi;-><init>(I)V

    return-object v0
.end method

.method public final getEntityConverter()Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;
    .locals 1

    new-instance v0, Loo$a;

    invoke-direct {v0}, Loo$a;-><init>()V

    return-object v0
.end method

.method public final getKeyWordDao()Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;
    .locals 1

    iget-object v0, p0, Loo;->a:Landroid/content/Context;

    invoke-static {v0}, Lil;->a(Landroid/content/Context;)Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    move-result-object v0

    return-object v0
.end method

.method public final getLastCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
    .locals 1

    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    return-object v0
.end method

.method public final getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    return-object v0
.end method

.method public final getPrivateCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 2

    new-instance v0, Lhi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhi;-><init>(I)V

    return-object v0
.end method

.method public final getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 2

    new-instance v0, Lhq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    return-object v0
.end method

.method public final getPrivateSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .locals 4

    new-instance v0, Ljp;

    const-string v1, "securesmslog"

    const-string v2, "secure_mms_pdu"

    const-string v3, "secure_mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .locals 4

    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v3, "mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 2

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    return-object v0
.end method

.method public final getWhiteListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 2

    new-instance v0, Lhq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    return-object v0
.end method

.method public final isDualSimDevice()Z
    .locals 1

    sget-boolean v0, Loo;->b:Z

    return v0
.end method
