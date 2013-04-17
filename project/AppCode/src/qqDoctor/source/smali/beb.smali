.class final Lbeb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbdr;


# direct methods
.method constructor <init>(Lbdr;)V
    .locals 0

    iput-object p1, p0, Lbeb;->a:Lbdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isFinishInit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbeb;->a:Lbdr;

    invoke-static {v0}, Lbdr;->c(Lbdr;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lbeb;->a:Lbdr;

    invoke-static {v0}, Lbdr;->l(Lbdr;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbec;

    invoke-direct {v1, p0}, Lbec;-><init>(Lbeb;)V

    invoke-static {v0, v1}, Lxi;->a(Landroid/content/Context;Lxi$a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbeb;->a:Lbdr;

    invoke-static {v0}, Lbdr;->b(Lbdr;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
