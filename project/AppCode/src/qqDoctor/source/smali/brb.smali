.class final Lbrb;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbra;


# direct methods
.method constructor <init>(Lbra;)V
    .locals 0

    iput-object p1, p0, Lbrb;->a:Lbra;

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
    invoke-virtual {p0, v6}, Lbrb;->removeMessages(I)V

    iget-object v1, p0, Lbrb;->a:Lbra;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lbra;->a(Lbra;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbrb;->a:Lbra;

    invoke-static {v0}, Lbra;->a(Lbra;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrb;->a:Lbra;

    invoke-static {v0}, Lbra;->b(Lbra;)Z

    iget-object v0, p0, Lbrb;->a:Lbra;

    invoke-static {v0}, Lbra;->c(Lbra;)V

    :goto_1
    iget-object v0, p0, Lbrb;->a:Lbra;

    invoke-static {v0}, Lbra;->e(Lbra;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lbrb;->a:Lbra;

    invoke-static {v0}, Lbra;->f(Lbra;)Landroid/content/Context;

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

    iget-object v0, p0, Lbrb;->a:Lbra;

    invoke-virtual {v0}, Lbra;->refreshListData()V

    iget-object v0, p0, Lbrb;->a:Lbra;

    invoke-virtual {v0}, Lbra;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v6}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setAction(Z)V

    iget-object v1, p0, Lbrb;->a:Lbra;

    iget-object v0, p0, Lbrb;->a:Lbra;

    invoke-virtual {v0}, Lbra;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v0}, Lbra;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    iget-object v0, p0, Lbrb;->a:Lbra;

    invoke-virtual {v0}, Lbra;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lamb;

    invoke-virtual {v0}, Lamb;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbrb;->a:Lbra;

    invoke-static {v0}, Lbra;->d(Lbra;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
