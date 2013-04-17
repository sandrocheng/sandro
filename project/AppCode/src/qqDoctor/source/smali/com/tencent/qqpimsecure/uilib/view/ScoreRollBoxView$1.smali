.class Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isAnimationing:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->invalidate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->Frame:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$120(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endRollH:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x4

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$102(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->Frame:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$520(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endRollH:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x4

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$502(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->Frame:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$620(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$600(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endRollH:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    if-gt v0, v2, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x4

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$602(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$700(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isEndAnimation:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$800(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->invalidate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameOne:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$900(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->Frame:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$120(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endRollH:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    if-gt v0, v2, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x4

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$102(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$910(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameOne:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$900(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$1000(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    neg-int v0, v0

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0xa

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I
    invoke-static {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$102(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$700(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameTwo:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->Frame:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$520(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endRollH:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    if-gt v0, v2, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x4

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$502(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    :cond_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$1110(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameTwo:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$1000(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0xa

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    neg-int v0, v0

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0xa

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I
    invoke-static {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$502(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    :cond_9
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameThree:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->Frame:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$620(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$600(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endRollH:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v2

    if-gt v0, v2, :cond_a

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x4

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$602(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    :cond_a
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$1210(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameThree:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$1000(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    neg-int v0, v0

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0xa

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I
    invoke-static {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$602(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I

    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$700(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    const/4 v2, 0x0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isEndAnimation:Z
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->access$802(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;Z)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
