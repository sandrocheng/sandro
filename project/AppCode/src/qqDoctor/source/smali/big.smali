.class public final Lbig;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Llf;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private b:Lrb;

.field private c:Lhq;

.field private d:Lki;

.field private e:Lho;

.field private f:Lvk;

.field private g:Lsy;

.field private h:Landroid/os/Handler;

.field private i:Ldv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv",
            "<",
            "Llf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lbih;

    invoke-direct {v0, p0}, Lbih;-><init>(Lbig;)V

    iput-object v0, p0, Lbig;->h:Landroid/os/Handler;

    new-instance v0, Lbio;

    invoke-direct {v0, p0}, Lbio;-><init>(Lbig;)V

    iput-object v0, p0, Lbig;->i:Ldv;

    return-void
.end method

.method static synthetic a(Lbig;)Lhq;
    .locals 1

    iget-object v0, p0, Lbig;->c:Lhq;

    return-object v0
.end method

.method static synthetic b(Lbig;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbig;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    iget-object v0, p0, Lbig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v2, p0, Lbig;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v4, 0x5

    iput v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v4, v0, v6

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v6, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v0, v0, v5

    iput-object v0, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v5, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v0, Lbil;

    invoke-direct {v0, p0, v1}, Lbil;-><init>(Lbig;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0b0040

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    return-void
.end method

.method static synthetic c(Lbig;)Lrb;
    .locals 1

    iget-object v0, p0, Lbig;->b:Lrb;

    return-object v0
.end method

.method static synthetic d(Lbig;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;
    .locals 1

    iget-object v0, p0, Lbig;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    return-object v0
.end method

.method static synthetic e(Lbig;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbig;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lbig;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbig;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lbig;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbig;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lbig;)Lsy;
    .locals 1

    iget-object v0, p0, Lbig;->g:Lsy;

    return-object v0
.end method

.method static synthetic i(Lbig;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbig;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lbig;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lbig;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic k(Lbig;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lbig;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lbig;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic m(Lbig;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lbig;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic n(Lbig;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lbig;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lbig;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lbig;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lbig;)Lki;
    .locals 1

    iget-object v0, p0, Lbig;->d:Lki;

    return-object v0
.end method

.method static synthetic s(Lbig;)Lvk;
    .locals 1

    iget-object v0, p0, Lbig;->f:Lvk;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 13

    const v12, 0x7f0b000a

    const v11, 0x7f09001d

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/16 v9, 0x8

    iget-object v0, p0, Lbig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f080015

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v0, 0x7f080017

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v0, 0x7f080018

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08001a

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v4, 0x7f080019

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v5, 0x7f08001b

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v4, v7}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    invoke-virtual {v5, v7}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    new-instance v6, Ladn;

    invoke-direct {v6, v2}, Ladn;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v4, v9}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    invoke-virtual {v5, v9}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080014

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lbig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080016

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lbig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbig;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v12}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-virtual {v6, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    new-instance v0, Lbim;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lbim;-><init>(Lbig;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v6, v12, v0, v10}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lbin;

    invoke-direct {v1, v6}, Lbin;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v6, v0, v1, v10}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->getButton(I)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v7

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    :cond_0
    new-instance v0, Ladn;

    invoke-direct {v0, v2, v1}, Ladn;-><init>(Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/ButtonView;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbig;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/ContactSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lbig;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 8

    new-instance v0, Lair;

    iget-object v1, p0, Lbig;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lbig;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2}, Lair;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public final loadDataList()V
    .locals 3

    iget-object v0, p0, Lbig;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lair;

    iget-object v1, p0, Lbig;->i:Ldv;

    invoke-virtual {v0, v1}, Lair;->a(Ldv;)V

    iget-object v0, p0, Lbig;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Llf;

    invoke-direct {v0}, Llf;-><init>()V

    iget-object v1, p0, Lbig;->mContext:Landroid/content/Context;

    const v2, 0x7f0b006d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llf;->name:Ljava/lang/String;

    const/16 v1, 0x3eb

    iput v1, v0, Llf;->b:I

    iget-object v1, p0, Lbig;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbig;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbig;->c:Lhq;

    invoke-virtual {v1}, Lhq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "selecteddata"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Llf;

    invoke-direct {v3}, Llf;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, v3, Llf;->phonenum:Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, v3, Llf;->name:Ljava/lang/String;

    iput-boolean v5, v3, Llf;->enableForCalling:Z

    iput-boolean v5, v3, Llf;->enableForSMS:Z

    iput v6, v3, Llf;->b:I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbig;->f:Lvk;

    invoke-virtual {v0, v1, v6}, Lvk;->a(Ljava/util/List;I)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65f5

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    new-instance v0, Lhq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Lbig;->c:Lhq;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Lbig;->d:Lki;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbig;->e:Lho;

    new-instance v0, Lrb;

    invoke-virtual {p0}, Lbig;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lrb;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lbig;->b:Lrb;

    invoke-virtual {p0}, Lbig;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-static {v0}, Lsy;->a(Landroid/app/Activity;)Lsy;

    move-result-object v0

    iput-object v0, p0, Lbig;->g:Lsy;

    new-instance v0, Lvk;

    invoke-virtual {p0}, Lbig;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    new-instance v2, Lbii;

    invoke-direct {v2, p0}, Lbii;-><init>(Lbig;)V

    invoke-direct {v0, v1, v2}, Lvk;-><init>(Landroid/app/Activity;Ldv;)V

    iput-object v0, p0, Lbig;->f:Lvk;

    invoke-virtual {p0}, Lbig;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {p0}, Lbig;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v2, -0x2

    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    :goto_0
    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lbig;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbig;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    :goto_1
    iget-object v0, p0, Lbig;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-gez v1, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lbig;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbig;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lbig;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    if-eqz v0, :cond_1

    iget v0, v0, Llf;->b:I

    if-ne v0, v4, :cond_1

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v2, p0, Lbig;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbig;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v0, p0, Lbig;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lbig;->mContext:Landroid/content/Context;

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lbig;->mContext:Landroid/content/Context;

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v4, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lbig;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0197

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x5

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lbig;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0198

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x6

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lbig;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0038

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x3

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lbig;->mContext:Landroid/content/Context;

    const v3, 0x7f0b018c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x4

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbig;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lbig;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    new-instance v1, Lbij;

    invoke-direct {v1, p0}, Lbij;-><init>(Lbig;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lbig;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v1, p0, Lbig;->mContext:Landroid/content/Context;

    const v2, 0x7f0b043e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbig;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto/16 :goto_2

    :cond_5
    move v1, v0

    goto/16 :goto_1
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lbig;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget v1, v0, Llf;->b:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbig;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Llf;->a()Z

    move-result v5

    move v2, v3

    :goto_1
    iget-object v1, p0, Lbig;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lbig;->mDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llf;

    invoke-virtual {v1, v3}, Llf;->a(Z)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Llf;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "when onItemClick, current isShowDetail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_3

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lbig;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v4, v3

    goto :goto_3
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v3

    :sswitch_0
    iget-object v0, p0, Lbig;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_0

    iget-object v0, p0, Lbig;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0111

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbig;->b:Lrb;

    iget-object v1, p0, Lbig;->c:Lhq;

    iget-object v2, p0, Lbig;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lrb;->a(Lhq;Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbig;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SecureSpaceSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lbig;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x1c -> :sswitch_1
    .end sparse-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/16 v3, 0x13

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lbig;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbig;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b052c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final onResume()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lbig;->loadDataList()V

    invoke-virtual {p0}, Lbig;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lair;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbig;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lair;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbig;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v5}, Lbig;->setReloadData(Z)V

    iget-object v0, p0, Lbig;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lbig;->c:Lhq;

    invoke-virtual {v2}, Lhq;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbig;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    iget-object v0, p0, Lbig;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v6, :cond_1

    const v0, 0x7f0b0589

    invoke-virtual {p0, v0}, Lbig;->setEmptyText(I)V

    iget-object v0, p0, Lbig;->e:Lho;

    invoke-virtual {v0}, Lho;->D()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbig;->b()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lbig;->e:Lho;

    invoke-virtual {v0}, Lho;->E()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lbig;->hideEmptyView()V

    goto :goto_0
.end method

.method public final refreshListData()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lbig;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lair;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbig;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lair;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbig;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v6}, Lbig;->setReloadData(Z)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0089

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    return-void
.end method
