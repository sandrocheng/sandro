.class final Lbbq;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lbbp;


# direct methods
.method constructor <init>(Lbbp;)V
    .locals 0

    iput-object p1, p0, Lbbq;->a:Lbbp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lho;->O(Z)V

    iget-object v0, p0, Lbbq;->a:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbbq;->a:Lbbp;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbbq;->a:Lbbp;

    invoke-static {v2}, Lbbp;->b(Lbbp;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lbbp;->a(Lbbp;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbbq;->a:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lbbq;->a:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbbq;->a:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b08b7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    :cond_0
    iget-object v0, p0, Lbbq;->a:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lbbq;->a:Lbbp;

    invoke-static {v0}, Lbbp;->c(Lbbp;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbbr;

    invoke-direct {v1, p0}, Lbbr;-><init>(Lbbq;)V

    invoke-static {v0, v1}, Lxi;->b(Landroid/content/Context;Lxi$a;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbbq;->a:Lbbp;

    invoke-virtual {v0}, Lbbp;->onResume()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
