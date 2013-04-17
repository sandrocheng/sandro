.class public final Lbfg;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/service/OnTabResumeListener;
.implements Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
        ">;",
        "Lcom/tencent/qqpimsecure/uilib/service/OnTabResumeListener;",
        "Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lho;

.field private c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

.field private d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private i:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lbfg;->a:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbfg;->b:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    iput-object v0, p0, Lbfg;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    return-void
.end method

.method private a()Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 7

    const/4 v6, 0x2

    iget-object v0, p0, Lbfg;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080043

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080044

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v3, p0, Lbfg;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getHelperNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Lk;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v3, Lbfi;

    invoke-direct {v3, v0}, Lbfi;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lbfg;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b080f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v5, p0, Lbfg;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v3, 0x7f0b0045

    new-instance v5, Lbfj;

    invoke-direct {v5, p0, v1, v0, v4}, Lbfj;-><init>(Lbfg;Landroid/widget/EditText;Landroid/widget/TextView;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v4, v3, v5, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lbfk;

    invoke-direct {v1, v4}, Lbfk;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v4, v0, v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    const v0, 0x7f080045

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lbfl;

    invoke-direct {v1, p0, v4}, Lbfl;-><init>(Lbfg;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v4
.end method

.method static synthetic a(Lbfg;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;
    .locals 1

    iget-object v0, p0, Lbfg;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    return-object v0
.end method

.method static synthetic a(Lbfg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lbfg;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lbfg;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getHelperNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lbfg;->a:Landroid/content/Context;

    const v1, 0x7f0b07cc

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lbfg;->b:Lho;

    invoke-virtual {v0, v2}, Lho;->E(Z)V

    iget-object v0, p0, Lbfg;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "+86"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lft;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lbfg;->a:Landroid/content/Context;

    const v1, 0x7f0b07cb

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbfg;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbfg;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbfg;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v1, p0, Lbfg;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v1, p0, Lbfg;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v2, 0x7f0b0843

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v1, p0, Lbfg;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v1, Lbfh;

    invoke-direct {v1, p0, v0}, Lbfh;-><init>(Lbfg;Ljava/lang/String;)V

    invoke-virtual {v1}, Lbfh;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lbfg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfg;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lbfg;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfg;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfg;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbfg;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lbfg;->b:Lho;

    invoke-virtual {v0, p1}, Lho;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setHelperNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lk;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->b:Lho;

    invoke-virtual {v0, v3}, Lho;->E(Z)V

    iget-object v0, p0, Lbfg;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    invoke-virtual {p0}, Lbfg;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbfg;->a:Landroid/content/Context;

    iget-object v1, p0, Lbfg;->a:Landroid/content/Context;

    const v2, 0x7f0b0844

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lbfg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfg;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lbfg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfg;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lbfg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfg;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lbfg;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbfg;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lbfg;)Lho;
    .locals 1

    iget-object v0, p0, Lbfg;->b:Lho;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/PickproofPreferenceAdapter;

    iget-object v1, p0, Lbfg;->a:Landroid/content/Context;

    iget-object v2, p0, Lbfg;->mDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/PickproofPreferenceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "selecteddata"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lbfg;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 5

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbfg;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbfg;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbfg;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "switch_sim_lock"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbfg;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbfg;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbfg;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbfg;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "urgent_contact_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbfg;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbfg;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbfg;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbfg;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "urgent_contact_num"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbfg;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbfg;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbfg;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbfg;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "modify_binding_qq"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbfg;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbfg;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbfg;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbfg;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "shutdown_antitheft"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {p0}, Lbfg;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbfg;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbfg;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbfg;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbfg;->b(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x186a0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

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

    const v6, 0x7f0b0045

    const v5, 0x7f0b0033

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lbfg;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, p2, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    if-eqz v3, :cond_1

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "shutdown_antitheft"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbfg;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b084c

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v2, 0x7f0b084d

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    new-instance v2, Lbfm;

    invoke-direct {v2, p0, v0}, Lbfm;-><init>(Lbfg;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v6, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v2, Lbfn;

    invoke-direct {v2, v0}, Lbfn;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v5, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lbfg;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    const-string v3, "switch_sim_lock"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lbfg;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lbfg;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lbfg;->b:Lho;

    invoke-virtual {v0, v1}, Lho;->D(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    const-string v3, "urgent_contact_sms"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, p0, Lbfg;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    move v2, v1

    :cond_6
    iget-object v0, p0, Lbfg;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    if-nez v2, :cond_7

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Lbfg;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0452

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v3, 0x7f0b0854

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    new-instance v3, Lbfo;

    invoke-direct {v3, p0, v0, v2}, Lbfo;-><init>(Lbfg;Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v6, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lbfp;

    invoke-direct {v0, v2}, Lbfp;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v5, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lbfg;->a()Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    goto :goto_1

    :cond_8
    const-string v1, "urgent_contact_num"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lbfg;->a()Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    goto/16 :goto_1

    :cond_9
    const-string v1, "modify_binding_qq"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lbfg;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lbfg;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public final onListPreferenceChange(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onPause()V

    return-void
.end method

.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget-object v0, p0, Lbfg;->b:Lho;

    invoke-virtual {v0}, Lho;->bD()Z

    move-result v2

    iget-object v0, p0, Lbfg;->b:Lho;

    invoke-virtual {v0}, Lho;->bH()Z

    move-result v0

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v3, p0, Lbfg;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v3, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v2, p0, Lbfg;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v2, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v2, p0, Lbfg;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lbfg;->a:Landroid/content/Context;

    const v4, 0x7f0b07ff

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lbfg;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lbfg;->b:Lho;

    invoke-virtual {v0}, Lho;->bI()Z

    move-result v0

    iget-object v2, p0, Lbfg;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lbfg;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v2, p0, Lbfg;->a:Landroid/content/Context;

    const v3, 0x7f0b0846

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v0, p0, Lbfg;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v2, p0, Lbfg;->a:Landroid/content/Context;

    const v3, 0x7f0b080f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getHelperNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbfg;->b:Lho;

    invoke-virtual {v0}, Lho;->bE()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbfg;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setHelperNumber(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lk;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lbfg;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lbfg;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v0, p0, Lbfg;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v2, p0, Lbfg;->a:Landroid/content/Context;

    const v3, 0x7f0b0847

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lbfg;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lk;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lbfg;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v0, p0, Lbfg;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {p0}, Lbfg;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b084c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lbfg;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    invoke-virtual {p0}, Lbfg;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3
    iget-object v0, p0, Lbfg;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v2, p0, Lbfg;->a:Landroid/content/Context;

    const v3, 0x7f0b085d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onTabResume()V
    .locals 0

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0802

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
