.class final Lamt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private synthetic a:Lams;


# direct methods
.method constructor <init>(Lams;)V
    .locals 0

    iput-object p1, p0, Lamt;->a:Lams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lamt;->a:Lams;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lamt;->a:Lams;

    invoke-static {v2}, Lams;->a(Lams;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lams;->a(Lams;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lamt;->a:Lams;

    invoke-static {v0}, Lams;->b(Lams;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lamt;->a:Lams;

    invoke-static {v0}, Lams;->b(Lams;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lamt;->a:Lams;

    invoke-static {v0}, Lams;->b(Lams;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b08bf

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Lamt;->a:Lams;

    invoke-static {v0}, Lams;->b(Lams;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lamt;->a:Lams;

    invoke-static {v0}, Lams;->b(Lams;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamt;->a:Lams;

    invoke-static {v0}, Lams;->b(Lams;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamt;->a:Lams;

    invoke-static {v0}, Lams;->b(Lams;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lamt;->a:Lams;

    invoke-static {v0}, Lams;->c(Lams;)Landroid/content/Context;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lamt;->a:Lams;

    invoke-static {v2}, Lams;->d(Lams;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0487

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lamt;->a:Lams;

    invoke-static {v2}, Lams;->e(Lams;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b054c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lha;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lamt;->a:Lams;

    invoke-static {v0}, Lams;->f(Lams;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lamt;->a:Lams;

    invoke-static {v1}, Lams;->g(Lams;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0486

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
