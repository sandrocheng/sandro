.class Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

.field final synthetic val$tempDuration:I

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;II)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;->val$to:I

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;->val$tempDuration:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->prePercent:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->access$100(Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;)I

    move-result v1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;->val$to:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v2, v0

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_2

    :goto_0
    int-to-float v2, v0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    int-to-float v0, v0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;->val$to:I

    :goto_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->access$200(Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "Percent"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;->val$to:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    :try_start_0
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;->val$tempDuration:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;->val$to:I

    if-le v1, v0, :cond_1

    int-to-float v0, v1

    sub-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_1

    :cond_1
    int-to-float v0, v1

    add-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;->cancel()Z

    return-void
.end method
