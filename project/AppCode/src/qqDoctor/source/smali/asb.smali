.class final Lasb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Larz;


# direct methods
.method constructor <init>(Larz;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lasb;->b:Larz;

    iput-object p2, p0, Lasb;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

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

    iget-object v0, p0, Lasb;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v0

    iget-object v1, p0, Lasb;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    move-result v1

    iget-object v2, p0, Lasb;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    iget v0, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lasb;->b:Larz;

    iget-object v0, v0, Larz;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lasb;->b:Larz;

    invoke-static {v0, v1}, Larz;->a(Larz;Ljava/util/ArrayList;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lasb;->b:Larz;

    iget-object v0, p0, Lasb;->b:Larz;

    iget-object v0, v0, Larz;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    invoke-static {v2, v0}, Larz;->a(Larz;Llj;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lasb;->b:Larz;

    invoke-static {v0, v1}, Larz;->a(Larz;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
