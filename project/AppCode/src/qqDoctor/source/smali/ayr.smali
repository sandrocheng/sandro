.class final Layr;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Layp;


# direct methods
.method constructor <init>(Layp;)V
    .locals 0

    iput-object p1, p0, Layr;->a:Layp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Layr;->a:Layp;

    iget-object v0, v0, Layp;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Layr;->a:Layp;

    iget-object v1, p0, Layr;->a:Layp;

    invoke-static {v1}, Layp;->b(Layp;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Layr;->a:Layp;

    invoke-static {v2}, Layp;->c(Layp;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b022b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Layr;->a:Layp;

    invoke-static {v4}, Layp;->d(Layp;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, La;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v1

    iput-object v1, v0, Layp;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Layr;->a:Layp;

    iget-object v0, v0, Layp;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Layr;->a:Layp;

    iget-object v0, v0, Layp;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Layr;->a:Layp;

    iget-object v0, v0, Layp;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Layr;->a:Layp;

    const/4 v1, 0x0

    iput-object v1, v0, Layp;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_1
    iget-object v0, p0, Layr;->a:Layp;

    invoke-virtual {v0}, Layp;->refreshListData()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Layr;->a:Layp;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Layp;->a(I)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Layr;->removeMessages(I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Layr;->a:Layp;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Layp;->a(Layp;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Layr;->a:Layp;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lays;

    invoke-direct {v2, p0}, Lays;-><init>(Layr;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Layp;->a(Layp;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->f(Layp;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Layr;->a:Layp;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Layt;

    invoke-direct {v2, p0}, Layt;-><init>(Layr;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Layp;->a(Layp;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->f(Layp;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->m(Layp;)Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    move-result-object v0

    iget-object v1, p0, Layr;->a:Layp;

    invoke-static {v1}, Layp;->l(Layp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->setTranslateHotWordText(Ljava/util/ArrayList;)V

    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->m(Layp;)Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->setTranslateView()V

    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->m(Layp;)Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->d()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->m(Layp;)Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    move-result-object v0

    iget-object v1, p0, Layr;->a:Layp;

    invoke-static {v1}, Layp;->l(Layp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->setTranslateHotWordText(Ljava/util/ArrayList;)V

    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->m(Layp;)Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->f()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->n(Layp;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->o(Layp;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->p(Layp;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->q(Layp;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->r(Layp;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->s(Layp;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Layr;->a:Layp;

    iget-object v0, v0, Layp;->a:Ljava/util/Stack;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->n(Layp;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->t(Layp;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0xe -> :sswitch_2
        0xf -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
    .end sparse-switch
.end method
