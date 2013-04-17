.class final Lbna;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lbmp;


# direct methods
.method constructor <init>(Lbmp;)V
    .locals 0

    iput-object p1, p0, Lbna;->a:Lbmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lbna;->a:Lbmp;

    invoke-static {v0}, Lbmp;->F(Lbmp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbna;->a:Lbmp;

    invoke-static {v0}, Lbmp;->H(Lbmp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lbna;->a:Lbmp;

    invoke-static {v0}, Lbmp;->I(Lbmp;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b089d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbna;->a:Lbmp;

    invoke-static {v0}, Lbmp;->I(Lbmp;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lbna;->a:Lbmp;

    invoke-static {v1}, Lbmp;->J(Lbmp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbna;->a:Lbmp;

    invoke-static {v0}, Lbmp;->I(Lbmp;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lbna;->a:Lbmp;

    invoke-static {v0}, Lbmp;->K(Lbmp;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbna;->a:Lbmp;

    invoke-static {v0}, Lbmp;->L(Lbmp;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbna;->a:Lbmp;

    invoke-static {v0}, Lbmp;->M(Lbmp;)V

    iget-object v0, p0, Lbna;->a:Lbmp;

    invoke-static {v0}, Lbmp;->K(Lbmp;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lbna;->a:Lbmp;

    invoke-static {v1}, Lbmp;->N(Lbmp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbna;->a:Lbmp;

    invoke-static {v0}, Lbmp;->K(Lbmp;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbna;->a:Lbmp;

    invoke-static {v0}, Lbmp;->L(Lbmp;)V

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
