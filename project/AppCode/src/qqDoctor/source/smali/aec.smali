.class public final Laec;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)V
    .locals 0

    iput-object p1, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const v1, 0x7f0b05f4

    const/16 v3, 0x67

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a()V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->b()V

    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Lho;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lho;->t(I)V

    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0160

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a()V

    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->d(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a()V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->e(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->g(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a()V

    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->h(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "support_mode_key"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Laec;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2001 -> :sswitch_0
        0x3001 -> :sswitch_4
        0x3003 -> :sswitch_1
        0x3004 -> :sswitch_2
        0x3005 -> :sswitch_3
    .end sparse-switch
.end method
