.class final Lbfw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lbfv;


# direct methods
.method constructor <init>(Lbfv;)V
    .locals 0

    iput-object p1, p0, Lbfw;->a:Lbfv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lbfw;->a:Lbfv;

    iget-object v0, v0, Lbfv;->a:Lbft;

    invoke-virtual {v0}, Lbft;->d()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lbfw;->a:Lbfv;

    iget-object v0, v0, Lbfv;->a:Lbft;

    iget-object v0, v0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b()V

    return-void
.end method
