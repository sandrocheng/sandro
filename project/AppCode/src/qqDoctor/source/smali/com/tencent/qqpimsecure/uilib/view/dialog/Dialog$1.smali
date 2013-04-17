.class Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->insideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->stopRotationAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->outsideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->stopRotationAnimation()V

    return-void
.end method
