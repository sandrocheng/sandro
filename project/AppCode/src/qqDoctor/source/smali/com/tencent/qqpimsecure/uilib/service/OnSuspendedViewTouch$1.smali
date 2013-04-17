.class Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;

    #calls: Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->doAnimation()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->access$000(Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;

    iput-boolean v1, v0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mMoving:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;

    iput-boolean v1, v0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mDoingAnim:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTop:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->saveLocation(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;

    iput-boolean v1, v0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mMoving:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;

    iput-boolean v1, v0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mDoingAnim:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
