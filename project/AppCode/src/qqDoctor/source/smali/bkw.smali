.class final Lbkw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lbkn;


# direct methods
.method constructor <init>(Lbkn;)V
    .locals 0

    iput-object p1, p0, Lbkw;->a:Lbkn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lbkw;->a:Lbkn;

    invoke-static {v0}, Lbkn;->q(Lbkn;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbkw;->a:Lbkn;

    invoke-static {v0}, Lbkn;->r(Lbkn;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lbkw;->a:Lbkn;

    invoke-static {v0}, Lbkn;->t(Lbkn;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lbkw;->a:Lbkn;

    invoke-static {v1}, Lbkn;->s(Lbkn;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbkw;->a:Lbkn;

    invoke-static {v0}, Lbkn;->s(Lbkn;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lbkw;->a:Lbkn;

    invoke-static {v0}, Lbkn;->t(Lbkn;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lbkw;->a:Lbkn;

    invoke-static {v1}, Lbkn;->u(Lbkn;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbkw;->a:Lbkn;

    invoke-static {v0}, Lbkn;->u(Lbkn;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbkw;->a:Lbkn;

    invoke-static {v0}, Lbkn;->t(Lbkn;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lbkw;->a:Lbkn;

    invoke-static {v1}, Lbkn;->r(Lbkn;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
