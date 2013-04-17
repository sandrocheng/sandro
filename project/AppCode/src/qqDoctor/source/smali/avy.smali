.class final Lavy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Lavu;


# direct methods
.method constructor <init>(Lavu;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lavy;->b:Lavu;

    iput-object p2, p0, Lavy;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

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

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lavy;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v1

    iget-object v0, p0, Lavy;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->c(Lavu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v4, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lavy;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->d(Lavu;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lmk;

    iget v0, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lavy;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    goto :goto_0

    :pswitch_0
    iget-boolean v0, v2, Lmk;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->e(Lavu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lavy;->b:Lavu;

    invoke-static {v1}, Lavu;->f(Lavu;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0489

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->h(Lavu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iput-boolean v3, v0, Lmk;->k:Z

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-virtual {v0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiw;

    invoke-virtual {v0}, Laiw;->a()V

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-virtual {v0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiw;

    invoke-virtual {v0}, Laiw;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->g(Lavu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-virtual {v0, v2}, Lavu;->a(Lmk;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->j(Lavu;)Lsy;

    move-result-object v0

    iget-object v1, p0, Lavy;->b:Lavu;

    invoke-static {v1}, Lavu;->i(Lavu;)Ldv;

    move-result-object v1

    invoke-virtual {v0, v6, v2, v1}, Lsy;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Ldv;)V

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->k(Lavu;)Lnd;

    move-result-object v0

    const/16 v1, 0x66cc

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, Lmk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lft;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "sms_body"

    invoke-virtual {v2}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lavy;->b:Lavu;

    invoke-static {v1}, Lavu;->l(Lavu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->m(Lavu;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Lmk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgu;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->n(Lavu;)Lki;

    move-result-object v0

    invoke-virtual {v2}, Lmk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lki;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->o(Lavu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lavy;->b:Lavu;

    invoke-static {v1}, Lavu;->p(Lavu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b043a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "phone"

    invoke-virtual {v2}, Lmk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lavy;->b:Lavu;

    invoke-static {v1}, Lavu;->q(Lavu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_6
    new-instance v4, Lvk$a;

    const/16 v0, 0xf

    invoke-direct {v4, v2, v0}, Lvk$a;-><init>(Lmk;I)V

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->j(Lavu;)Lsy;

    move-result-object v0

    iget-object v1, v2, Lmk;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lmk;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lavy;->b:Lavu;

    invoke-static {v5}, Lavu;->i(Lavu;)Ldv;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lsy;->a(Ljava/lang/String;Ljava/lang/String;ILvk$a;Ldv;)V

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->k(Lavu;)Lnd;

    move-result-object v0

    const/16 v1, 0x66ce

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_1

    :pswitch_7
    new-instance v4, Lvk$a;

    const/16 v0, 0xd

    invoke-direct {v4, v2, v0}, Lvk$a;-><init>(Lmk;I)V

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->j(Lavu;)Lsy;

    move-result-object v0

    iget-object v1, v2, Lmk;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lmk;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lavy;->b:Lavu;

    invoke-static {v3}, Lavu;->i(Lavu;)Ldv;

    move-result-object v5

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lsy;->a(Ljava/lang/String;Ljava/lang/String;ILvk$a;Ldv;)V

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->k(Lavu;)Lnd;

    move-result-object v0

    const/16 v1, 0x66cd

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->k(Lavu;)Lnd;

    move-result-object v0

    const/16 v1, 0x66cf

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-virtual {v0, v4}, Lavu;->a(I)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lavy;->b:Lavu;

    invoke-static {v0}, Lavu;->r(Lavu;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Lmk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgu;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method
