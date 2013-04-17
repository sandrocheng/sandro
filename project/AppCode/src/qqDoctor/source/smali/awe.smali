.class final Lawe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lavu;


# direct methods
.method constructor <init>(Lavu;)V
    .locals 0

    iput-object p1, p0, Lawe;->a:Lavu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lawe;->a:Lavu;

    invoke-static {v0}, Lavu;->v(Lavu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lawe;->a:Lavu;

    invoke-static {v1}, Lavu;->w(Lavu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v1, p0, Lawe;->a:Lavu;

    invoke-virtual {v1, v0}, Lavu;->a(Lmk;)V

    iget-object v0, p0, Lawe;->a:Lavu;

    invoke-virtual {v0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiw;

    invoke-virtual {v0}, Laiw;->a()V

    iget-object v0, p0, Lawe;->a:Lavu;

    invoke-virtual {v0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiw;

    invoke-virtual {v0}, Laiw;->notifyDataSetChanged()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66cb

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method
