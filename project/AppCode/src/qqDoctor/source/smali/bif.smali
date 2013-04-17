.class final Lbif;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbhz;


# direct methods
.method constructor <init>(Lbhz;)V
    .locals 0

    iput-object p1, p0, Lbif;->a:Lbhz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbif;->a:Lbhz;

    invoke-static {v0}, Lbhz;->n(Lbhz;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lbif;->a:Lbhz;

    invoke-static {v1}, Lbhz;->o(Lbhz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    iget-object v1, p0, Lbif;->a:Lbhz;

    invoke-static {v1}, Lbhz;->e(Lbhz;)Lsy;

    move-result-object v1

    invoke-virtual {v0}, Lkz;->b()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lbif;->a:Lbhz;

    invoke-static {v2}, Lbhz;->d(Lbhz;)Ldv;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lsy;->a(Ljava/util/List;Ldv;)V

    return-void
.end method
