.class final Lbcl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbce;


# direct methods
.method constructor <init>(Lbce;)V
    .locals 0

    iput-object p1, p0, Lbcl;->a:Lbce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lbcl;->a:Lbce;

    invoke-virtual {v0}, Lbce;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Laii;

    invoke-virtual {v0}, Laii;->a()I

    move-result v1

    iget-object v2, p0, Lbcl;->a:Lbce;

    invoke-static {v2}, Lbce;->p(Lbce;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb$a;

    iget-object v2, p0, Lbcl;->a:Lbce;

    invoke-static {v2}, Lbce;->h(Lbce;)Lja;

    move-result-object v2

    iget-object v1, v1, Lmb$a;->i:Lmb;

    iget-object v1, v1, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lja;->a(Ljava/lang/String;)Lmb;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v2

    const/16 v3, 0x66b4

    invoke-virtual {v2, v3}, Lnd;->a(I)V

    const/4 v2, 0x1

    iput v2, v1, Lmb;->c:I

    iget-object v2, p0, Lbcl;->a:Lbce;

    invoke-static {v2}, Lbce;->h(Lbce;)Lja;

    move-result-object v2

    invoke-virtual {v2, v1}, Lja;->b(Lmb;)Z

    iget-object v2, p0, Lbcl;->a:Lbce;

    invoke-static {v2}, Lbce;->h(Lbce;)Lja;

    invoke-static {v1}, Lja;->c(Lmb;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laii;->b(I)V

    iget-object v1, p0, Lbcl;->a:Lbce;

    invoke-static {v1}, Lbce;->q(Lbce;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0}, Laii;->notifyDataSetChanged()V

    return-void
.end method
