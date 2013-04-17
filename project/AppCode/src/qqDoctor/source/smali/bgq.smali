.class final Lbgq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;


# instance fields
.field private synthetic a:Lbgo;


# direct methods
.method constructor <init>(Lbgo;)V
    .locals 0

    iput-object p1, p0, Lbgq;->a:Lbgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbgq;->a:Lbgo;

    iget-object v0, v0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbgq;->a:Lbgo;

    invoke-static {v1}, Lbgo;->e(Lbgo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lbgq;->a:Lbgo;

    iget-object v0, v0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbgq;->a:Lbgo;

    invoke-static {v1}, Lbgo;->e(Lbgo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lbgq;->a:Lbgo;

    iget-object v0, v0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d()Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {v0}, La;->a(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbgq;->a:Lbgo;

    invoke-static {v2}, Lbgo;->f(Lbgo;)Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->h(Lbgo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lbgq;->a:Lbgo;

    invoke-static {v2}, Lbgo;->g(Lbgo;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0af1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->b(Lbgo;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->c(Lbgo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->c(Lbgo;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->c(Lbgo;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsv;->c:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->i(Lbgo;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lbgq;->a:Lbgo;

    invoke-static {v2}, Lbgo;->j(Lbgo;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0af2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    invoke-static {v0, v2, v3, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;II)V

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->k(Lbgo;)Landroid/content/Context;

    invoke-static {}, La;->d()V

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->l(Lbgo;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->m(Lbgo;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lbgq;->a:Lbgo;

    iget-object v0, v0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    sget-object v1, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setDisplayMode(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;)V

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->n(Lbgo;)V

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->h(Lbgo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lbgq;->a:Lbgo;

    invoke-static {v1}, Lbgo;->o(Lbgo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->h(Lbgo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lbgq;->a:Lbgo;

    invoke-static {v1}, Lbgo;->p(Lbgo;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0af0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbgq;->a:Lbgo;

    invoke-static {v0}, Lbgo;->q(Lbgo;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
