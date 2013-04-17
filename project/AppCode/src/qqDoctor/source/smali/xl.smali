.class final Lxl;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lxi$a;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lxi$a;

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lxi;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lxi;->e()Z

    move-result v2

    invoke-static {}, Lxi;->f()Z

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lxi;->a(Landroid/content/Context;ZZLxi$a;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lxi;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lxi;->a(Landroid/content/Context;Lxi$a;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lxi;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lxi;->b(Landroid/content/Context;Lxi$a;)V

    goto :goto_0

    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lxi$a;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
