.class public Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;
.super Landroid/view/animation/RotateAnimation;


# instance fields
.field private dulation:I

.field private fromDegrees:F

.field private listener:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView$ProcessChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private nowDifferDegree:F

.field private pivotXValue:F

.field private pivotYValue:F

.field private prePercent:I

.field private range:F

.field private thisAnimateHeight:I

.field private thisAnimateWidth:I

.field private toDegrees:F

.field private totalDifferDegree:F

.field private zeroProcess:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->prePercent:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->fromDegrees:F

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->toDegrees:F

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->nowDifferDegree:F

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->totalDifferDegree:F

    const/16 v0, 0x1388

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->dulation:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->range:F

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->zeroProcess:F

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->dulation:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->setFillAfter(Z)V

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->fromDegrees:F

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->toDegrees:F

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->toDegrees:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->fromDegrees:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->range:F

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->pivotXValue:F

    iput p4, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->pivotYValue:F

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->fromDegrees:F

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->nowDifferDegree:F

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->range:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->zeroProcess:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->fromDegrees:F

    neg-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->range:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->zeroProcess:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;I)V
    .locals 2

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->prePercent:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->listener:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView$ProcessChangeListener;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->prePercent:I

    invoke-interface {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView$ProcessChangeListener;->onChange(I)V

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->prePercent:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private degree2Process(F)I
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->range:F

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    div-float v0, p1, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->zeroProcess:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private process2Degree(I)F
    .locals 3

    int-to-float v0, p1

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->zeroProcess:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->range:F

    const v2, 0x3c23d70a

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private reflashInAnimation(I)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->prePercent:I

    if-gez v0, :cond_1

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->prePercent:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Percent"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->prePercent:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->dulation:I

    int-to-double v1, v1

    int-to-double v3, v0

    div-double v0, v1, v3

    double-to-int v0, v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "Percent"

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->prePercent:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;II)V

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private reflashPercentImage(I)V
    .locals 2

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->prePercent:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->listener:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView$ProcessChangeListener;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->prePercent:I

    invoke-interface {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView$ProcessChangeListener;->onChange(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView$ProcessChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->listener:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView$ProcessChangeListener;

    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->fromDegrees:F

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->totalDifferDegree:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->nowDifferDegree:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->nowDifferDegree:F

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->thisAnimateWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->pivotXValue:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->thisAnimateHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->pivotYValue:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->thisAnimateWidth:I

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->thisAnimateHeight:I

    return-void
.end method

.method public resetAnimation(I)V
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->nowDifferDegree:F

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->fromDegrees:F

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->process2Degree(I)F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->toDegrees:F

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->toDegrees:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->fromDegrees:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->totalDifferDegree:F

    return-void
.end method
