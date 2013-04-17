.class final Lbcv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Landroid/view/animation/AlphaAnimation;

.field private synthetic b:Lbcu;


# direct methods
.method constructor <init>(Lbcu;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    iput-object p1, p0, Lbcv;->b:Lbcu;

    iput-object p2, p0, Lbcv;->a:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lbcv;->b:Lbcu;

    invoke-static {v0}, Lbcu;->a(Lbcu;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lbcv;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lbcv;->b:Lbcu;

    invoke-static {v0}, Lbcu;->a(Lbcu;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lbcv;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
