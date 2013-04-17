.class final Lbek;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lbej;


# direct methods
.method constructor <init>(Lbej;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbek;->b:Lbej;

    iput-object p2, p0, Lbek;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lbek;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-virtual {p0}, Lbek;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbek;->b:Lbej;

    invoke-static {v0}, Lbej;->b(Lbej;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0805

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lbek;->b:Lbej;

    invoke-static {v0}, Lbej;->c(Lbej;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbek;->b:Lbej;

    invoke-static {v0}, Lbej;->d(Lbej;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbek;->b:Lbej;

    invoke-static {v1}, Lbej;->c(Lbej;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lbek;->b:Lbej;

    invoke-static {v0}, Lbej;->e(Lbej;)Landroid/content/BroadcastReceiver;

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbek;->b:Lbej;

    invoke-static {v0}, Lbej;->a(Lbej;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0804

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
