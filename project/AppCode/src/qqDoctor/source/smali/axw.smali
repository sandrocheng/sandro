.class final Laxw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Laxj;


# direct methods
.method constructor <init>(Laxj;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Laxw;->b:Laxj;

    iput-object p2, p0, Laxw;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

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

    iget-object v0, p0, Laxw;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v1

    iget-object v0, p0, Laxw;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    move-result v0

    iget-object v2, p0, Laxw;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    iget-object v2, p0, Laxw;->b:Laxj;

    invoke-virtual {v2}, Laxj;->getDataList()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Laxw;->b:Laxj;

    invoke-virtual {v1, v0}, Laxj;->l(Lkv;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
