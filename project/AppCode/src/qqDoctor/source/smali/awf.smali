.class final Lawf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lavu;


# direct methods
.method constructor <init>(Lavu;)V
    .locals 0

    iput-object p1, p0, Lawf;->a:Lavu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lawf;->a:Lavu;

    invoke-static {v0}, Lavu;->x(Lavu;)Z

    iget-object v0, p0, Lawf;->a:Lavu;

    invoke-static {v0}, Lavu;->y(Lavu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lawf;->a:Lavu;

    invoke-static {v0}, Lavu;->z(Lavu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawf;->a:Lavu;

    invoke-static {v0}, Lavu;->k(Lavu;)Lnd;

    move-result-object v0

    const/16 v2, 0x66cf

    invoke-virtual {v0, v2}, Lnd;->a(I)V

    iget-object v0, p0, Lawf;->a:Lavu;

    invoke-virtual {v0, v1}, Lavu;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lawf;->a:Lavu;

    invoke-static {v0}, Lavu;->A(Lavu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->showContextMenu()Z

    goto :goto_0
.end method
