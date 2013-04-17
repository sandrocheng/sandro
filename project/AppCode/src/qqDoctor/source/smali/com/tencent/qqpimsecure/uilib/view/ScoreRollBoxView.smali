.class public Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;
.super Landroid/view/View;


# static fields
.field private static final MSG_NUMBER_ANIM:I = 0x1

.field private static final MSG_REFLASH:I = 0x2


# instance fields
.field private final END_ANIMATION_FRAME:I

.field private Frame:I

.field private backTranslateX:I

.field private box:Landroid/graphics/Bitmap;

.field private boxClipH:I

.field private boxClipW:I

.field private boxClipX:I

.field private boxClipY:I

.field private boxSrcRect:Landroid/graphics/Rect;

.field private cir:Landroid/graphics/Bitmap;

.field private cirGreed:Landroid/graphics/Bitmap;

.field private cirOrange:Landroid/graphics/Bitmap;

.field private cirRed:Landroid/graphics/Bitmap;

.field private clipHeight:I

.field private clipWidth:I

.field private disY:I

.field private enableColroScore:Z

.field private endAnimationFrameOne:I

.field private endAnimationFrameThree:I

.field private endAnimationFrameTwo:I

.field private endRollH:I

.field private isAnimationing:Z

.field private isEndAnimation:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private number:Landroid/graphics/Bitmap;

.field private final numberCount:I

.field private numberGreed:Landroid/graphics/Bitmap;

.field private numberOrange:Landroid/graphics/Bitmap;

.field private numberRed:Landroid/graphics/Bitmap;

.field private numberSrcRect:Landroid/graphics/Rect;

.field private oneNumberTranslateX:I

.field private oneTranslateY:I

.field private outBox:Landroid/graphics/Bitmap;

.field private outBoxSrcRect:Landroid/graphics/Rect;

.field private score:I

.field private threeNumberTranslateX:I

.field private threeTranslateY:I

.field private twoNumberTranslateX:I

.field private twoTranslateY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberCount:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->END_ANIMATION_FRAME:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberCount:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->END_ANIMATION_FRAME:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isAnimationing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I

    return v0
.end method

.method static synthetic access$1000(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    return v0
.end method

.method static synthetic access$102(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I

    return p1
.end method

.method static synthetic access$1100(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameTwo:I

    return v0
.end method

.method static synthetic access$1110(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameTwo:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameTwo:I

    return v0
.end method

.method static synthetic access$120(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I

    return v0
.end method

.method static synthetic access$1200(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameThree:I

    return v0
.end method

.method static synthetic access$1210(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameThree:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameThree:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->Frame:I

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endRollH:I

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I

    return v0
.end method

.method static synthetic access$502(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I

    return p1
.end method

.method static synthetic access$520(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I

    return v0
.end method

.method static synthetic access$600(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I

    return v0
.end method

.method static synthetic access$602(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I

    return p1
.end method

.method static synthetic access$620(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;I)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I

    return v0
.end method

.method static synthetic access$700(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isEndAnimation:Z

    return v0
.end method

.method static synthetic access$802(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isEndAnimation:Z

    return p1
.end method

.method static synthetic access$900(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameOne:I

    return v0
.end method

.method static synthetic access$910(Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;)I
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameOne:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameOne:I

    return v0
.end method

.method private dip2px(F)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawScene(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->clipWidth:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->clipHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBox:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBoxSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBoxSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxClipX:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxClipY:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxClipW:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxClipH:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneNumberTranslateX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->disY:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->getCurrentNumberImg()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoNumberTranslateX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I

    neg-int v1, v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->getCurrentNumberImg()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeNumberTranslateX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I

    neg-int v1, v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->getCurrentNumberImg()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->backTranslateX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I

    neg-int v1, v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->disY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isAnimationing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->getCurrentCirImg()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->box:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getCurrentCirImg()Landroid/graphics/Bitmap;
    .locals 4

    const/16 v3, 0x50

    const/16 v2, 0x3c

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->enableColroScore:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirGreed:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    if-ge v0, v3, :cond_1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirOrange:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirRed:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cir:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cir:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getCurrentNumberImg()Landroid/graphics/Bitmap;
    .locals 4

    const/16 v3, 0x50

    const/16 v2, 0x3c

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->enableColroScore:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberGreed:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    if-ge v0, v3, :cond_1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberOrange:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberRed:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 5

    const/high16 v4, 0x4180

    const/high16 v3, 0x40c0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x4150

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->Frame:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    const v1, 0x7f02024f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberGreed:Landroid/graphics/Bitmap;

    const v1, 0x7f020251

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberRed:Landroid/graphics/Bitmap;

    const v1, 0x7f020250

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberOrange:Landroid/graphics/Bitmap;

    const v1, 0x7f020252

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->box:Landroid/graphics/Bitmap;

    const v1, 0x7f020253

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBox:Landroid/graphics/Bitmap;

    const v1, 0x7f020140

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirGreed:Landroid/graphics/Bitmap;

    const v1, 0x7f020141

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirRed:Landroid/graphics/Bitmap;

    const v1, 0x7f020142

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirOrange:Landroid/graphics/Bitmap;

    const v1, 0x7f02013f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cir:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBox:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->clipWidth:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBox:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->clipHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberSrcRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberSrcRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberSrcRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxSrcRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxSrcRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxSrcRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->box:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->box:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBoxSrcRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBoxSrcRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBoxSrcRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBoxSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBox:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBoxSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBox:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->box:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x4000

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->disY:I

    const/high16 v0, 0x4080

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxClipX:I

    invoke-direct {p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxClipY:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->clipWidth:I

    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxClipW:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->clipHeight:I

    const/high16 v1, 0x4130

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->boxClipH:I

    const/high16 v0, 0x4188

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneNumberTranslateX:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/high16 v1, 0x4198

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoNumberTranslateX:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/high16 v1, 0x4190

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeNumberTranslateX:I

    const/high16 v0, 0x4258

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->dip2px(F)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->backTranslateX:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endRollH:I

    return-void
.end method

.method private setIsColroScore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->enableColroScore:Z

    return-void
.end method

.method private stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isAnimationing:Z

    return-void
.end method


# virtual methods
.method public detroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->box:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->box:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberGreed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberGreed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberRed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberOrange:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->numberOrange:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBox:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBox:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirGreed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirGreed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirRed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirOrange:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cirOrange:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cir:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->cir:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    return-void
.end method

.method public endScroll()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isEndAnimation:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameOne:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameTwo:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endAnimationFrameThree:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->enableColroScore:Z

    return-void
.end method

.method public getAnimationing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isAnimationing:Z

    return v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->drawScene(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBox:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->outBox:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setScore(I)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isAnimationing:Z

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->score:I

    div-int/lit8 v0, p1, 0x64

    neg-int v0, v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->oneTranslateY:I

    rem-int/lit8 v0, p1, 0x64

    div-int/lit8 v0, v0, 0xa

    neg-int v0, v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->twoTranslateY:I

    rem-int/lit8 v0, p1, 0xa

    neg-int v0, v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->number:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->threeTranslateY:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startAnimation()V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x171

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->setScore(I)V

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->isAnimationing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->enableColroScore:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
