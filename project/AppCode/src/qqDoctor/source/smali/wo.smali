.class final Lwo;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lwn;


# direct methods
.method constructor <init>(Lwn;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lwo;->a:Lwn;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0xc

    const/4 v3, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isFinishInit()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljf;

    invoke-direct {v2}, Ljf;-><init>()V

    invoke-virtual {v2, v1}, Ljf;->a(Ljava/lang/String;)Lkx;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lkx;->e:[B

    array-length v2, v2

    if-le v2, v4, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->by()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1, v3}, Lja;->a(Lkx;I)V

    :goto_1
    iget v2, v1, Lkx;->a:I

    iget-object v3, v1, Lkx;->e:[B

    iget-object v1, v1, Lkx;->b:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lxf;->a(I[BLjava/lang/String;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->updatePermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lkx;->e:[B

    aput-byte v3, v2, v4

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lwo;->a:Lwn;

    invoke-virtual {v0}, Lwn;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
