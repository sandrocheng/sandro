.class public final Lcom/tencent/tmsecure/module/permission/PermissionManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;
    }
.end annotation


# static fields
.field public static final VERSION_CODE:I = 0xc


# instance fields
.field private a:Lbxh;

.field private b:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final addPermissionTableItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {v0, p1}, Lbxh;->a(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    goto :goto_0
.end method

.method public final canStartService()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-static {}, Lbxh;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public final getPermissionTable()Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->b:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {v0}, Lbxh;->a()Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public final getRidByPermission(Ljava/util/List;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    invoke-static {p1}, Lbxh;->a(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public final init(Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->b:Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {v0, p1, p2}, Lbxh;->a(Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;)V

    goto :goto_0
.end method

.method public final isEnable()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {v0}, Lbxh;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public final isFinishInit()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {v0}, Lbxh;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbxh;

    invoke-direct {v0}, Lbxh;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {v0, p1}, Lbxh;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final removePermissionTableItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {v0, p1}, Lbxh;->b(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    goto :goto_0
.end method

.method public final setCallback(Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {v0, p1}, Lbxh;->a(Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;)V

    goto :goto_0
.end method

.method public final setEnable(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {v0, p1}, Lbxh;->a(Z)V

    goto :goto_0
.end method

.method public final updatePermissionTable(III)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {v0, p1, p2, p3}, Lbxh;->a(III)V

    goto :goto_0
.end method

.method public final updatePermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/permission/PermissionManager;->a:Lbxh;

    invoke-virtual {v0, p1}, Lbxh;->c(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    goto :goto_0
.end method
