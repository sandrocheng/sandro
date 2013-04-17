.class final Lalq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lkw;

.field private synthetic c:Lall;


# direct methods
.method constructor <init>(Lall;Landroid/view/View;Lkw;)V
    .locals 0

    iput-object p1, p0, Lalq;->c:Lall;

    iput-object p2, p0, Lalq;->a:Landroid/view/View;

    iput-object p3, p0, Lalq;->b:Lkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lalq;->c:Lall;

    invoke-static {v0}, Lall;->f(Lall;)Ljava/lang/String;

    iget-object v0, p0, Lalq;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lalq;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lalq;->c:Lall;

    invoke-static {v0}, Lall;->e(Lall;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    instance-of v0, v0, Lbnr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalq;->c:Lall;

    invoke-static {v0}, Lall;->e(Lall;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    check-cast v0, Lbnr;

    iget-object v1, p0, Lalq;->b:Lkw;

    invoke-virtual {v0, v1}, Lbnr;->a(Lkw;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lalq;->c:Lall;

    invoke-static {v0}, Lall;->e(Lall;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    check-cast v0, Lbns;

    iget-object v1, p0, Lalq;->b:Lkw;

    invoke-virtual {v0, v1}, Lbns;->a(Lkw;)V

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
