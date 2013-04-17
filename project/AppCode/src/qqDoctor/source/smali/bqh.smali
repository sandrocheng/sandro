.class final Lbqh;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lbqb;


# direct methods
.method constructor <init>(Lbqb;)V
    .locals 0

    iput-object p1, p0, Lbqh;->a:Lbqb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

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
    new-instance v0, Lbqi;

    invoke-direct {v0, p0}, Lbqi;-><init>(Lbqh;)V

    invoke-virtual {v0}, Lbqi;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbqh;->a:Lbqb;

    invoke-static {v0}, Lbqb;->U(Lbqb;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
