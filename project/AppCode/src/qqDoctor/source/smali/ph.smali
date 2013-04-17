.class final Lph;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lpe;


# direct methods
.method constructor <init>(Lpe;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lph;->a:Lpe;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lph;->a:Lpe;

    iget-boolean v0, v0, Lpe;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lph;->a:Lpe;

    invoke-static {v0}, Lpe;->c(Lpe;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, ""

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0400

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v1, p0, Lph;->a:Lpe;

    iget-object v2, p0, Lph;->a:Lpe;

    iget-object v2, v2, Lpe;->b:Landroid/content/Context;

    invoke-static {v2, v0}, La;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    iput-object v0, v1, Lpe;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    new-instance v1, Lpi;

    invoke-direct {v1, p0}, Lpi;-><init>(Lph;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lph;->a:Lpe;

    invoke-static {v0}, Lpe;->c(Lpe;)I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lph;->a:Lpe;

    iget-boolean v0, v0, Lpe;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lph;->a:Lpe;

    iget-boolean v0, v0, Lpe;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lph;->a:Lpe;

    iget-object v1, v1, Lpe;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lph;->a:Lpe;

    invoke-static {v0}, Lpe;->c(Lpe;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v1, p0, Lph;->a:Lpe;

    iget-object v1, v1, Lpe;->b:Landroid/content/Context;

    iget-object v2, p0, Lph;->a:Lpe;

    iget-object v2, v2, Lpe;->d:Lcom/tencent/tmsecure/module/update/CheckResult;

    new-instance v3, Lpj;

    invoke-direct {v3, p0}, Lpj;-><init>(Lph;)V

    invoke-virtual {v0, v1, v2, v3}, Lpe;->a(Landroid/content/Context;Lcom/tencent/tmsecure/module/update/CheckResult;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lph;->a:Lpe;

    invoke-static {v0}, Lpe;->c(Lpe;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->b:Landroid/content/Context;

    iget v1, p1, Landroid/os/Message;->arg1:I

    new-instance v2, Lpl;

    invoke-direct {v2, p0}, Lpl;-><init>(Lph;)V

    invoke-static {v0, v1, v2}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
