.class public final Lcom/tencent/tmsecure/module/antitheft/Proguard;
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

    const-class v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getHelperNumber()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getPassword()Ljava/lang/String;

    invoke-virtual {v0, v1, v1, v1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->handleSmsCommand(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setHelperNumber(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setPassword(Ljava/lang/String;)V

    return-void
.end method
