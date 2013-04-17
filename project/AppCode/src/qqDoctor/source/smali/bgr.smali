.class final Lbgr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lbgo;


# direct methods
.method constructor <init>(Lbgo;)V
    .locals 0

    iput-object p1, p0, Lbgr;->a:Lbgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lbgr;->a:Lbgo;

    invoke-virtual {v0}, Lbgo;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    iget-object v0, p0, Lbgr;->a:Lbgo;

    iget-object v0, v0, Lbgo;->b:Lyj;

    iget-object v0, p0, Lbgr;->a:Lbgo;

    invoke-static {v0}, Lbgo;->r(Lbgo;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbgr;->a:Lbgo;

    invoke-static {v1}, Lbgo;->b(Lbgo;)I

    move-result v1

    invoke-static {v0, v1}, Lyj;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lbgr;->a:Lbgo;

    invoke-static {v0}, Lbgo;->f(Lbgo;)Lho;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lho;->A(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lbgr;->a:Lbgo;

    iget-object v0, v0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->b()V

    return-void
.end method
