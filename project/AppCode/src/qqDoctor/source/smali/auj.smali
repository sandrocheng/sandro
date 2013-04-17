.class final Lauj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Latz;


# direct methods
.method constructor <init>(Latz;)V
    .locals 0

    iput-object p1, p0, Lauj;->a:Latz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lauj;->a:Latz;

    invoke-static {v0}, Latz;->d(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v0

    iget-object v1, p0, Lauj;->a:Latz;

    invoke-static {v1}, Latz;->d(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    move-result v1

    iget v0, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lauj;->a:Latz;

    invoke-static {v0}, Latz;->d(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lauj;->a:Latz;

    invoke-static {v0}, Latz;->e(Latz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v1, p0, Lauj;->a:Latz;

    invoke-static {v1}, Latz;->g(Latz;)Lrb;

    move-result-object v1

    iget v2, v0, Llf;->b:I

    new-instance v3, Lauk;

    invoke-direct {v3, p0}, Lauk;-><init>(Lauj;)V

    invoke-virtual {v1, v0, v2, v3}, Lrb;->a(Llf;ILdv;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lauj;->a:Latz;

    invoke-static {v0}, Latz;->h(Latz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v1, p0, Lauj;->a:Latz;

    invoke-static {v1}, Latz;->g(Latz;)Lrb;

    move-result-object v1

    iget-object v2, p0, Lauj;->a:Latz;

    invoke-static {v2}, Latz;->i(Latz;)Lhq;

    move-result-object v2

    iget-object v3, p0, Lauj;->a:Latz;

    invoke-static {v3}, Latz;->j(Latz;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lrb;->a(Llf;Lhq;Landroid/os/Handler;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lauj;->a:Latz;

    invoke-static {v0}, Latz;->k(Latz;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v0, v0, Llf;->phonenum:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lauj;->a:Latz;

    invoke-static {v0}, Latz;->l(Latz;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lauj;->a:Latz;

    invoke-static {v0}, Latz;->m(Latz;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v0, v0, Llf;->phonenum:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "address"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lauj;->a:Latz;

    invoke-static {v0}, Latz;->n(Latz;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
