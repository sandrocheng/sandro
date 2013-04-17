.class final Laks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lmf;

.field private synthetic c:Lakp;


# direct methods
.method constructor <init>(Lakp;Landroid/view/View;Lmf;)V
    .locals 0

    iput-object p1, p0, Laks;->c:Lakp;

    iput-object p2, p0, Laks;->a:Landroid/view/View;

    iput-object p3, p0, Laks;->b:Lmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Laks;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laks;->c:Lakp;

    invoke-static {v0}, Lakp;->d(Lakp;)Ljava/lang/String;

    iget-object v0, p0, Laks;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Laks;->c:Lakp;

    invoke-static {v0}, Lakp;->e(Lakp;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    instance-of v0, v0, Lbhx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laks;->c:Lakp;

    invoke-static {v0}, Lakp;->e(Lakp;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    check-cast v0, Lbhx;

    iget-object v1, p0, Laks;->b:Lmf;

    invoke-virtual {v0, v1}, Lbhx;->a(Lmf;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laks;->c:Lakp;

    invoke-static {v0}, Lakp;->e(Lakp;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    instance-of v0, v0, Lbhy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laks;->c:Lakp;

    invoke-static {v0}, Lakp;->e(Lakp;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    check-cast v0, Lbhy;

    iget-object v1, p0, Laks;->b:Lmf;

    invoke-virtual {v0, v1}, Lbhy;->a(Lmf;)V

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
