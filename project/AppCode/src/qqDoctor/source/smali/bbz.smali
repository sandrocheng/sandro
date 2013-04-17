.class final Lbbz;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lbby;


# direct methods
.method constructor <init>(Lbby;)V
    .locals 0

    iput-object p1, p0, Lbbz;->a:Lbby;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lbca;

    invoke-direct {v0, p0}, Lbca;-><init>(Lbbz;)V

    invoke-virtual {v0}, Lbca;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->c(Lbby;)V

    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->d(Lbby;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-virtual {v0}, Lbby;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->e(Lbby;)Lbbp;

    move-result-object v0

    iget-object v1, p0, Lbbz;->a:Lbby;

    iget v1, v1, Lbby;->a:I

    invoke-virtual {v0, v1}, Lbbp;->a(I)V

    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->f(Lbby;)Lbce;

    move-result-object v0

    iget-object v1, p0, Lbbz;->a:Lbby;

    iget v1, v1, Lbby;->a:I

    invoke-virtual {v0, v1}, Lbce;->a(I)V

    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->b(Lbby;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbbz;->a:Lbby;

    iget v0, v0, Lbby;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbbz;->a:Lbby;

    iget v0, v0, Lbby;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-virtual {v0}, Lbby;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbbz;->a:Lbby;

    invoke-static {v1}, Lbby;->g(Lbby;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonPopStyle(Ljava/util/List;)V

    invoke-static {}, Lxi;->b()Z

    move-result v0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->di()Z

    move-result v1

    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->dz()I

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->h(Lbby;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbbz;->a:Lbby;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbbz;->a:Lbby;

    invoke-static {v2}, Lbby;->i(Lbby;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lbby;->a(Lbby;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->h(Lbby;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->h(Lbby;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->h(Lbby;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b08b7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    :cond_1
    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->h(Lbby;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->j(Lbby;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbcb;

    invoke-direct {v1, p0}, Lbcb;-><init>(Lbbz;)V

    invoke-static {v0, v1}, Lxi;->b(Landroid/content/Context;Lxi$a;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
