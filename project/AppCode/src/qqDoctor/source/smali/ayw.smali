.class final Layw;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Layp;


# direct methods
.method constructor <init>(Layp;)V
    .locals 0

    iput-object p1, p0, Layw;->a:Layp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Layw;->a:Layp;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Layp;->c()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Layw;->a:Layp;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Layp;->d()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Layw;->a:Layp;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Layp;->e()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Layw;->a:Layp;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Layp;->f()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Layw;->a:Layp;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Layp;->g()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Layw;->a:Layp;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Layp;->h()V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Layw;->a:Layp;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkv;

    invoke-virtual {v1, v0}, Layp;->a(Lkv;)V

    new-instance v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getStorageCardSize(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;)V

    iget-wide v0, v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Layw;->a:Layp;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Layp;->i()V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Layw;->a:Layp;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkv;

    invoke-virtual {v1, v0}, Layp;->b(Lkv;)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Layw;->a:Layp;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Layp;->a(Ljava/util/List;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
