.class final Lcom/keniu/security/main/az;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2285
    iput-object p1, p0, Lcom/keniu/security/main/az;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2299
    iget-object v0, p0, Lcom/keniu/security/main/az;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->x(Lcom/keniu/security/main/MainActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/keniu/security/main/az;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->C(Lcom/keniu/security/main/MainActivity;)Landroid/widget/SlidingDrawer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 2305
    iget-object v0, p0, Lcom/keniu/security/main/az;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->D(Lcom/keniu/security/main/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2306
    iget-object v0, p0, Lcom/keniu/security/main/az;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->E(Lcom/keniu/security/main/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2307
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 2308
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->b()V

    .line 2309
    iget-object v0, p0, Lcom/keniu/security/main/az;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->o(Lcom/keniu/security/main/MainActivity;)V

    .line 2319
    :cond_0
    :goto_0
    return-void

    .line 2311
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/az;->a:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/main/MainActivity;->g()V

    .line 2312
    iget-object v0, p0, Lcom/keniu/security/main/az;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->i(Lcom/keniu/security/main/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/keniu/security/main/az;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->i(Lcom/keniu/security/main/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2314
    iget-object v0, p0, Lcom/keniu/security/main/az;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->i(Lcom/keniu/security/main/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2315
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/main/az;->a:Lcom/keniu/security/main/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/main/MainActivity;->a(Lcom/keniu/security/main/MainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 2295
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 2290
    return-void
.end method
