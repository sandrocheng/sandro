.class final Lzt;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lzs;


# direct methods
.method constructor <init>(Lzs;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lzt;->a:Lzs;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lzt;->a:Lzs;

    iget-object v1, v1, Lzs;->b:Ljr;

    invoke-virtual {v1, v0}, Ljr;->b(Lmm;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lzt;->a:Lzs;

    iget-object v1, v1, Lzs;->b:Ljr;

    invoke-virtual {v1, v0}, Ljr;->a(Lmm;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lzt;->a:Lzs;

    new-instance v2, Lzu;

    invoke-direct {v2, v1, v0}, Lzu;-><init>(Lzs;Lmm;)V

    invoke-virtual {v2}, Lzu;->start()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lzt;->a:Lzs;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lzs;->a(Lmm;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
