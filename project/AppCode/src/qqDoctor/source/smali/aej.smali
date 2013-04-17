.class public final Laej;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)V
    .locals 0

    iput-object p1, p0, Laej;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Laej;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Laej;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Laej;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3003
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
