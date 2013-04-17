.class final Laat;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Laaq;


# direct methods
.method constructor <init>(Laaq;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Laat;->a:Laaq;

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
    iget-object v0, p0, Laat;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Laat;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
