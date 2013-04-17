.class final Lbir;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lbip;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;


# direct methods
.method constructor <init>(Lbip;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lbir;->a:Lbip;

    iput-object p2, p0, Lbir;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x2

    iget-object v0, p0, Lbir;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v1

    iget-object v0, p0, Lbir;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lbir;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lbir;->a:Lbip;

    invoke-static {v2}, Lbip;->b(Lbip;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lbir;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lbir;->a:Lbip;

    invoke-static {v1, v0}, Lbip;->a(Lbip;Lmk;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lft;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lbir;->a:Lbip;

    invoke-static {v1}, Lbip;->d(Lbip;)Lsy;

    move-result-object v1

    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lbis;

    invoke-direct {v2, p0}, Lbis;-><init>(Lbir;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showRestoreSmsLogsDialog: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v4, v1, Lsy;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0043

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v4, 0x7f0b020b

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v4, 0x7f0b0045

    new-instance v5, Ltk;

    invoke-direct {v5, v1, v0, v2, v3}, Ltk;-><init>(Lsy;Ljava/lang/String;Ldv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Ltm;

    invoke-direct {v1, v3}, Ltm;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v3, v0, v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
