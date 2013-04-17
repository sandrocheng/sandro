.class final Lbmz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lbmp;


# direct methods
.method constructor <init>(Lbmp;)V
    .locals 0

    iput-object p1, p0, Lbmz;->a:Lbmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lbmz;->a:Lbmp;

    invoke-static {v0}, Lbmp;->F(Lbmp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmz;->a:Lbmp;

    invoke-static {v0}, Lbmp;->G(Lbmp;)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
