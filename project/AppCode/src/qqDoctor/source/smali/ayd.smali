.class public final Layd;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/market/SearchCenterView;)V
    .locals 0

    iput-object p1, p0, Layd;->a:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Layd;->a:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->a(Lcom/tencent/qqpimsecure/view/market/SearchCenterView;)V

    iget-object v0, p0, Layd;->a:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
