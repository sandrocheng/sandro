.class final Lgm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:I

.field private synthetic c:Lge;


# direct methods
.method constructor <init>(Lge;Lkw;I)V
    .locals 0

    iput-object p1, p0, Lgm;->c:Lge;

    iput-object p2, p0, Lgm;->a:Lkw;

    iput p3, p0, Lgm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v1, LQQPIM/SoftKey;

    invoke-direct {v1}, LQQPIM/SoftKey;-><init>()V

    iget-object v0, p0, Lgm;->a:Lkw;

    invoke-virtual {v0}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, LQQPIM/SoftKey;->setUid(Ljava/lang/String;)V

    iget-object v0, p0, Lgm;->a:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, LQQPIM/SoftKey;->setSoftname(Ljava/lang/String;)V

    iget-object v0, p0, Lgm;->a:Lkw;

    invoke-virtual {v0}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

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

    iget v1, p0, Lgm;->b:I

    invoke-virtual {v0, v1}, LQQPIM/FBIllegaSoft;->setIllreason(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportFBIllegaReason(Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, La;->b(I)Lfc;

    move-result-object v0

    sget-object v1, Lfc;->a:Lfc;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lgm;->c:Lge;

    iget-object v0, v0, Lge;->a:Landroid/content/Context;

    const v1, 0x7f0b042e

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :cond_0
    :goto_3
    iget-object v0, p0, Lgm;->c:Lge;

    iget-object v0, v0, Lge;->a:Landroid/content/Context;

    const v1, 0x7f0b0486

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lgm;->a:Lkw;

    invoke-virtual {v0}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lgm;->a:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lgm;->a:Lkw;

    invoke-virtual {v0}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lgm;->c:Lge;

    iget-object v0, v0, Lge;->a:Landroid/content/Context;

    const v1, 0x7f0b042f

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_3
.end method
