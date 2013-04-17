.class final Laxr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Laxj;


# direct methods
.method constructor <init>(Laxj;)V
    .locals 0

    iput-object p1, p0, Laxr;->a:Laxj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    iget-object v0, p0, Laxr;->a:Laxj;

    invoke-static {v0}, Laxj;->j(Laxj;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Laxr;->a:Laxj;

    invoke-static {v0}, Laxj;->l(Laxj;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->onScroll(Landroid/widget/AbsListView;III)V

    return-void

    :cond_2
    if-le p2, v0, :cond_1

    iget-object v0, p0, Laxr;->a:Laxj;

    invoke-static {v0}, Laxj;->k(Laxj;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
