.class public Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsSentReceiver"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->c(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->c(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->c(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView$SmsSentReceiver;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->c(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
