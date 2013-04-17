.class final Lauz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Lauu;


# direct methods
.method constructor <init>(Lauu;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lauz;->b:Lauu;

    iput-object p2, p0, Lauz;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

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

    const/16 v4, 0x66d2

    const/4 v3, 0x1

    iget-object v0, p0, Lauz;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v1

    iget-object v0, p0, Lauz;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lauz;->b:Lauu;

    invoke-static {v2}, Lauu;->b(Lauu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lauz;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lauz;->b:Lauu;

    invoke-static {v2}, Lauu;->c(Lauu;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lky;

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v6

    iget v0, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lauz;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lauz;->b:Lauu;

    invoke-virtual {v0, v2}, Lauu;->a(Lky;)V

    invoke-virtual {v6, v4}, Lnd;->a(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lauz;->b:Lauu;

    invoke-static {v0}, Lauu;->e(Lauu;)Lsy;

    move-result-object v0

    iget-object v1, p0, Lauz;->b:Lauu;

    invoke-static {v1}, Lauu;->d(Lauu;)Ldv;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Lsy;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Ldv;)V

    invoke-virtual {v6, v4}, Lnd;->a(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v2, Lky;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Lft;->a(Ljava/lang/String;)V

    const/16 v0, 0x66d5

    invoke-virtual {v6, v0}, Lnd;->a(I)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lauz;->b:Lauu;

    invoke-static {v0}, Lauu;->f(Lauu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v2, Lky;->phonenum:Ljava/lang/String;

    invoke-static {v0, v1}, Lgu;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0x66d6

    invoke-virtual {v6, v0}, Lnd;->a(I)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lauz;->b:Lauu;

    invoke-static {v0}, Lauu;->g(Lauu;)Lki;

    move-result-object v0

    iget-object v1, v2, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lki;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lauz;->b:Lauu;

    invoke-static {v0}, Lauu;->h(Lauu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lauz;->b:Lauu;

    invoke-static {v1}, Lauu;->i(Lauu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b043a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "phone"

    iget-object v2, v2, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lauz;->b:Lauu;

    invoke-static {v1}, Lauu;->j(Lauu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_6
    new-instance v4, Lvk$a;

    iget-object v0, v2, Lky;->phonenum:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-direct {v4, v0, v3, v1}, Lvk$a;-><init>(Ljava/lang/String;ZI)V

    iget-object v0, p0, Lauz;->b:Lauu;

    invoke-static {v0}, Lauu;->e(Lauu;)Lsy;

    move-result-object v0

    iget-object v1, v2, Lky;->name:Ljava/lang/String;

    iget-object v2, v2, Lky;->phonenum:Ljava/lang/String;

    iget-object v5, p0, Lauz;->b:Lauu;

    invoke-static {v5}, Lauu;->d(Lauu;)Ldv;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lsy;->a(Ljava/lang/String;Ljava/lang/String;ILvk$a;Ldv;)V

    goto/16 :goto_1

    :pswitch_7
    new-instance v4, Lvk$a;

    iget-object v0, v2, Lky;->phonenum:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-direct {v4, v0, v3, v1}, Lvk$a;-><init>(Ljava/lang/String;ZI)V

    iget-object v0, p0, Lauz;->b:Lauu;

    invoke-static {v0}, Lauu;->e(Lauu;)Lsy;

    move-result-object v0

    iget-object v1, v2, Lky;->name:Ljava/lang/String;

    iget-object v2, v2, Lky;->phonenum:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lauz;->b:Lauu;

    invoke-static {v5}, Lauu;->d(Lauu;)Ldv;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lsy;->a(Ljava/lang/String;Ljava/lang/String;ILvk$a;Ldv;)V

    const/16 v0, 0x66d3

    invoke-virtual {v6, v0}, Lnd;->a(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method
