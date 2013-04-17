.class Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNowSweep:F
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;)F

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KSweepInc:F
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;)F

    move-result v2

    add-float/2addr v1, v2

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNowSweep:F
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->access$002(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;F)F

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNowSweep:F
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;)F

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mTargetSweep:F
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mTargetSweep:F
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;)F

    move-result v1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNowSweep:F
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->access$002(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;F)F

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNowSweep:F
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;)F

    move-result v1

    #calls: Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setRingSweep(F)V
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;F)V

    return-void
.end method
