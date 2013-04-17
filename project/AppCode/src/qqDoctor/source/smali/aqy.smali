.class final Laqy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Laqu;


# direct methods
.method constructor <init>(Laqu;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Laqy;->b:Laqu;

    iput-object p2, p0, Laqy;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Laqy;->b:Laqu;

    invoke-static {v0}, Laqu;->m(Laqu;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Laqy;->b:Laqu;

    invoke-virtual {v1}, Laqu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Laqy;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Laqy;->b:Laqu;

    invoke-virtual {v1}, Laqu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v0, p0, Laqy;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Laqy;->b:Laqu;

    invoke-virtual {v1}, Laqu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    iget-object v1, p0, Laqy;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v1, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v1

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Laqy;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Laqy;->b:Laqu;

    invoke-static {v1}, Laqu;->n(Laqu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lgu;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lft;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Laqy;->b:Laqu;

    invoke-static {v1, v0}, Laqu;->a(Laqu;Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Laqy;->b:Laqu;

    invoke-virtual {v1, v0}, Laqu;->a(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
