.class final Laqp;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Laqo;


# direct methods
.method constructor <init>(Laqo;)V
    .locals 0

    iput-object p1, p0, Laqp;->a:Laqo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Laqp;->a:Laqo;

    iget-object v1, p0, Laqp;->a:Laqo;

    invoke-static {v1}, Laqo;->a(Laqo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Laqp;->a:Laqo;

    invoke-static {v2}, Laqo;->b(Laqo;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b042c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Laqo;->a(Laqo;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Laqp;->a:Laqo;

    invoke-static {v0}, Laqo;->c(Laqo;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v4, v0, v1}, Laqp;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laqq;

    invoke-direct {v1, p0}, Laqq;-><init>(Laqp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Laqp;->a:Laqo;

    invoke-static {v0}, Laqo;->c(Laqo;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqp;->a:Laqo;

    invoke-static {v0}, Laqo;->c(Laqo;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Laqp;->a:Laqo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laqo;->a(Laqo;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    invoke-virtual {p0, v4}, Laqp;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Laqp;->a:Laqo;

    invoke-static {v0}, Laqo;->f(Laqo;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laqp;->a:Laqo;

    invoke-static {v1}, Laqo;->g(Laqo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b042d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Laqp;->a:Laqo;

    invoke-static {v0}, Laqo;->h(Laqo;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laqp;->a:Laqo;

    invoke-static {v1}, Laqo;->i(Laqo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b042e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Laqp;->a:Laqo;

    invoke-static {v0}, Laqo;->j(Laqo;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laqp;->a:Laqo;

    invoke-static {v1}, Laqo;->k(Laqo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b042f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
