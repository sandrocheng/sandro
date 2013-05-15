.class public Lcom/avast/android/mobilesecurity/ui/g;
.super Ljava/lang/Object;
.source "SideMenu.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/avast/android/mobilesecurity/ui/k;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/widget/FrameLayout;

.field private k:Lcom/avast/android/mobilesecurity/ui/j;

.field private l:Landroid/widget/Scroller;

.field private m:Z

.field private n:I

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->p:Z

    .line 211
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    .line 212
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/ui/g;->c:Landroid/view/View;

    .line 213
    iput p3, p0, Lcom/avast/android/mobilesecurity/ui/g;->e:I

    .line 214
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->f:I

    .line 216
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->g:I

    .line 218
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->n:I

    .line 220
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->o:I

    .line 222
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->h:I

    .line 224
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->i:I

    .line 226
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->l:Landroid/widget/Scroller;

    .line 227
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/g;->f()V

    .line 228
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->l:Landroid/widget/Scroller;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    neg-int v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 329
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 330
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/g;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/ui/g;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/g;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/ui/g;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->d:Landroid/view/View;

    return-object v0
.end method

.method private b(I)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 350
    if-nez p1, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/g;->c()V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->h:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 356
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->l:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    neg-int v3, v9

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/avast/android/mobilesecurity/ui/g;->g:I

    sub-int/2addr v4, v5

    neg-int v5, v4

    move v4, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 358
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->l:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/g;->g:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 359
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->g:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 361
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->l:Landroid/widget/Scroller;

    int-to-float v2, v9

    div-float/2addr v0, v2

    const/high16 v2, 0x447a

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->extendDuration(I)V

    .line 362
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 364
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->m:Z

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->m:Z

    .line 366
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->k:Lcom/avast/android/mobilesecurity/ui/j;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->k:Lcom/avast/android/mobilesecurity/ui/j;

    invoke-interface {v0, p0}, Lcom/avast/android/mobilesecurity/ui/j;->a(Lcom/avast/android/mobilesecurity/ui/g;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/ui/g;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/ui/g;->b(I)V

    return-void
.end method

.method private c(I)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 398
    if-nez p1, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/g;->d()V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->h:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 404
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->l:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    neg-int v3, v9

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/avast/android/mobilesecurity/ui/g;->g:I

    sub-int/2addr v4, v5

    neg-int v5, v4

    move v4, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 406
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->l:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 407
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 408
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->l:Landroid/widget/Scroller;

    int-to-float v3, v9

    div-float/2addr v0, v3

    const/high16 v3, 0x447a

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->extendDuration(I)V

    .line 409
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 411
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->m:Z

    if-eqz v0, :cond_0

    .line 412
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/g;->m:Z

    .line 413
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->k:Lcom/avast/android/mobilesecurity/ui/j;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->k:Lcom/avast/android/mobilesecurity/ui/j;

    invoke-interface {v0, p0}, Lcom/avast/android/mobilesecurity/ui/j;->b(Lcom/avast/android/mobilesecurity/ui/g;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/ui/g;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/ui/g;->c(I)V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/ui/g;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->p:Z

    return v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/ui/g;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/avast/android/mobilesecurity/ui/g;->f:I

    return p1
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/ui/g;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/ui/g;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->n:I

    return v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/ui/g;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/avast/android/mobilesecurity/ui/g;->g:I

    return p1
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 234
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 235
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 237
    new-instance v1, Lcom/avast/android/mobilesecurity/ui/k;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/avast/android/mobilesecurity/ui/k;-><init>(Lcom/avast/android/mobilesecurity/ui/g;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->b:Lcom/avast/android/mobilesecurity/ui/k;

    .line 238
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->b:Lcom/avast/android/mobilesecurity/ui/k;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v1, Lcom/avast/android/mobilesecurity/ui/l;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/avast/android/mobilesecurity/ui/l;-><init>(Lcom/avast/android/mobilesecurity/ui/g;Landroid/content/Context;Lcom/avast/android/mobilesecurity/ui/h;)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    .line 242
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/g;->g()V

    .line 245
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/g;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->b:Lcom/avast/android/mobilesecurity/ui/k;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/k;->addView(Landroid/view/View;)V

    .line 248
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 249
    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/g;->e:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->d:Landroid/view/View;

    .line 250
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->b:Lcom/avast/android/mobilesecurity/ui/k;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/avast/android/mobilesecurity/ui/h;

    invoke-direct {v2, p0, v0}, Lcom/avast/android/mobilesecurity/ui/h;-><init>(Lcom/avast/android/mobilesecurity/ui/g;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/ui/g;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->g:I

    return v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 280
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 281
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 284
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 286
    neg-int v1, v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 287
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 289
    return-void
.end method

.method private h()I
    .locals 2

    .prologue
    .line 483
    const/high16 v0, 0x3f80

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/g;->j()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->o:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic h(Lcom/avast/android/mobilesecurity/ui/g;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->i:I

    return v0
.end method

.method private i()I
    .locals 2

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/g;->j()F

    move-result v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->o:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic i(Lcom/avast/android/mobilesecurity/ui/g;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->f:I

    return v0
.end method

.method private j()F
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->g:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 492
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 493
    div-float v0, v1, v0

    return v0
.end method

.method static synthetic j(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/ui/j;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/g;->k:Lcom/avast/android/mobilesecurity/ui/j;

    .line 298
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->m:Z

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/g;->g:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 337
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->m:Z

    .line 339
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->k:Lcom/avast/android/mobilesecurity/ui/j;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->k:Lcom/avast/android/mobilesecurity/ui/j;

    invoke-interface {v0, p0}, Lcom/avast/android/mobilesecurity/ui/j;->a(Lcom/avast/android/mobilesecurity/ui/g;)V

    .line 342
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/avast/android/mobilesecurity/ui/g;->g:I

    sub-int/2addr v1, v3

    neg-int v1, v1

    if-ne v0, v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->l:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/avast/android/mobilesecurity/ui/g;->g:I

    sub-int/2addr v3, v4

    neg-int v3, v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/g;->h()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 382
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 384
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->m:Z

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->m:Z

    .line 386
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->k:Lcom/avast/android/mobilesecurity/ui/j;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->k:Lcom/avast/android/mobilesecurity/ui/j;

    invoke-interface {v0, p0}, Lcom/avast/android/mobilesecurity/ui/j;->a(Lcom/avast/android/mobilesecurity/ui/g;)V

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->l:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    neg-int v3, v3

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/g;->i()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 428
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 430
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->m:Z

    if-eqz v0, :cond_0

    .line 431
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/g;->m:Z

    .line 432
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->k:Lcom/avast/android/mobilesecurity/ui/j;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->k:Lcom/avast/android/mobilesecurity/ui/j;

    invoke-interface {v0, p0}, Lcom/avast/android/mobilesecurity/ui/j;->b(Lcom/avast/android/mobilesecurity/ui/g;)V

    goto :goto_0
.end method

.method public e()V
    .locals 10

    .prologue
    const v9, 0x7f0a0048

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 442
    iput-boolean v7, p0, Lcom/avast/android/mobilesecurity/ui/g;->p:Z

    .line 443
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/g;->b:Lcom/avast/android/mobilesecurity/ui/k;

    const-string v2, "translationX"

    new-array v3, v5, [F

    aput v8, v3, v6

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/a/a/q;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/a/a/q;

    move-result-object v1

    .line 448
    const v2, 0x7f0b0016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/a/a/q;->a(J)Lcom/a/a/q;

    .line 449
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/a/a/q;->a(Landroid/view/animation/Interpolator;)V

    .line 451
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/g;->b:Lcom/avast/android/mobilesecurity/ui/k;

    const-string v3, "translationX"

    new-array v4, v5, [F

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Lcom/a/a/q;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/a/a/q;

    move-result-object v2

    .line 453
    const v3, 0x7f0b0018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/a/a/q;->a(J)Lcom/a/a/q;

    .line 454
    new-instance v3, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v3}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/a/a/q;->a(Landroid/view/animation/Interpolator;)V

    .line 456
    new-instance v3, Lcom/a/a/d;

    invoke-direct {v3}, Lcom/a/a/d;-><init>()V

    .line 457
    invoke-virtual {v3, v2}, Lcom/a/a/d;->a(Lcom/a/a/a;)Lcom/a/a/g;

    move-result-object v2

    const v4, 0x7f0b0017

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/a/a/g;->a(J)Lcom/a/a/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/g;->a(Lcom/a/a/a;)Lcom/a/a/g;

    .line 459
    invoke-virtual {v3}, Lcom/a/a/d;->a()V

    .line 461
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/i;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/ui/i;-><init>(Lcom/avast/android/mobilesecurity/ui/g;)V

    invoke-virtual {v3, v0}, Lcom/a/a/d;->a(Lcom/a/a/b;)V

    .line 480
    return-void
.end method
