.class final Lbij;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lbig;


# direct methods
.method constructor <init>(Lbig;)V
    .locals 0

    iput-object p1, p0, Lbij;->a:Lbig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v5, 0x7f0b0540

    const v9, 0x7f0b0045

    const v8, 0x7f0b0033

    const/4 v7, 0x1

    const/4 v6, 0x2

    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->d(Lbig;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v0

    iget-object v1, p0, Lbij;->a:Lbig;

    invoke-static {v1}, Lbig;->d(Lbig;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    move-result v1

    iget v0, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->d(Lbig;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->e(Lbig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v1, p0, Lbij;->a:Lbig;

    invoke-static {v1}, Lbig;->c(Lbig;)Lrb;

    move-result-object v1

    new-instance v2, Lbik;

    invoke-direct {v2, p0}, Lbik;-><init>(Lbij;)V

    invoke-virtual {v1, v0, v6, v2}, Lrb;->a(Llf;ILdv;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->f(Lbig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v1, p0, Lbij;->a:Lbig;

    invoke-static {v1}, Lbig;->c(Lbig;)Lrb;

    move-result-object v1

    iget-object v2, p0, Lbij;->a:Lbig;

    invoke-static {v2}, Lbig;->a(Lbig;)Lhq;

    move-result-object v2

    iget-object v3, p0, Lbij;->a:Lbig;

    invoke-static {v3}, Lbig;->b(Lbig;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lrb;->a(Llf;Lhq;Landroid/os/Handler;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->g(Lbig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v1, p0, Lbij;->a:Lbig;

    invoke-static {v1}, Lbig;->h(Lbig;)Lsy;

    move-result-object v1

    iget-object v0, v0, Llf;->phonenum:Ljava/lang/String;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, v1, Lsy;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lsy;->a:Landroid/content/Context;

    const v4, 0x7f0b053f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lsy;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lsy;->a:Landroid/content/Context;

    const v5, 0x7f0b0541

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v3, Ltn;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4, v2}, Ltn;-><init>(Lsy;Ljava/lang/String;Ldv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v9, v3, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Ltp;

    invoke-direct {v0, v2}, Ltp;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v8, v0, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->i(Lbig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v1, p0, Lbij;->a:Lbig;

    invoke-static {v1}, Lbig;->h(Lbig;)Lsy;

    move-result-object v1

    iget-object v0, v0, Llf;->phonenum:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showImportSmsLogsDialog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, v1, Lsy;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lsy;->a:Landroid/content/Context;

    const v4, 0x7f0b0547

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lsy;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lsy;->a:Landroid/content/Context;

    const v5, 0x7f0b0549

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v3, Ltq;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4, v2}, Ltq;-><init>(Lsy;Ljava/lang/String;Ldv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v9, v3, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lts;

    invoke-direct {v0, v2}, Lts;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v8, v0, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->j(Lbig;)Landroid/widget/BaseAdapter;

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

    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->k(Lbig;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "smslogname"

    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->l(Lbig;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v0, v0, Llf;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "smslogphonenum"

    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->m(Lbig;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v0, v0, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->n(Lbig;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/SecureSmsDialogueActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lbij;->a:Lbig;

    invoke-static {v0}, Lbig;->o(Lbig;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
