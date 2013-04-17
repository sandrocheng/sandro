.class final Larj;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lari;


# direct methods
.method constructor <init>(Lari;)V
    .locals 0

    iput-object p1, p0, Larj;->a:Lari;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Larj;->a:Lari;

    invoke-static {v0}, Lari;->a(Lari;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-virtual {p0, v3}, Larj;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Larj;->removeMessages(I)V

    iget-object v0, p0, Larj;->a:Lari;

    invoke-static {v0}, Lari;->b(Lari;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cH()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CameraCaptureAction"

    const-string v2, "CameraCaptureActionVerify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CameraCaptureFirstTry"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Larj;->a:Lari;

    invoke-static {v1}, Lari;->c(Lari;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/faceverify/CameraCaptureActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Larj;->a:Lari;

    invoke-static {v1}, Lari;->c(Lari;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    iget-object v0, p0, Larj;->a:Lari;

    invoke-virtual {v0}, Lari;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x671a

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Larj;->a:Lari;

    invoke-static {v0}, Lari;->c(Lari;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0a92

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Larj;->a:Lari;

    invoke-static {v0}, Lari;->a(Lari;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Larj;->a:Lari;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lari;->a(I)I

    move-result v0

    iget-object v1, p0, Larj;->a:Lari;

    invoke-static {v1}, Lari;->c(Lari;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Larj;->a:Lari;

    invoke-static {v2}, Lari;->c(Lari;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Larj;->a:Lari;

    invoke-static {v0}, Lari;->c(Lari;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Larj;->a:Lari;

    invoke-static {v1}, Lari;->c(Lari;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0a81

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
