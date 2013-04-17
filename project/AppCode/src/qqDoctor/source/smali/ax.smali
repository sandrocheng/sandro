.class final Lax;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Law;


# direct methods
.method constructor <init>(Law;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lax;->a:Law;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0x201a

    const/16 v3, 0x1002

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lax;->a:Law;

    const/16 v1, 0x200b

    iget-object v2, v0, Law;->b:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, v0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v2, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lax;->a:Law;

    const/16 v1, 0x200f

    iget-object v2, v0, Law;->b:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, v0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v2, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lax;->a:Law;

    const/16 v1, 0x2010

    iget-object v2, v0, Law;->b:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, v0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v2, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x200b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
