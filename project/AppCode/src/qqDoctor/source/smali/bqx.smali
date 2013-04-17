.class final Lbqx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lbqv;


# direct methods
.method constructor <init>(Lbqv;)V
    .locals 0

    iput-object p1, p0, Lbqx;->a:Lbqv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lbqx;->a:Lbqv;

    invoke-static {v0}, Lbqv;->b(Lbqv;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lbqx;->a:Lbqv;

    invoke-virtual {v1}, Lbqv;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lbqx;->a:Lbqv;

    invoke-static {v0}, Lbqv;->b(Lbqv;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lbqx;->a:Lbqv;

    invoke-virtual {v1}, Lbqv;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    if-nez v0, :cond_2

    iget-object v0, p0, Lbqx;->a:Lbqv;

    invoke-static {v0}, Lbqv;->b(Lbqv;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lbqx;->a:Lbqv;

    invoke-static {v1}, Lbqv;->b(Lbqv;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v1

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lbqx;->a:Lbqv;

    invoke-static {v0}, Lbqv;->b(Lbqv;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    goto :goto_0

    :pswitch_0
    new-instance v1, Lzk;

    iget-object v2, p0, Lbqx;->a:Lbqv;

    invoke-static {v2}, Lbqv;->c(Lbqv;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lzk;-><init>(Landroid/content/Context;Lzk$b;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lzk;->a(Lkw;ZI)J

    iget-object v1, p0, Lbqx;->a:Lbqv;

    invoke-static {v1}, Lbqv;->d(Lbqv;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbqx;->a:Lbqv;

    invoke-static {v1}, Lbqv;->e(Lbqv;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbqx;->a:Lbqv;

    invoke-static {v1}, Lbqv;->f(Lbqv;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbqx;->a:Lbqv;

    invoke-virtual {v1}, Lbqv;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v1

    check-cast v1, Lalz;

    iget-object v2, p0, Lbqx;->a:Lbqv;

    invoke-static {v2}, Lbqv;->g(Lbqv;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0}, Lalz;->b(Lkw;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbqx;->a:Lbqv;

    invoke-static {v0}, Lbqv;->h(Lbqv;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
