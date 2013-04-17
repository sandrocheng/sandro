.class public final Laeo;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V
    .locals 0

    iput-object p1, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

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
    iget-object v0, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a()V

    iget-object v0, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    iget-object v1, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;Ljava/lang/String;Z)V

    iget-object v0, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Lho;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lho;->t(I)V

    iget-object v0, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->d(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0160

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->e(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->g(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->h(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a()V

    iget-object v0, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->e(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x6644

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lnd;->a(II)V

    :cond_2
    iget-object v1, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->i(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->i(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->i(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->i(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Laeo;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->j(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b011d

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x186a0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
