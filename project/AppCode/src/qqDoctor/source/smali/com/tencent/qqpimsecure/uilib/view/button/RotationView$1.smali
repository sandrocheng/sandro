.class Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStartTime:J
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    mul-float/2addr v0, v5

    const v1, 0x455ac000

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStop:Z
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x3f8ccccd

    :cond_0
    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;->removeMessages(I)V

    cmpl-float v1, v0, v5

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mRotate:I
    invoke-static {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mAnimating:Z
    invoke-static {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->access$302(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;Z)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->postInvalidate()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;

    const v2, 0x451d8000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mRotate:I
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->postInvalidate()V

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v4, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
