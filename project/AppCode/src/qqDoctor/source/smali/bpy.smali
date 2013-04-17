.class final Lbpy;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbpu;


# direct methods
.method constructor <init>(Lbpu;)V
    .locals 0

    iput-object p1, p0, Lbpy;->a:Lbpu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbpy;->a:Lbpu;

    invoke-virtual {v0}, Lbpu;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setAction(Z)V

    iget-object v0, p0, Lbpy;->a:Lbpu;

    invoke-virtual {v0}, Lbpu;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    iget-object v1, p0, Lbpy;->a:Lbpu;

    iget-object v0, p0, Lbpy;->a:Lbpu;

    invoke-virtual {v0}, Lbpu;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v0}, Lbpu;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    move v1, v2

    move v0, v2

    :goto_1
    iget-object v3, p0, Lbpy;->a:Lbpu;

    invoke-static {v3}, Lbpu;->h(Lbpu;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    int-to-long v3, v0

    iget-object v0, p0, Lbpy;->a:Lbpu;

    invoke-static {v0}, Lbpu;->i(Lbpu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->I()J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v3, v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_1
    int-to-long v0, v0

    invoke-static {v0, v1}, La;->b(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbpy;->a:Lbpu;

    invoke-static {v1}, Lbpu;->j(Lbpu;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lbpy;->a:Lbpu;

    invoke-static {v3}, Lbpu;->k(Lbpu;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b097d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lbpy;->a:Lbpu;

    invoke-static {v0}, Lbpu;->l(Lbpu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbpy;->a:Lbpu;

    invoke-static {v0}, Lbpu;->m(Lbpu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lbpy;->a:Lbpu;

    invoke-static {v0}, Lbpu;->n(Lbpu;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpy;->a:Lbpu;

    invoke-static {v0}, Lbpu;->o(Lbpu;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lbpy;->a:Lbpu;

    invoke-virtual {v0}, Lbpu;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lbpy;->a:Lbpu;

    invoke-static {v1}, Lbpu;->p(Lbpu;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->removeFooterView(Landroid/view/View;)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lbpy;->a:Lbpu;

    invoke-static {v0}, Lbpu;->q(Lbpu;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
