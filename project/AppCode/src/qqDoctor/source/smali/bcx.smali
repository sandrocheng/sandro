.class final Lbcx;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lbcu;


# direct methods
.method constructor <init>(Lbcu;)V
    .locals 0

    iput-object p1, p0, Lbcx;->a:Lbcu;

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
    new-instance v0, Lbcy;

    invoke-direct {v0, p0}, Lbcy;-><init>(Lbcx;)V

    invoke-virtual {v0}, Lbcy;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbcx;->a:Lbcu;

    invoke-static {v0}, Lbcu;->d(Lbcu;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
