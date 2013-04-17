.class final Lbih;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbig;


# direct methods
.method constructor <init>(Lbig;)V
    .locals 0

    iput-object p1, p0, Lbih;->a:Lbig;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lbih;->a:Lbig;

    invoke-virtual {v0}, Lbig;->onResume()V

    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbih;->a:Lbig;

    invoke-static {v1}, Lbig;->c(Lbig;)Lrb;

    move-result-object v1

    iget-object v2, p0, Lbih;->a:Lbig;

    invoke-static {v2}, Lbig;->a(Lbig;)Lhq;

    move-result-object v2

    iget-object v3, p0, Lbih;->a:Lbig;

    invoke-static {v3}, Lbig;->b(Lbig;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lrb;->a(Llf;Lhq;Landroid/os/Handler;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
