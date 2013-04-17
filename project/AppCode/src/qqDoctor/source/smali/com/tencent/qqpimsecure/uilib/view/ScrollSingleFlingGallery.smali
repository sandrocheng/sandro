.class public Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;
.super Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;


# instance fields
.field private mPath:Landroid/graphics/Path;

.field private mZoomInSide:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mZoomInSide:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mZoomInSide:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mZoomInSide:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method private cutCanvas(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v8, 0x4334

    const/4 v7, 0x0

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mZoomInSide:I

    sget v5, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->ZOOM_IN_SIDE_LEFT:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    sub-int v5, v1, v3

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v4, Landroid/graphics/RectF;

    sub-int v5, v1, v0

    sub-int/2addr v5, v2

    int-to-float v5, v5

    sub-int v6, v1, v2

    int-to-float v6, v6

    int-to-float v0, v0

    invoke-direct {v4, v5, v7, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    const/high16 v5, -0x3d4c

    invoke-virtual {v0, v4, v5, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void

    :cond_1
    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mZoomInSide:I

    sget v5, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->ZOOM_IN_SIDE_RIGHT:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    add-int v5, v3, v2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    add-int/2addr v3, v2

    int-to-float v3, v3

    int-to-float v5, v0

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v4, v0

    int-to-float v0, v0

    invoke-direct {v3, v2, v7, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x42b4

    invoke-virtual {v0, v3, v2, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mPath:Landroid/graphics/Path;

    int-to-float v1, v1

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->cutCanvas(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setZoomSide(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ScrollSingleFlingGallery;->mZoomInSide:I

    return-void
.end method
