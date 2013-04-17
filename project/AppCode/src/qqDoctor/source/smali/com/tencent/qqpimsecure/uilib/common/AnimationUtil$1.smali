.class final Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;
.super Landroid/view/animation/Animation;


# instance fields
.field private initialHeight:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fromHeight:I

.field final synthetic val$hiddenView:Landroid/view/View;

.field final synthetic val$isExpanded:Z

.field final synthetic val$toHeight:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(ZIILandroid/view/View;Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$isExpanded:Z

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$fromHeight:I

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$toHeight:I

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$hiddenView:Landroid/view/View;

    iput-object p6, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->initialHeight:I

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$isExpanded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$fromHeight:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->initialHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$toHeight:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->initialHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final initialize(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$hiddenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AnimationUtil$1;->initialHeight:I

    return-void
.end method

.method public final willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
