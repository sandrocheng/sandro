.class final Lbma;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Lbly;


# direct methods
.method constructor <init>(Lbly;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lbma;->b:Lbly;

    iput-object p2, p0, Lbma;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lbma;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v1

    iget-object v0, p0, Lbma;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    move-result v0

    iget-object v2, p0, Lbma;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    iget-object v2, p0, Lbma;->b:Lbly;

    invoke-virtual {v2}, Lbly;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v2, p0, Lbma;->b:Lbly;

    invoke-virtual {v2}, Lbly;->e()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lbma;->b:Lbly;

    iget-object v0, v0, Lkv;->d:Lkw;

    const v2, 0x1e8485

    invoke-virtual {v1, v0, v2}, Lbly;->a(Lkw;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lbma;->b:Lbly;

    invoke-virtual {v1, v0}, Lbly;->i(Lkv;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lbma;->b:Lbly;

    invoke-virtual {v1, v0}, Lbly;->k(Lkv;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lbma;->b:Lbly;

    invoke-virtual {v1, v0}, Lbly;->l(Lkv;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lbma;->b:Lbly;

    invoke-virtual {v1, v0}, Lbly;->j(Lkv;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lbma;->b:Lbly;

    invoke-virtual {v1, v0}, Lbly;->a(Lkv;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
