.class final Lbcf;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lbce;


# direct methods
.method constructor <init>(Lbce;)V
    .locals 0

    iput-object p1, p0, Lbcf;->a:Lbce;

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

    iget-object v0, p0, Lbcf;->a:Lbce;

    invoke-static {v0}, Lbce;->a(Lbce;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcf;->a:Lbce;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbcf;->a:Lbce;

    invoke-static {v2}, Lbce;->b(Lbce;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lbce;->a(Lbce;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbcf;->a:Lbce;

    invoke-static {v0}, Lbce;->a(Lbce;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lbcf;->a:Lbce;

    invoke-static {v0}, Lbce;->a(Lbce;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbcf;->a:Lbce;

    invoke-static {v0}, Lbce;->a(Lbce;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b08b7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    :cond_0
    iget-object v0, p0, Lbcf;->a:Lbce;

    invoke-static {v0}, Lbce;->a(Lbce;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lbcf;->a:Lbce;

    invoke-static {v0}, Lbce;->c(Lbce;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbcg;

    invoke-direct {v1, p0}, Lbcg;-><init>(Lbcf;)V

    invoke-static {v0, v1}, Lxi;->b(Landroid/content/Context;Lxi$a;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbcf;->a:Lbce;

    invoke-virtual {v0}, Lbce;->onResume()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
