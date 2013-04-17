.class final Lbei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lbed;


# direct methods
.method constructor <init>(Lbed;I)V
    .locals 0

    iput-object p1, p0, Lbei;->b:Lbed;

    iput p2, p0, Lbei;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lbei;->b:Lbed;

    invoke-static {v0}, Lbed;->e(Lbed;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lbei;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkx;

    iget-boolean v1, v0, Lkx;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Lkx;->a(Z)V

    iget-object v1, p0, Lbei;->b:Lbed;

    invoke-static {v1}, Lbed;->d(Lbed;)Ljf;

    move-result-object v1

    iget v2, v0, Lkx;->a:I

    invoke-virtual {v1, v2, v3}, Ljf;->a(IZ)V

    :goto_0
    iget-object v1, p0, Lbei;->b:Lbed;

    invoke-static {v1}, Lbed;->d(Lbed;)Ljf;

    move-result-object v1

    iget v2, v0, Lkx;->a:I

    iget-object v3, v0, Lkx;->e:[B

    invoke-virtual {v1, v2, v3}, Ljf;->a(I[B)I

    const-class v1, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    invoke-static {}, Lxi;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lkx;->a:I

    iget-object v2, v0, Lkx;->e:[B

    iget-object v0, v0, Lkx;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lxf;->a(I[BLjava/lang/String;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    invoke-static {v0}, Lxi;->a(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    :cond_0
    iget-object v0, p0, Lbei;->b:Lbed;

    invoke-static {v0}, Lbed;->c(Lbed;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    invoke-virtual {v0, v4}, Lkx;->a(Z)V

    iget-object v1, p0, Lbei;->b:Lbed;

    invoke-static {v1}, Lbed;->d(Lbed;)Ljf;

    move-result-object v1

    iget v2, v0, Lkx;->a:I

    invoke-virtual {v1, v2, v4}, Ljf;->a(IZ)V

    goto :goto_0
.end method
