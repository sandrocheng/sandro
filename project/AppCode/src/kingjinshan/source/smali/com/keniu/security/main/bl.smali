.class final Lcom/keniu/security/main/bl;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/main/bl;-><init>(Lcom/keniu/security/main/MainActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/main/MainActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/high16 v1, 0x4000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2254
    iget-object v0, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->w(Lcom/keniu/security/main/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    .line 2255
    iget-object v0, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->w(Lcom/keniu/security/main/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    .line 2258
    iget-object v0, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->x(Lcom/keniu/security/main/MainActivity;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->y(Lcom/keniu/security/main/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2260
    iget-object v0, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->z(Lcom/keniu/security/main/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2261
    iget-object v0, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->z(Lcom/keniu/security/main/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2263
    iget-object v0, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/keniu/security/main/MainActivity;->b(Lcom/keniu/security/main/MainActivity;I)I

    .line 2272
    :goto_0
    new-instance v0, Lcom/keniu/security/main/cg;

    iget-object v1, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/main/MainActivity;->A(Lcom/keniu/security/main/MainActivity;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x10e

    int-to-float v1, v1

    iget-object v2, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v2}, Lcom/keniu/security/main/MainActivity;->A(Lcom/keniu/security/main/MainActivity;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x168

    int-to-float v2, v2

    invoke-direct/range {v0 .. v5}, Lcom/keniu/security/main/cg;-><init>(FFFFZ)V

    .line 2275
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/main/cg;->setDuration(J)V

    .line 2276
    invoke-virtual {v0, v6}, Lcom/keniu/security/main/cg;->setFillAfter(Z)V

    .line 2277
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/cg;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2279
    iget-object v1, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/main/MainActivity;->B(Lcom/keniu/security/main/MainActivity;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/cg;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2281
    iget-object v1, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/main/MainActivity;->w(Lcom/keniu/security/main/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2282
    return-void

    .line 2266
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->z(Lcom/keniu/security/main/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2267
    iget-object v0, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->y(Lcom/keniu/security/main/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2268
    iget-object v0, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->y(Lcom/keniu/security/main/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2270
    iget-object v0, p0, Lcom/keniu/security/main/bl;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0, v6}, Lcom/keniu/security/main/MainActivity;->b(Lcom/keniu/security/main/MainActivity;I)I

    goto :goto_0
.end method
