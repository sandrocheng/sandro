.class final Lbdg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbcz;


# direct methods
.method constructor <init>(Lbcz;)V
    .locals 0

    iput-object p1, p0, Lbdg;->a:Lbcz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lbdg;->a:Lbcz;

    invoke-virtual {v0}, Lbcz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakh;

    invoke-virtual {v0}, Lakh;->a()I

    move-result v0

    iget-object v1, p0, Lbdg;->a:Lbcz;

    invoke-static {v1}, Lbcz;->j(Lbcz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkx;

    iget-object v1, p0, Lbdg;->a:Lbcz;

    iget-object v1, v0, Lkx;->e:[B

    iget-object v2, p0, Lbdg;->a:Lbcz;

    invoke-static {v2}, Lbcz;->i(Lbcz;)Lmd;

    move-result-object v2

    iget-object v2, v2, Lmd;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lbcz;->a([BLjava/util/List;I)V

    iget-object v1, p0, Lbdg;->a:Lbcz;

    invoke-static {v1, v0}, Lbcz;->a(Lbcz;Lkx;)V

    iget-object v0, p0, Lbdg;->a:Lbcz;

    invoke-virtual {v0}, Lbcz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakh;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lakh;->b(I)V

    invoke-virtual {v0}, Lakh;->notifyDataSetChanged()V

    return-void
.end method
