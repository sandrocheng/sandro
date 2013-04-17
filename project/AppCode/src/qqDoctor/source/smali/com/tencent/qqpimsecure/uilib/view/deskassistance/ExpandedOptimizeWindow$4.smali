.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;
.super Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;


# instance fields
.field private final SETP_COUNT:I

.field private count:I

.field private mSetp:I

.field private mStopRecu:Z

.field ramUsage:I

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;-><init>()V

    invoke-static {}, Lvh;->g()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->ramUsage:I

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->count:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->SETP_COUNT:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->ramUsage:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->mSetp:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->mStopRecu:Z

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->mStopRecu:Z

    return v0
.end method


# virtual methods
.method public onAnimationFinish()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->proceAnimationFinish()V

    return-void
.end method

.method proceAnimationFinish()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->mStopRecu:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->count:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->count:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->mSetp:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mPreOptimizeCalFinish:Z
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lvh;->g()I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMiniProgressBarView:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$700(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4$1;

    invoke-direct {v2, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->setProgressWithAnim(ILcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->count:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mPreOptimizeCalFinish:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->mStopRecu:Z

    goto :goto_0
.end method
