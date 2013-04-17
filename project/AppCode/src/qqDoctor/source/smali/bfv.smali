.class final Lbfv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;


# instance fields
.field final synthetic a:Lbft;


# direct methods
.method constructor <init>(Lbft;)V
    .locals 0

    iput-object p1, p0, Lbfv;->a:Lbft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbfv;->a:Lbft;

    iget-object v0, v0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbfv;->a:Lbft;

    invoke-static {v1}, Lbft;->a(Lbft;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lbfv;->a:Lbft;

    iget-object v0, v0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbfv;->a:Lbft;

    invoke-static {v1}, Lbft;->a(Lbft;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lbfv;->a:Lbft;

    iget-object v0, v0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d()Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {v0}, La;->a(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbfv;->a:Lbft;

    iget-object v1, v1, Lbft;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfv;->a:Lbft;

    iget-object v0, v0, Lbft;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lbfv;->a:Lbft;

    invoke-static {v1}, Lbft;->b(Lbft;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0af1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbfv;->a:Lbft;

    iget-object v0, v0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a()V

    iget-object v0, p0, Lbfv;->a:Lbft;

    iget-object v0, v0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    new-instance v1, Lbfw;

    invoke-direct {v1, p0}, Lbfw;-><init>(Lbfv;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbfv;->a:Lbft;

    iget-object v0, v0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    sget-object v1, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->c:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setDisplayMode(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;)V

    iget-object v0, p0, Lbfv;->a:Lbft;

    invoke-static {v0}, Lbft;->c(Lbft;)V

    iget-object v0, p0, Lbfv;->a:Lbft;

    iget-object v0, v0, Lbft;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lbfv;->a:Lbft;

    invoke-static {v1}, Lbft;->d(Lbft;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbfv;->a:Lbft;

    iget-object v0, v0, Lbft;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lbfv;->a:Lbft;

    invoke-static {v1}, Lbft;->e(Lbft;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0af0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbfv;->a:Lbft;

    invoke-static {v0}, Lbft;->f(Lbft;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
