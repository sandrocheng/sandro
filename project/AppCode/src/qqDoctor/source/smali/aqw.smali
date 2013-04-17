.class final Laqw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Laqu;


# direct methods
.method constructor <init>(Laqu;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Laqw;->d:Laqu;

    iput-object p2, p0, Laqw;->a:Landroid/widget/EditText;

    iput-object p3, p0, Laqw;->b:Landroid/widget/EditText;

    iput-object p4, p0, Laqw;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v8, -0x1

    iget-object v0, p0, Laqw;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-static {v0}, Laqu;->b(Laqu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laqw;->d:Laqu;

    invoke-static {v1}, Laqu;->c(Laqu;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b046c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laqw;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v3, Lki;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    invoke-static {v1}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    new-instance v6, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-direct {v6}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;-><init>()V

    invoke-virtual {v6, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->setName(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    const/4 v5, 0x1

    move v1, v2

    :goto_1
    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-static {v0}, Laqu;->d(Laqu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {v6}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string v3, "+86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_6

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_2
    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-static {v0}, Laqu;->e(Laqu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string v4, "+86"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_5

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_3
    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-static {v0}, Laqu;->f(Laqu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_4
    if-eqz v2, :cond_3

    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-static {v0}, Laqu;->g(Laqu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-static {v0}, Laqu;->i(Laqu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laqw;->d:Laqu;

    invoke-static {v1}, Laqu;->c(Laqu;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b046e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-static {v0}, Laqu;->j(Laqu;)V

    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-virtual {v0}, Laqu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-static {v0}, Laqu;->k(Laqu;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v1

    new-instance v2, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;-><init>()V

    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-static {v0}, Laqu;->l(Laqu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->add(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)V

    goto :goto_6

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-static {v0}, Laqu;->h(Laqu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laqw;->d:Laqu;

    invoke-static {v1}, Laqu;->c(Laqu;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b046d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setExcludedPhoneNumberList(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;)V

    iget-object v0, p0, Laqw;->d:Laqu;

    invoke-static {v0}, Laqu;->k(Laqu;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    iget-object v0, p0, Laqw;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    goto/16 :goto_0

    :cond_5
    move-object v4, v0

    goto/16 :goto_3

    :cond_6
    move-object v3, v0

    goto/16 :goto_2

    :cond_7
    move v2, v5

    goto/16 :goto_4
.end method
