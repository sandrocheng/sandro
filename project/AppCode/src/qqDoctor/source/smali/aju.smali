.class public abstract Laju;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->onScroll(Landroid/widget/AbsListView;III)V

    move-object v0, p1

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method
