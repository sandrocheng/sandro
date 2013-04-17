.class final Laqz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Laqu;


# direct methods
.method constructor <init>(Laqu;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Laqz;->e:Laqu;

    iput-object p2, p0, Laqz;->a:Landroid/widget/EditText;

    iput-object p3, p0, Laqz;->b:Landroid/widget/EditText;

    iput-object p4, p0, Laqz;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    iput-object p5, p0, Laqz;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v3, 0x0

    const/4 v10, -0x1

    iget-object v0, p0, Laqz;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laqz;->e:Laqu;

    invoke-static {v0}, Laqu;->o(Laqu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laqz;->e:Laqu;

    invoke-static {v1}, Laqu;->c(Laqu;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b046c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laqz;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    invoke-static {v7}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    move-object v1, v0

    :goto_1
    new-instance v8, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-direct {v8}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;-><init>()V

    invoke-virtual {v8, v7}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->setName(Ljava/lang/String;)V

    const/4 v6, 0x1

    move v2, v3

    :goto_2
    iget-object v0, p0, Laqz;->e:Laqu;

    invoke-static {v0}, Laqu;->p(Laqu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string v4, "+86"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v10, :cond_5

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_3
    iget-object v0, p0, Laqz;->e:Laqu;

    invoke-static {v0}, Laqu;->q(Laqu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string v5, "+86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v10, :cond_4

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_4
    iget-object v0, p0, Laqz;->e:Laqu;

    invoke-static {v0}, Laqu;->r(Laqu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_5
    if-eqz v3, :cond_3

    iget-object v0, p0, Laqz;->e:Laqu;

    invoke-static {v0}, Laqu;->s(Laqu;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Laqz;->e:Laqu;

    invoke-static {v2}, Laqu;->c(Laqu;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0470

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Laqz;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v0, v7}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    iget-object v0, p0, Laqz;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Laqz;->e:Laqu;

    invoke-virtual {v0}, Laqu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Laqz;->e:Laqu;

    invoke-static {v0}, Laqu;->k(Laqu;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v1

    new-instance v2, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;-><init>()V

    iget-object v0, p0, Laqz;->e:Laqu;

    invoke-static {v0}, Laqu;->t(Laqu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->add(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)V

    goto :goto_6

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setExcludedPhoneNumberList(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;)V

    iget-object v0, p0, Laqz;->e:Laqu;

    invoke-static {v0}, Laqu;->k(Laqu;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    :goto_7
    iget-object v0, p0, Laqz;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Laqz;->e:Laqu;

    invoke-static {v0}, Laqu;->u(Laqu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laqz;->e:Laqu;

    invoke-static {v1}, Laqu;->c(Laqu;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b046d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    :cond_4
    move-object v5, v0

    goto/16 :goto_4

    :cond_5
    move-object v4, v0

    goto/16 :goto_3

    :cond_6
    move v3, v6

    goto/16 :goto_5

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method
