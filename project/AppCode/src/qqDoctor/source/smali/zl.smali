.class final Lzl;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lzk;


# direct methods
.method constructor <init>(Lzk;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lzl;->a:Lzk;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lzk$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzl;->a:Lzk;

    iget-object v0, v0, Lzk;->a:Lzk$b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lzk$a;

    iget v1, v0, Lzk$a;->b:I

    iget-wide v2, v0, Lzk$a;->c:J

    iget-object v0, p0, Lzl;->a:Lzk;

    iget-object v0, v0, Lzk;->a:Lzk$b;

    invoke-interface {v0, v1, v2, v3}, Lzk$b;->CleanEstimateComplete(IJ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lzl;->a:Lzk;

    iget-object v0, v0, Lzk;->a:Lzk$b;

    invoke-interface {v0}, Lzk$b;->CleanFinish()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lzl;->a:Lzk;

    iget-object v0, v0, Lzk;->a:Lzk$b;

    invoke-interface {v0}, Lzk$b;->BestNow()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzm;

    invoke-direct {v1, p0}, Lzm;-><init>(Lzl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
