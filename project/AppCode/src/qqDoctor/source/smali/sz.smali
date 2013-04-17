.class final Lsz;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lsy;


# direct methods
.method constructor <init>(Lsy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lsz;->a:Lsy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lsz;->a:Lsy;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    iget-object v2, p0, Lsz;->a:Lsy;

    iget-object v2, v2, Lsy;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-boolean v0, v0, Lsy;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b01fe

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIconVisibility(I)V

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b01ff

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    :goto_1
    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0033

    new-instance v2, Lta;

    invoke-direct {v2, p0}, Lta;-><init>(Lsz;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v0, Ltd;

    invoke-direct {v0, p0}, Ltd;-><init>(Lsz;)V

    invoke-virtual {v0}, Ltd;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0204

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIconVisibility(I)V

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0205

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    iget-object v1, p0, Lsz;->a:Lsy;

    iget v1, v1, Lsy;->k:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;->setProgress(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lsz;->a:Lsy;

    iput-boolean v4, v0, Lsy;->j:Z

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lsz;->a:Lsy;

    iput-object v1, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_2
    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lsz;->a:Lsy;

    iput-object v1, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
