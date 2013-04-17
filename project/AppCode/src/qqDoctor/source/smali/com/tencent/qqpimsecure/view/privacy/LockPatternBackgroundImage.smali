.class public Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;
.super Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    sget v0, Lgw;->a:I

    sget v1, Lgw;->b:I

    if-ge v0, v1, :cond_0

    sget v0, Lgw;->a:I

    :goto_0
    int-to-float v1, v0

    const v2, 0x3f1f9336

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;->setMeasuredDimension(II)V

    return-void

    :cond_0
    sget v0, Lgw;->b:I

    goto :goto_0
.end method
