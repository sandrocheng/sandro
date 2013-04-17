.class public Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:I

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private e:I

.field private f:Landroid/view/animation/Animation;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->f:Landroid/view/animation/Animation;

    sget-object v0, La$a;->BatteryLevelScreenView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->h:Ljava/lang/String;

    const-string v2, "land"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f030018

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->c:Landroid/widget/ImageView;

    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->a:Landroid/widget/ImageView;

    return-void

    :cond_0
    const v1, 0x7f030017

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->e:I

    neg-int v2, v2

    iget v3, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->b:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->f:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->f:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->f:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->f:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->c()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->d:I

    iget v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->d:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->b:I

    :cond_0
    iget v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->d:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->g:I

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->setBatteryLevel(I)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->b:I

    :cond_0
    iget v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->d:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->g:I

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->setBatteryLevel(I)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setBatteryBgImage(I)V
    .locals 2

    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 1

    iput p1, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->g:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->postInvalidate()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->d:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->e:I

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->postInvalidate()V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/view/BatteryLevelScreenView;->c()V

    goto :goto_0
.end method
