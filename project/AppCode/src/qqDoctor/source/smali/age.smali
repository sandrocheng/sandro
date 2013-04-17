.class public final Lage;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lage;->a:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lage;->a:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
