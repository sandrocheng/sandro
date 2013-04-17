.class final Lbno;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:I

.field private synthetic c:Lbnd;


# direct methods
.method constructor <init>(Lbnd;Lkw;I)V
    .locals 0

    iput-object p1, p0, Lbno;->c:Lbnd;

    iput-object p2, p0, Lbno;->a:Lkw;

    iput p3, p0, Lbno;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v1, LQQPIM/SoftKey;

    invoke-direct {v1}, LQQPIM/SoftKey;-><init>()V

    iget-object v0, p0, Lbno;->a:Lkw;

    invoke-virtual {v0}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, LQQPIM/SoftKey;->setUid(Ljava/lang/String;)V

    iget-object v0, p0, Lbno;->a:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, LQQPIM/SoftKey;->setSoftname(Ljava/lang/String;)V

    iget-object v0, p0, Lbno;->a:Lkw;

    invoke-virtual {v0}, Lkw;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, LQQPIM/SoftKey;->setVersion(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, LQQPIM/FBIllegaSoft;

    invoke-direct {v0}, LQQPIM/FBIllegaSoft;-><init>()V

    invoke-virtual {v0, v1}, LQQPIM/FBIllegaSoft;->setSoftkey(LQQPIM/SoftKey;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, LQQPIM/FBIllegaSoft;->setCompany(Ljava/lang/String;)V

    iget v1, p0, Lbno;->b:I

    invoke-virtual {v0, v1}, LQQPIM/FBIllegaSoft;->setIllreason(I)V

    sget-object v1, LQQPIM/FBIReportType;->FBI_FEEDBACK:LQQPIM/FBIReportType;

    invoke-virtual {v1}, LQQPIM/FBIReportType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/FBIllegaSoft;->setReporttype(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportFBIllegaReason(Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lbno;->c:Lbnd;

    invoke-static {v1}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget v0, p0, Lbno;->b:I

    iput v0, v1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lbno;->c:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lbno;->a:Lkw;

    invoke-virtual {v0}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbno;->a:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbno;->a:Lkw;

    invoke-virtual {v0}, Lkw;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lbno;->c:Lbnd;

    invoke-static {v0}, Lbnd;->x(Lbnd;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b042f

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lbno;->c:Lbnd;

    invoke-static {v0}, Lbnd;->y(Lbnd;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b028b

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_3
.end method
