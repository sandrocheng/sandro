.class final Lbb;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lay;


# direct methods
.method constructor <init>(Lay;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lbb;->a:Lay;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbb;->a:Lay;

    invoke-static {v0}, Lay;->a(Lay;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbb;->a:Lay;

    invoke-static {v0}, Lay;->b(Lay;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
