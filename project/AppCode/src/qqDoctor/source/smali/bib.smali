.class final Lbib;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Lbhz;


# direct methods
.method constructor <init>(Lbhz;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lbib;->b:Lbhz;

    iput-object p2, p0, Lbib;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

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

    iget-object v0, p0, Lbib;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v1

    iget-object v0, p0, Lbib;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lbib;->b:Lbhz;

    invoke-static {v2}, Lbhz;->b(Lbhz;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lbib;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lbib;->b:Lbhz;

    invoke-static {v2}, Lbhz;->c(Lbhz;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    sparse-switch v1, :sswitch_data_0

    :goto_1
    iget-object v0, p0, Lbib;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lbib;->b:Lbhz;

    invoke-static {v1}, Lbhz;->e(Lbhz;)Lsy;

    move-result-object v1

    check-cast v0, Lkz;

    invoke-virtual {v0}, Lkz;->b()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lbib;->b:Lbhz;

    invoke-static {v2}, Lbhz;->d(Lbhz;)Ldv;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lsy;->a(Ljava/util/List;Ldv;)V

    goto :goto_1

    :sswitch_1
    iget-object v0, v0, Lky;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Lft;->a(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Lbib;->b:Lbhz;

    invoke-static {v1}, Lbhz;->f(Lbhz;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lky;->phonenum:Ljava/lang/String;

    invoke-static {v1, v0}, Lgu;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
