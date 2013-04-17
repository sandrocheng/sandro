.class Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationRunner"
.end annotation


# instance fields
.field private mDis:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mNeedChangedState:Z

.field private mStartTime:J

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    mul-float/2addr v0, v5

    const/high16 v1, 0x4396

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    cmpl-float v1, v0, v5

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v1, v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->mDis:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    invoke-virtual {v0, v4, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->scrollTo(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iput-boolean v4, v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrolling:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "run: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget-boolean v1, v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrolling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->mNeedChangedState:Z

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onEndAnimation(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->mDis:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    invoke-virtual {v1, v4, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->scrollTo(II)V

    goto :goto_0
.end method

.method public setInterPlolator(Landroid/view/animation/Interpolator;IZ)V
    .locals 3

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->mDis:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->mStartTime:J

    iput-boolean p3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->mNeedChangedState:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimating:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
