.class public Labf;
.super Lcom/tencent/tmsecure/common/BaseService;


# instance fields
.field private a:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

.field private b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    new-instance v0, Labg;

    invoke-direct {v0, p0}, Labg;-><init>(Labf;)V

    iput-object v0, p0, Labf;->e:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    return-void
.end method

.method static synthetic a(Labf;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lft$a;

    invoke-direct {v0}, Lft$a;-><init>()V

    invoke-static {v0}, Lft;->b(Lft$a;)V

    iget-wide v2, v0, Lft$a;->a:J

    long-to-float v2, v2

    iget-wide v3, v0, Lft$a;->b:J

    long-to-float v0, v3

    div-float/2addr v2, v0

    float-to-double v3, v2

    const-wide v5, 0x3fc999999999999aL

    cmpl-double v0, v3, v5

    if-gez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labf;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labf;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isInstalledSdcard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labf;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->canMoveToSdcard(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Labf;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    invoke-static {}, Lov;->a()Lov;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lov;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Labf;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dM()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lho;->C(J)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v3, 0x6730

    invoke-virtual {v0, v3}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Labf;->d:Landroid/content/Context;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "remainPercent"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Labf;->d:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    iput-boolean v1, p0, Labf;->c:Z

    goto :goto_0
.end method

.method static synthetic a(Labf;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Labf;->c:Z

    return v0
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    iput-object p1, p0, Labf;->d:Landroid/content/Context;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Labf;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-class v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iput-object v0, p0, Labf;->a:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v0, p0, Labf;->a:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Labf;->e:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    return-void
.end method

.method public onDestory()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    iget-object v0, p0, Labf;->a:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Labf;->e:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->removeListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    return-void
.end method
