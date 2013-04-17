.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;
.super Ljava/lang/Object;

# interfaces
.implements Lzk$b;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public BestNow()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0928

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeResultText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeResultText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b093a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMiniProgressBarView:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$700(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    move-result-object v0

    invoke-static {}, Lvh;->g()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->setProgressWithAnim(ILcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    const/4 v1, 0x1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mPreOptimizeCalFinish:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$102(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;Z)Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cJ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->showDialog()V

    :cond_0
    return-void
.end method

.method public CleanEstimateComplete(IJ)V
    .locals 2

    if-lez p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mCanReleaseRamSize:J
    invoke-static {v0, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$002(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;J)J

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    const/4 v1, 0x1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mPreOptimizeCalFinish:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$102(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;Z)Z

    goto :goto_0
.end method

.method public CleanFinish()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    const/4 v1, 0x1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeFinish:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;Z)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMFrameWindowObserver:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMFrameWindowObserver:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;->onOptimizeFinish()V

    :cond_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cJ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->showDialog()V

    :cond_1
    return-void
.end method

.method public isReadyToCleanNow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
