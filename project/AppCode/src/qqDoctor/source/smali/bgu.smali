.class final Lbgu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;


# instance fields
.field private synthetic a:Lbgt;


# direct methods
.method constructor <init>(Lbgt;)V
    .locals 0

    iput-object p1, p0, Lbgu;->a:Lbgt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lbgu;->a:Lbgt;

    iget-object v0, v0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbgu;->a:Lbgt;

    invoke-static {v1}, Lbgt;->a(Lbgt;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lbgu;->a:Lbgt;

    iget-object v0, v0, Lbgt;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lbgu;->a:Lbgt;

    invoke-static {v1}, Lbgt;->b(Lbgt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0aee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lbgu;->a:Lbgt;

    iget-object v0, v0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbgu;->a:Lbgt;

    invoke-static {v1}, Lbgt;->a(Lbgt;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const v7, 0x7f0200ba

    const/16 v6, 0x67

    const/16 v5, 0x65

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lbgu;->a:Lbgt;

    iget-object v2, v2, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lbgu;->a:Lbgt;

    iget-object v0, v0, Lbgt;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lbgu;->a:Lbgt;

    invoke-static {v1}, Lbgt;->c(Lbgt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0aef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    iget-object v0, v0, Lbgt;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lbgu;->a:Lbgt;

    invoke-static {v1}, Lbgt;->d(Lbgt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0}, Lbgt;->e(Lbgt;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    iget-object v0, v0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    sget-object v1, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setDisplayMode(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;)V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0, v5}, Lbgt;->a(Lbgt;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lbgu;->a:Lbgt;

    invoke-static {v3}, Lbgt;->f(Lbgt;)I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0}, Lbgt;->g(Lbgt;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0, v2}, Lbgt;->a(Lbgt;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    iget-object v0, p0, Lbgu;->a:Lbgt;

    iget-object v0, v0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    sget-object v1, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setDisplayMode(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;)V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0, v6}, Lbgt;->a(Lbgt;I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lbgu;->a:Lbgt;

    invoke-static {v2}, Lbgt;->f(Lbgt;)I

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lbgu;->a:Lbgt;

    iget-object v2, v2, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v3, p0, Lbgu;->a:Lbgt;

    invoke-static {v3}, Lbgt;->g(Lbgt;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a(Ljava/util/LinkedList;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lbgu;->a:Lbgt;

    iget-object v2, v2, Lbgt;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lbgu;->a:Lbgt;

    invoke-static {v3}, Lbgt;->h(Lbgt;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lbgu;->a:Lbgt;

    iget-object v2, v2, Lbgt;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lbgu;->a:Lbgt;

    invoke-static {v3}, Lbgt;->i(Lbgt;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0af3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->cl()I

    move-result v3

    if-ne v3, v0, :cond_6

    invoke-virtual {v2}, Lho;->cd()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    :goto_2
    if-eqz v2, :cond_6

    :goto_3
    if-eqz v0, :cond_7

    :cond_3
    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0}, Lbgt;->j(Lbgt;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lbgu;->a:Lbgt;

    invoke-static {v2}, Lbgt;->k(Lbgt;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0af2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    invoke-static {v0, v2, v3, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;II)V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0}, Lbgt;->l(Lbgt;)Landroid/content/Context;

    invoke-static {}, La;->d()V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0}, Lbgt;->m(Lbgt;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0}, Lbgt;->n(Lbgt;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lbgu;->a:Lbgt;

    iget-object v0, v0, Lbgt;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lbgu;->a:Lbgt;

    invoke-static {v1}, Lbgt;->o(Lbgt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0b0a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    iget-object v0, v0, Lbgt;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lbgu;->a:Lbgt;

    invoke-static {v1}, Lbgt;->p(Lbgt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0}, Lbgt;->e(Lbgt;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    iget-object v0, v0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    sget-object v1, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setDisplayMode(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;)V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0, v5}, Lbgt;->a(Lbgt;I)V

    iget-object v0, p0, Lbgu;->a:Lbgt;

    invoke-static {v0}, Lbgt;->g(Lbgt;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_0
.end method
