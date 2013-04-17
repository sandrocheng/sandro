.class public final Lxh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljf;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PermissionMonitorListener"

    iput-object v0, p0, Lxh;->c:Ljava/lang/String;

    iput-object p1, p0, Lxh;->a:Landroid/content/Context;

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    iput-object v0, p0, Lxh;->b:Ljf;

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 6

    const/4 v1, -0x1

    iget-object v0, p0, Lxh;->c:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lxh;->b:Ljf;

    invoke-virtual {v0}, Ljf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxh;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x1000

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v2}, Lkx;->a(Landroid/content/pm/PackageInfo;)Lkx;

    move-result-object v2

    iget-object v3, v2, Lkx;->b:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lkx;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, v2, Lkx;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lxh;->b:Ljf;

    iget-object v0, v2, Lkx;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT mUId FROM permission_info WHERE mPackageName=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v3, Ljf;->a:Lhs;

    invoke-virtual {v4, v0}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v4, v3, Ljf;->a:Lhs;

    invoke-virtual {v4}, Lhs;->b()V

    if-eq v0, v1, :cond_3

    invoke-virtual {v3, v0}, Ljf;->a(I)V

    invoke-virtual {v3, v0}, Ljf;->e(I)V

    :cond_3
    iget-object v0, p0, Lxh;->b:Ljf;

    invoke-virtual {v0, v2}, Ljf;->a(Lkx;)V

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v2, Lkx;->a:I

    iget-object v1, v2, Lkx;->e:[B

    invoke-static {v0, v1, p1}, Lxf;->a(I[BLjava/lang/String;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    invoke-static {v0}, Lxi;->b(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->by()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lja;->a(Lkx;I)V

    iget v0, v2, Lkx;->a:I

    iget-object v1, v2, Lkx;->e:[B

    invoke-static {v0, v1, p1}, Lxf;->a(I[BLjava/lang/String;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lxi;->a(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final onPackageReinstall(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lxh;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lxh;->onPackageRemoved(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lxh;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lxh;->c:Ljava/lang/String;

    iget-object v0, p0, Lxh;->b:Ljf;

    invoke-virtual {v0}, Ljf;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lxh;->b:Ljf;

    invoke-virtual {v0, p1}, Ljf;->a(Ljava/lang/String;)Lkx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    iget v3, v1, Lkx;->a:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;-><init>(I[ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->removePermissionTableItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    :cond_2
    iget v0, v1, Lkx;->a:I

    iget-object v1, p0, Lxh;->b:Ljf;

    invoke-virtual {v1, v0}, Ljf;->a(I)V

    iget-object v1, p0, Lxh;->b:Ljf;

    invoke-virtual {v1, v0}, Ljf;->e(I)V

    goto :goto_0
.end method
