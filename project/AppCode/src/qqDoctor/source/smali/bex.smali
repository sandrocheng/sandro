.class final Lbex;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lbew;


# direct methods
.method constructor <init>(Lbew;)V
    .locals 0

    iput-object p1, p0, Lbex;->a:Lbew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v1, p0, Lbex;->a:Lbew;

    iget-object v0, p0, Lbex;->a:Lbew;

    invoke-static {v0}, Lbew;->a(Lbew;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lbew;->a(Lbew;Z)Z

    iget-object v0, p0, Lbex;->a:Lbew;

    invoke-static {v0}, Lbew;->a(Lbew;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbex;->a:Lbew;

    invoke-static {v0}, Lbew;->c(Lbew;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lbex;->a:Lbew;

    invoke-static {v1}, Lbew;->b(Lbew;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbex;->a:Lbew;

    invoke-static {v0}, Lbew;->c(Lbew;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lbex;->a:Lbew;

    invoke-static {v1}, Lbew;->d(Lbew;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
