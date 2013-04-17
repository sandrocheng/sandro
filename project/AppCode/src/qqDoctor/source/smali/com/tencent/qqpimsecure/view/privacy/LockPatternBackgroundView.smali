.class public Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;

.field private d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f080166

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f08016a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f080167

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;

    const v0, 0x7f080169

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;

    const v0, 0x7f080165

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f080168

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f080164

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->g:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundImage;->setImageResource(I)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    sget v0, Lgw;->a:I

    sget v2, Lgw;->b:I

    if-ge v0, v2, :cond_0

    sget v0, Lgw;->a:I

    :goto_0
    int-to-float v0, v0

    const v2, 0x3ea45a1d

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->f:Landroid/widget/LinearLayout;

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    sget v0, Lgw;->b:I

    goto :goto_0
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget v0, Lgw;->b:I

    const/16 v1, 0x140

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternBackgroundView;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
