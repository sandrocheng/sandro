.class public final Lbcp;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V
    .locals 0

    iput-object p1, p0, Lbcp;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

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
    iget-object v0, p0, Lbcp;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->b(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbcp;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->c(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
