.class public final Ladq;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ladq;->a:Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Ladq;->a:Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Ladq;->a:Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
