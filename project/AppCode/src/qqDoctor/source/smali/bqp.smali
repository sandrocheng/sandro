.class final Lbqp;
.super Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;


# instance fields
.field private synthetic a:Lbqo;


# direct methods
.method constructor <init>(Lbqo;)V
    .locals 0

    iput-object p1, p0, Lbqp;->a:Lbqo;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationFinish()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lbqp;->a:Lbqo;

    iget-object v0, v0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->i(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    iget-object v0, p0, Lbqp;->a:Lbqo;

    iget-object v0, v0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->v(Lbqb;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbqp;->a:Lbqo;

    iget-object v0, v0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->h(Lbqb;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lbqp;->a:Lbqo;

    iget-object v0, v0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->g(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbqp;->a:Lbqo;

    iget-object v0, v0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->g(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    iget-object v1, p0, Lbqp;->a:Lbqo;

    iget-object v1, v1, Lbqo;->a:Lbqb;

    invoke-static {v1}, Lbqb;->w(Lbqb;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0961

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lbqp;->a:Lbqo;

    iget-object v0, v0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->x(Lbqb;)V

    iget-object v0, p0, Lbqp;->a:Lbqo;

    iget-object v0, v0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->m(Lbqb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lbqp;->a:Lbqo;

    iget-object v0, v0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->z(Lbqb;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lbqp;->a:Lbqo;

    iget-object v1, v1, Lbqo;->a:Lbqb;

    invoke-static {v1}, Lbqb;->y(Lbqb;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0973

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lbqp;->a:Lbqo;

    iget-object v0, v0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->A(Lbqb;)Z

    iget-object v0, p0, Lbqp;->a:Lbqo;

    iget-object v0, v0, Lbqo;->a:Lbqb;

    invoke-static {v0, v3}, Lbqb;->a(Lbqb;Z)Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cJ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->showDialog()V

    :cond_1
    return-void
.end method
