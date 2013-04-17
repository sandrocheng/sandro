.class final Laav;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Laau;


# direct methods
.method constructor <init>(Laau;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Laav;->a:Laau;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Laav;->a:Laau;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Laau;->a(Laau;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Laav;->a:Laau;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Laau;->b(Laau;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Laav;->a:Laau;

    invoke-static {v0}, Laau;->a(Laau;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Laav;->a:Laau;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Laau;->a(Laau;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
