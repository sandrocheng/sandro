.class final Lbqe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lbqb;


# direct methods
.method constructor <init>(Lbqb;)V
    .locals 0

    iput-object p1, p0, Lbqe;->a:Lbqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lbqe;->a:Lbqb;

    invoke-static {v0}, Lbqb;->F(Lbqb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqe;->a:Lbqb;

    invoke-static {v0}, Lbqb;->G(Lbqb;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lbqe;->a:Lbqb;

    invoke-static {v0}, Lbqb;->H(Lbqb;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbqe;->a:Lbqb;

    const v1, 0x7f080223

    invoke-virtual {v0, v1}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lbqe;->a:Lbqb;

    invoke-static {v0}, Lbqb;->I(Lbqb;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0960

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lbqe;->a:Lbqb;

    invoke-static {v0}, Lbqb;->K(Lbqb;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbqe;->a:Lbqb;

    invoke-static {v0}, Lbqb;->v(Lbqb;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbqe;->a:Lbqb;

    invoke-static {v0}, Lbqb;->x(Lbqb;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbqe;->a:Lbqb;

    invoke-static {v0}, Lbqb;->J(Lbqb;)V

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
