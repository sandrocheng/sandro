.class final Lawi;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lawg;


# direct methods
.method constructor <init>(Lawg;)V
    .locals 0

    iput-object p1, p0, Lawi;->a:Lawg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lawi;->a:Lawg;

    invoke-virtual {v0}, Lawg;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onResume()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lawi;->a:Lawg;

    invoke-virtual {v0}, Lawg;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onResume()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
