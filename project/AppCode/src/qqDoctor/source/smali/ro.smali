.class final Lro;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lrn;


# direct methods
.method constructor <init>(Lrn;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lro;->a:Lrn;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const v4, 0x7f0b0991

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lro;->a:Lrn;

    new-instance v2, Lrn$a;

    iget-object v3, p0, Lro;->a:Lrn;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkw;

    invoke-direct {v2, v3, v0}, Lrn$a;-><init>(Lrn;Lkw;)V

    invoke-static {v1, v2}, Lrn;->a(Lrn;Lrn$a;)Lrn$a;

    iget-object v0, p0, Lro;->a:Lrn;

    invoke-static {v0}, Lrn;->a(Lrn;)Lrn$a;

    move-result-object v0

    iget-object v1, v0, Lrn$a;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lrn$a;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->show()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lrp;

    invoke-direct {v1, p0}, Lrp;-><init>(Lro;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lro;->a:Lrn;

    invoke-static {v0}, Lrn;->a(Lrn;)Lrn$a;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    iget-object v1, v0, Lrn$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    iget-object v1, v0, Lrn$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, v0, Lrn$a;->d:Lrn;

    invoke-static {v0}, Lrn;->d(Lrn;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lrn$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    iget-object v2, v0, Lrn$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lrn$a;->d:Lrn;

    invoke-static {v0}, Lrn;->d(Lrn;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
