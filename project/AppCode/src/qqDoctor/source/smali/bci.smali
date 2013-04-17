.class final Lbci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbce;


# direct methods
.method constructor <init>(Lbce;)V
    .locals 0

    iput-object p1, p0, Lbci;->a:Lbce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dj()Z

    move-result v2

    iget-object v0, p0, Lbci;->a:Lbce;

    invoke-virtual {v0}, Lbce;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Laii;

    invoke-virtual {v0}, Laii;->a()I

    move-result v1

    iget-object v3, p0, Lbci;->a:Lbce;

    invoke-static {v3}, Lbce;->g(Lbce;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb$a;

    iget-object v3, p0, Lbci;->a:Lbce;

    invoke-static {v3}, Lbce;->h(Lbce;)Lja;

    move-result-object v3

    iget-object v1, v1, Lmb$a;->i:Lmb;

    iget-object v1, v1, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lja;->a(Ljava/lang/String;)Lmb;

    move-result-object v1

    if-eqz v2, :cond_1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbci;->a:Lbce;

    invoke-static {v0}, Lbce;->i(Lbce;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lbci;->a:Lbce;

    invoke-static {v0}, Lbce;->j(Lbce;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0b04d1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbci;->a:Lbce;

    invoke-static {v0}, Lbce;->k(Lbce;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0b0b3a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0338

    new-instance v1, Lbcj;

    invoke-direct {v1, p0, v2}, Lbcj;-><init>(Lbci;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0, v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lbck;

    invoke-direct {v1, p0, v2}, Lbck;-><init>(Lbci;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0, v1, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, v1, Lmb;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v2

    const/16 v3, 0x66b5

    invoke-virtual {v2, v3}, Lnd;->a(I)V

    iput v7, v1, Lmb;->c:I

    iget-object v2, p0, Lbci;->a:Lbce;

    invoke-static {v2}, Lbce;->h(Lbce;)Lja;

    move-result-object v2

    invoke-virtual {v2, v1}, Lja;->b(Lmb;)Z

    iget-object v2, p0, Lbci;->a:Lbce;

    invoke-static {v2}, Lbce;->h(Lbce;)Lja;

    invoke-static {v1}, Lja;->c(Lmb;)V

    iget-object v1, p0, Lbci;->a:Lbce;

    invoke-static {v1}, Lbce;->m(Lbce;)V

    :cond_2
    invoke-virtual {v0, v5}, Laii;->b(I)V

    iget-object v0, p0, Lbci;->a:Lbce;

    invoke-static {v0}, Lbce;->o(Lbce;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
