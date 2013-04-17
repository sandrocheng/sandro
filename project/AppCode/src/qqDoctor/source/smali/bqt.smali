.class final Lbqt;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbqs;


# direct methods
.method constructor <init>(Lbqs;)V
    .locals 0

    iput-object p1, p0, Lbqt;->a:Lbqs;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lbqt;->a:Lbqs;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkw;

    invoke-static {v1, v0}, Lbqs;->a(Lbqs;Lkw;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbqt;->a:Lbqs;

    iget-object v1, p0, Lbqt;->a:Lbqs;

    invoke-static {v1}, Lbqs;->a(Lbqs;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lbqs;->a(Lbqs;J)J

    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-static {v0}, Lbqs;->b(Lbqs;)V

    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-static {v0}, Lbqs;->c(Lbqs;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-static {v0}, Lbqs;->d(Lbqs;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-virtual {v0}, Lbqs;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lbqt;->a:Lbqs;

    invoke-static {v1}, Lbqs;->e(Lbqs;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->removeFooterView(Landroid/view/View;)Z

    :cond_0
    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-virtual {v0}, Lbqs;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Laly;

    invoke-virtual {v0}, Laly;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-static {v0}, Lbqs;->f(Lbqs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-static {v0}, Lbqs;->g(Lbqs;)Z

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-static {v0}, Lbqs;->h(Lbqs;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-static {v0}, Lbqs;->i(Lbqs;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b098f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, La;->b(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-virtual {v0}, Lbqs;->refreshListData()V

    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-virtual {v0}, Lbqs;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-virtual {v0}, Lbqs;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v6}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setAction(Z)V

    iget-object v1, p0, Lbqt;->a:Lbqs;

    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-virtual {v0}, Lbqs;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v0}, Lbqs;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    :cond_3
    iget-object v0, p0, Lbqt;->a:Lbqs;

    invoke-virtual {v0}, Lbqs;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Laly;

    invoke-virtual {v0}, Laly;->a()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
