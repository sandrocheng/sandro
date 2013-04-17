.class public Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$ProcessChangeListener;
    }
.end annotation


# instance fields
.field HighSpeed:J

.field private currentImageRes:I

.field private isRestart:Z

.field private layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field lowSpeed:J

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$ProcessChangeListener;

.field private mOriButtomHeight:F

.field private mOriHeight:I

.field private mOriTopHeight:F

.field paramA:F

.field private prePercent:F

.field slowSpeedPercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->prePercent:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->isRestart:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->HighSpeed:J

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->lowSpeed:J

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->slowSpeedPercent:F

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->lowSpeed:J

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->HighSpeed:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->slowSpeedPercent:F

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->slowSpeedPercent:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->paramA:F

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;)F
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->prePercent:F

    return v0
.end method

.method private equation(F)J
    .locals 6

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->paramA:F

    float-to-double v0, v0

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->slowSpeedPercent:F

    sub-float v2, p1, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->HighSpeed:J

    long-to-double v2, v2

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public addChangeListener(Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$ProcessChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$ProcessChangeListener;

    return-void
.end method

.method public getPrePercent()F
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->prePercent:F

    return v0
.end method

.method public isReStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->isRestart:Z

    return v0
.end method

.method public reflashInAnimation(FJ)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Percent"

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->prePercent:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;F)V

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public reflashPercentImage(F)V
    .locals 4

    const/high16 v3, 0x42c8

    const/4 v1, 0x0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->prePercent:F

    cmpl-float v0, p1, v3

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^^ wrong percent"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in reflesh percent image"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    const v0, 0x7f02001e

    :goto_0
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->currentImageRes:I

    if-eq v2, v0, :cond_2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->currentImageRes:I

    :cond_2
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->currentImageRes:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mOriHeight:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mOriHeight:I

    int-to-float v0, v0

    const v2, 0x3dbe82d8

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mOriButtomHeight:F

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mOriHeight:I

    int-to-float v0, v0

    const v2, 0x3d1ba5e3

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mOriTopHeight:F

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mOriButtomHeight:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->invalidate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$ProcessChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$ProcessChangeListener;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->prePercent:F

    invoke-interface {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$ProcessChangeListener;->onChange(F)V

    :cond_3
    return-void

    :cond_4
    cmpl-float v0, p1, v1

    if-lez v0, :cond_5

    const v0, 0x7f020020

    goto :goto_0

    :cond_5
    const v0, 0x7f02001f

    goto :goto_0

    :cond_6
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mOriHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mOriButtomHeight:F

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mOriHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mOriButtomHeight:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mOriTopHeight:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    goto :goto_1
.end method

.method protected sendChangeOnSpeed(FFF)V
    .locals 4

    const/high16 v3, 0x42c8

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Percent"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    mul-float v0, p2, v3

    div-float/2addr v0, p1

    sub-float v0, v3, v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->equation(F)J

    move-result-wide v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPrePercent(F)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->prePercent:F

    return-void
.end method

.method public setReStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->isRestart:Z

    return-void
.end method
