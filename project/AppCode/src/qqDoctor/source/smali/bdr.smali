.class public final Lbdr;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lmd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private b:Landroid/view/View;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private d:Lxi$a;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lbds;

    invoke-direct {v0, p0}, Lbds;-><init>(Lbdr;)V

    iput-object v0, p0, Lbdr;->d:Lxi$a;

    new-instance v0, Lbdz;

    invoke-direct {v0, p0}, Lbdz;-><init>(Lbdr;)V

    iput-object v0, p0, Lbdr;->e:Landroid/os/Handler;

    iput-object p2, p0, Lbdr;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbdr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbdr;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbdr;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lbdr;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbdr;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b08b7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    return-void
.end method

.method static synthetic a(Lbdr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lbdr;->b:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbdr;->b:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lbdr;->b:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lbdr;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbdr;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    return-void

    :sswitch_0
    const v1, 0x7f0b06fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbdr;->b:Landroid/view/View;

    new-instance v1, Lbeb;

    invoke-direct {v1, p0}, Lbeb;-><init>(Lbdr;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lbdr;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0702

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lbdr;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b06fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lbdr;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0708

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0x63 -> :sswitch_2
        -0x8 -> :sswitch_3
        -0x7 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lbdr;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 4

    const/16 v0, -0x63

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b06ab

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b06aa

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b08a1

    new-instance v2, Lbdw;

    invoke-direct {v2, v0}, Lbdw;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x8

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lbdr;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lbdr;I)V
    .locals 0

    invoke-direct {p0, p1}, Lbdr;->a(I)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lbdr;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbdr;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b06ab

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0707

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b08a1

    new-instance v2, Lbdx;

    invoke-direct {v2, v0}, Lbdx;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic c(Lbdr;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbdr;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic d(Lbdr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lbdr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lbdr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lbdr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lbdr;)V
    .locals 3

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    invoke-virtual {v0}, Ljf;->a()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lbea;

    invoke-direct {v2, v0}, Lbea;-><init>(Ljf;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-virtual {p0}, Lbdr;->loadDataList()V

    iget-object v0, p0, Lbdr;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic i(Lbdr;)V
    .locals 0

    invoke-virtual {p0}, Lbdr;->refreshListData()V

    return-void
.end method

.method static synthetic j(Lbdr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lbdr;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    iget-object v0, p0, Lbdr;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method

.method static synthetic l(Lbdr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 7

    new-instance v0, Lakj;

    iget-object v1, p0, Lbdr;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lbdr;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2}, Lakj;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbdr;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 2

    invoke-static {}, Lxf;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbdr;->mDataList:Ljava/util/List;

    iget-object v0, p0, Lbdr;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onCreate()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v3

    iget-object v0, p0, Lbdr;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lbdq;

    iget v0, v0, Lbdq;->a:I

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lho;->by()Z

    move-result v3

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dy()I

    move-result v4

    if-nez v3, :cond_3

    const/16 v0, -0x63

    if-eq v4, v0, :cond_0

    const/4 v0, -0x7

    if-ne v4, v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lbdr;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbdr;->d:Lxi$a;

    invoke-static {v0, v1}, Lxi;->a(Landroid/content/Context;Lxi$a;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-nez v3, :cond_1

    const/4 v0, -0x8

    if-ne v4, v0, :cond_4

    move v0, v1

    :goto_2
    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbdr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lbdr;->mContext:Landroid/content/Context;

    const v3, 0x7f0b04d1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b070b

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v2, 0x7f0b0045

    new-instance v3, Lbdt;

    invoke-direct {v3, p0, v0}, Lbdt;-><init>(Lbdr;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lbdv;

    invoke-direct {v2, v0}, Lbdv;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lbdr;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

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

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/permission/PermissionInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Serializable"

    iget-object v0, p0, Lbdr;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v2, Lbcz;->a:Ljava/lang/String;

    iget-object v0, p0, Lbdr;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lbdq;

    iget v0, v0, Lbdq;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbdr;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/permission/PermissionTrustAppListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/16 v3, 0x48

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b08be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget-object v0, p0, Lbdr;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    iget-object v0, p0, Lbdr;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-static {}, Lxi;->a()Z

    move-result v1

    iget-object v0, p0, Lbdr;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lbdq;

    iget v0, v0, Lbdq;->a:I

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    invoke-virtual {v0}, Ljf;->c()I

    move-result v0

    iget-object v1, p0, Lbdr;->mContext:Landroid/content/Context;

    const v2, 0x7f0b06fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbdr;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lbdr;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dy()I

    move-result v0

    invoke-direct {p0, v0}, Lbdr;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbdr;->b:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lbdr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbdr;->b:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lbdr;->b:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lbdr;->b:Landroid/view/View;

    new-instance v2, Lbdy;

    invoke-direct {v2, p0}, Lbdy;-><init>(Lbdr;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b06f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbdr;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbdr;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final refreshListData()V
    .locals 6

    invoke-virtual {p0}, Lbdr;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbdr;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbdr;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
