.class public final Larm;
.super Landroid/os/Handler;


# instance fields
.field private a:Larn;

.field private b:Laru;

.field private c:La;

.field private d:Z


# direct methods
.method public constructor <init>(Larn;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Larm;->a:Larn;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Larm;->d:Z

    iget-object v0, p0, Larm;->c:La;

    iget-object v1, v0, La;->a:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, v0, La;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v1, v0, La;->e:Ld;

    invoke-virtual {v1, v3, v2}, Ld;->a(Landroid/os/Handler;I)V

    iget-object v1, v0, La;->f:Lc;

    invoke-virtual {v1, v3, v2}, Lc;->a(Landroid/os/Handler;I)V

    iput-boolean v2, v0, La;->c:Z

    :cond_0
    iget-object v0, p0, Larm;->c:La;

    iget-object v1, v0, La;->a:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    iget-object v1, v0, La;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    iput-object v3, v0, La;->a:Landroid/hardware/Camera;

    :cond_1
    iget-object v0, p0, Larm;->b:Laru;

    invoke-virtual {v0}, Laru;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method final a(La;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Larm;->c:La;

    new-instance v0, Laru;

    iget-object v1, p0, Larm;->a:Larn;

    invoke-direct {v0, v1}, Laru;-><init>(Larn;)V

    iput-object v0, p0, Larm;->b:Laru;

    iget-object v0, p0, Larm;->c:La;

    iget-object v1, v0, La;->a:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, La;->c:Z

    if-nez v1, :cond_0

    iget-object v1, v0, La;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    iput-boolean v2, v0, La;->c:Z

    :cond_0
    iput-boolean v2, p0, Larm;->d:Z

    iget-object v0, p0, Larm;->c:La;

    iget-object v1, p0, Larm;->b:Laru;

    invoke-virtual {v1}, Laru;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, La;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Larm;->c:La;

    invoke-virtual {v0, p0}, La;->b(Landroid/os/Handler;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Larm;->c:La;

    iget-object v1, p0, Larm;->b:Laru;

    invoke-virtual {v1}, Laru;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, La;->a(Landroid/os/Handler;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Larm;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Larm;->c:La;

    invoke-virtual {v0, p0}, La;->b(Landroid/os/Handler;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Larm;->a:Larn;

    invoke-virtual {v0, p1}, Larn;->b(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Larm;->a:Larn;

    invoke-virtual {v0, p1}, Larn;->b(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Larm;->a:Larn;

    invoke-virtual {v0, p1}, Larn;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Larm;->a:Larn;

    invoke-virtual {v0, p1}, Larn;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Larm;->a:Larn;

    invoke-virtual {v0, p1}, Larn;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Larm;->a:Larn;

    invoke-virtual {v0, p1}, Larn;->a(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Larm;->a:Larn;

    invoke-static {}, Larn;->e()V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Larm;->a:Larn;

    invoke-virtual {v0}, Larn;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
