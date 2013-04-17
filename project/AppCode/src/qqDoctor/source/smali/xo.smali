.class final Lxo;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lxn;


# direct methods
.method constructor <init>(Lxn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lxo;->b:Lxn;

    iput-object p2, p0, Lxo;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const v1, 0x7f0b0806

    invoke-virtual {p0}, Lxo;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lxo;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lxo;->b:Lxn;

    iget-object v0, v0, Lxn;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lxn;->a(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lxo;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lxo;->b:Lxn;

    iget-object v0, v0, Lxn;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxo;->b:Lxn;

    iget-object v0, v0, Lxn;->a:Landroid/content/Context;

    iget-object v1, p0, Lxo;->b:Lxn;

    iget-object v1, v1, Lxn;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lxo;->b:Lxn;

    const/4 v1, 0x0

    iput-object v1, v0, Lxn;->d:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void

    :pswitch_0
    const-string v0, ""

    iget-object v1, p0, Lxo;->b:Lxn;

    iget-object v1, v1, Lxn;->a:Landroid/content/Context;

    const v2, 0x7f0b07f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lxo;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lxo;->b:Lxn;

    iget-object v1, v1, Lxn;->a:Landroid/content/Context;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b07a9

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0045

    new-instance v1, Lxp;

    invoke-direct {v1, v2}, Lxp;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lxo;->b:Lxn;

    iget-object v1, v1, Lxn;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lxo;->b:Lxn;

    iget-object v0, v0, Lxn;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
