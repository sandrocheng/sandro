.class public Lcom/tencent/powermanager/uilib/view/CircleBatteryView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->b:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->b:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->a:Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;

    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->d:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->a:Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->a()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->e:I

    iget v1, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->a:Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;

    invoke-virtual {v0, p1}, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->setBatteryLevel(I)V

    return-void
.end method

.method public setIsCharging(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3e99999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->b:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->b:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->b:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->b:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0
.end method
