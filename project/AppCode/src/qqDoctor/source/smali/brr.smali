.class final Lbrr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lbrp;


# direct methods
.method constructor <init>(Lbrp;Z)V
    .locals 0

    iput-object p1, p0, Lbrr;->b:Lbrp;

    iput-boolean p2, p0, Lbrr;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/16 v1, 0x9

    iget-object v0, p0, Lbrr;->b:Lbrp;

    invoke-static {v0}, Lbrp;->ad(Lbrp;)V

    iget-boolean v0, p0, Lbrr;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrr;->b:Lbrp;

    invoke-static {v0}, Lbrp;->ae(Lbrp;)V

    iget-object v0, p0, Lbrr;->b:Lbrp;

    invoke-static {v0}, Lbrp;->af(Lbrp;)V

    iget-object v0, p0, Lbrr;->b:Lbrp;

    invoke-static {v0}, Lbrp;->ag(Lbrp;)V

    iget-object v0, p0, Lbrr;->b:Lbrp;

    invoke-static {v0}, Lbrp;->ah(Lbrp;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbrr;->b:Lbrp;

    invoke-static {v0}, Lbrp;->R(Lbrp;)Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->d()V

    iget-object v0, p0, Lbrr;->b:Lbrp;

    invoke-static {v0}, Lbrp;->D(Lbrp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbrr;->b:Lbrp;

    invoke-static {v0}, Lbrp;->D(Lbrp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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
