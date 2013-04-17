.class public Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;
.super Landroid/view/View;


# instance fields
.field private final ID:I

.field private final KAnimateStep:I

.field private final KLargeNameTextSize:F

.field private final KLargeNumberTextSize:F

.field private final KLargePercentTextSize:F

.field private final KNameColor:I

.field private final KNameTextSize:F

.field private final KNumberColor:I

.field private final KNumberTextSize:F

.field private final KPercentStr:Ljava/lang/String;

.field private final KPercentTextSize:F

.field private KSweepInc:F

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mBufferBgColor:I

.field private mBufferBitmap:Landroid/graphics/Bitmap;

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field private mClipPath:Landroid/graphics/Path;

.field mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mNameStr:Ljava/lang/String;

.field private mNameTextSize:F

.field private mNowSweep:F

.field private mNumberStr:Ljava/lang/String;

.field private mNumberTextSize:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPercentTextSize:F

.field private mRingBitmap:Landroid/graphics/Bitmap;

.field private mRingCenterX:F

.field private mRingCenterY:F

.field private mRingRect:Landroid/graphics/RectF;

.field private mTargetSweep:F

.field private mUseBufferDraw:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/high16 v2, 0x4150

    const/high16 v1, 0x4120

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, -0x111112

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferBgColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mUseBufferDraw:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KAnimateStep:I

    const-string v0, "%"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KPercentStr:Ljava/lang/String;

    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KLargeNumberTextSize:F

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KLargePercentTextSize:F

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KLargeNameTextSize:F

    const/high16 v0, 0x4190

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KNumberTextSize:F

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KPercentTextSize:F

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KNameTextSize:F

    const v0, -0xcccccd

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KNumberColor:I

    const v0, -0x666667

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KNameColor:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->ID:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mClipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferBgColor:I

    invoke-static {}, Lec;->a()Lec;

    invoke-static {p0}, Lec;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;)F
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNowSweep:F

    return v0
.end method

.method static synthetic access$002(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;F)F
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNowSweep:F

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;)F
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KSweepInc:F

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;)F
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mTargetSweep:F

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setRingSweep(F)V

    return-void
.end method

.method private doBufferDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mWidth:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mWidth:I

    int-to-float v3, v2

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mHeight:I

    int-to-float v4, v2

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferBgColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->doDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBgBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->drawText(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNowSweep:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mTargetSweep:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNumberTextSize:F

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setTextSpSize(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNumberStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPercentTextSize:F

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setTextSpSize(F)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterX:F

    add-float/2addr v1, v0

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    const v3, -0xcccccd

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNumberTextSize:F

    invoke-direct {p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setTextSpSize(F)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNumberStr:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterY:F

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPercentTextSize:F

    invoke-direct {p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setTextSpSize(F)V

    const-string v2, "%"

    add-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterY:F

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNameTextSize:F

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setTextSpSize(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNameStr:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterX:F

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterY:F

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private setRingSweep(F)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/high16 v0, 0x43b4

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mClipPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterX:F

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->invalidate()V

    return-void
.end method

.method private setTextSpSize(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mUseBufferDraw:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->doDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mUseBufferDraw:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->doBufferDraw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mUseBufferDraw:Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mWidth:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setMeasuredDimension(II)V

    return-void
.end method

.method public recycleBitmap()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBgBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBufferCanvas:Landroid/graphics/Canvas;

    :cond_2
    return-void
.end method

.method public setPercent(IZ)V
    .locals 2

    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNumberStr:Ljava/lang/String;

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mTargetSweep:F

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNowSweep:F

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mTargetSweep:F

    const/high16 v1, 0x41a0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->KSweepInc:F

    :goto_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNowSweep:F

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setRingSweep(F)V

    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mTargetSweep:F

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNowSweep:F

    goto :goto_1

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setRes(IIIFFZ)V
    .locals 8

    const/high16 v7, 0x4150

    const/high16 v6, 0x4120

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mWidth:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mHeight:I

    iput p4, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterX:F

    iput p5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterY:F

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterX:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterX:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterY:F

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterY:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    add-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterX:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterY:F

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterX:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingCenterY:F

    add-float/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mRingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNameStr:Ljava/lang/String;

    if-eqz p6, :cond_0

    const/high16 v0, 0x41a8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNumberTextSize:F

    iput v7, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPercentTextSize:F

    iput v7, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNameTextSize:F

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNumberTextSize:F

    iput v6, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mPercentTextSize:F

    iput v6, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->mNameTextSize:F

    goto :goto_0
.end method
