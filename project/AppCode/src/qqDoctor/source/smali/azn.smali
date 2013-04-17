.class final Lazn;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lazj;


# direct methods
.method constructor <init>(Lazj;)V
    .locals 0

    iput-object p1, p0, Lazn;->a:Lazj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-object v1, p0, Lazn;->a:Lazj;

    invoke-static {v1}, Lazj;->b(Lazj;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lazn;->a:Lazj;

    invoke-static {v1, v0}, Lazj;->a(Lazj;Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    :goto_1
    iget-object v0, p0, Lazn;->a:Lazj;

    invoke-static {v0}, Lazj;->c(Lazj;)V

    invoke-virtual {p0, v2}, Lazn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lazn;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lazn;->a:Lazj;

    invoke-static {v1, v0}, Lazj;->b(Lazj;Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-object v1, p0, Lazn;->a:Lazj;

    invoke-static {v1, v0}, Lazj;->c(Lazj;Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lazn;->a:Lazj;

    invoke-static {v0}, Lazj;->d(Lazj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazn;->a:Lazj;

    invoke-static {v0}, Lazj;->e(Lazj;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lazn;->a:Lazj;

    invoke-static {v0}, Lazj;->f(Lazj;)V

    iget-object v0, p0, Lazn;->a:Lazj;

    invoke-static {v0}, Lazj;->g(Lazj;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lazn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, v0, Landroid/os/Message;->arg1:I

    iget v2, v0, Landroid/os/Message;->arg1:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-ge v1, v3, :cond_0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lazn;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v3}, Lazn;->removeMessages(I)V

    iget-object v0, p0, Lazn;->a:Lazj;

    invoke-static {v0}, Lazj;->h(Lazj;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "refrash_process"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x42c8

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lazn;->a:Lazj;

    invoke-static {v1, v0}, Lazj;->a(Lazj;F)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lazn;->a:Lazj;

    invoke-virtual {v0}, Lazj;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
