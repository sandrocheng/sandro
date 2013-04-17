.class final Lbqk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lbqb;


# direct methods
.method constructor <init>(Lbqb;)V
    .locals 0

    iput-object p1, p0, Lbqk;->a:Lbqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lbqk;->a:Lbqb;

    invoke-static {v0}, Lbqb;->d(Lbqb;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lbqk;->a:Lbqb;

    invoke-static {v0}, Lbqb;->e(Lbqb;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbqk;->a:Lbqb;

    invoke-static {v0}, Lbqb;->f(Lbqb;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbqk;->a:Lbqb;

    invoke-static {v0}, Lbqb;->g(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbqk;->a:Lbqb;

    invoke-static {v0}, Lbqb;->h(Lbqb;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lbqk;->a:Lbqb;

    invoke-static {v0}, Lbqb;->i(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    iget-object v0, p0, Lbqk;->a:Lbqb;

    invoke-static {v0}, Lbqb;->j(Lbqb;)V

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
