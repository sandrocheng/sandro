.class public final Lbdk;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
        ">;",
        "Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private f:Ljava/lang/Thread;

.field private g:Lho;

.field private h:Ljf;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lbdo;

    invoke-direct {v0, p0}, Lbdo;-><init>(Lbdk;)V

    iput-object v0, p0, Lbdk;->i:Landroid/os/Handler;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbdk;->g:Lho;

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    iput-object v0, p0, Lbdk;->h:Ljf;

    return-void
.end method

.method static synthetic a(Lbdk;)Lho;
    .locals 1

    iget-object v0, p0, Lbdk;->g:Lho;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lbdk;->g:Lho;

    invoke-virtual {v0}, Lho;->by()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbdk;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lbdk;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->g:Lho;

    invoke-virtual {v1}, Lho;->by()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lbdk;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->g:Lho;

    invoke-virtual {v1}, Lho;->by()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v0, p0, Lbdk;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    const v2, 0x7f0b06b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->g:Lho;

    invoke-virtual {v1}, Lho;->bz()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->g:Lho;

    invoke-virtual {v1}, Lho;->by()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v0, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->g:Lho;

    invoke-virtual {v1}, Lho;->bA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSelectItemIndex(I)V

    iget-object v0, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEntries([Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEntryValues([Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->g:Lho;

    invoke-virtual {v1}, Lho;->by()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v0, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->g:Lho;

    invoke-virtual {v1}, Lho;->bB()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSelectItemIndex(I)V

    iget-object v0, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEntries([Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEntryValues([Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbdk;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lbdk;)V
    .locals 0

    invoke-direct {p0}, Lbdk;->a()V

    return-void
.end method

.method static synthetic c(Lbdk;)Ljf;
    .locals 1

    iget-object v0, p0, Lbdk;->h:Ljf;

    return-object v0
.end method

.method static synthetic d(Lbdk;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbdk;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lbdk;)V
    .locals 1

    iget-object v0, p0, Lbdk;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbdk;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbdk;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    :cond_0
    iget-object v0, p0, Lbdk;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbdk;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_1
    invoke-direct {p0}, Lbdk;->a()V

    invoke-virtual {p0}, Lbdk;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic f(Lbdk;)V
    .locals 2

    iget-object v0, p0, Lbdk;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbdp;

    invoke-direct {v1, p0}, Lbdp;-><init>(Lbdk;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lbdk;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lbdk;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lbdk;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lbdr;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbdk;->mDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    return-object v0
.end method

.method public final onCreate()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbdk;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbdk;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbdk;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "pemission_monior"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0276

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v0, p0, Lbdk;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbdk;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbdk;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbdk;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbdk;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "notificationbar_remind"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0277

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v0, p0, Lbdk;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbdk;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "tip_over_time"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0405

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v0, p0, Lbdk;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "operator_over_time"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0390

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v0, p0, Lbdk;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbdk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbdk;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbdk;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lbdk;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbdk;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0693

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    invoke-direct {p0}, Lbdk;->a()V

    return-void
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

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lbdk;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pemission_monior"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbdk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lbdk;->mContext:Landroid/content/Context;

    const v3, 0x7f0b04d1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b01f2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v2, 0x7f0b0045

    new-instance v3, Lbdl;

    invoke-direct {v3, p0, v0}, Lbdl;-><init>(Lbdk;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v2, 0x7f0b0033

    new-instance v3, Lbdm;

    invoke-direct {v3, v0}, Lbdm;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lbdk;->a()V

    invoke-virtual {p0}, Lbdk;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v3, 0x65fa

    invoke-virtual {v0, v3}, Lnd;->a(I)V

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isFinishInit()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbdk;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lbdk;->mContext:Landroid/content/Context;

    new-instance v2, Lbdn;

    invoke-direct {v2, p0}, Lbdn;-><init>(Lbdk;)V

    invoke-static {v0, v2}, Lxi;->a(Landroid/content/Context;Lxi$a;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lbdk;->g:Lho;

    invoke-virtual {v0, v1}, Lho;->z(Z)V

    iget-object v0, p0, Lbdk;->g:Lho;

    invoke-virtual {v0, v1}, Lho;->d(Z)V

    invoke-static {v1}, Lxi;->a(Z)V

    iget-object v0, p0, Lbdk;->h:Ljf;

    invoke-virtual {v0}, Ljf;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbdk;->i:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lbdk;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notificationbar_remind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lbdk;->g:Lho;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lho;->A(Z)V

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tip_over_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "operator_over_time"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->doClickEvent()V

    move v1, v2

    goto/16 :goto_1
.end method

.method public final onListPreferenceChange(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->getKey()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tip_over_time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSelectItemIndex(I)V

    iget-object v1, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v2, p0, Lbdk;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v1, p0, Lbdk;->g:Lho;

    invoke-virtual {v1, v0}, Lho;->u(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lbdk;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v2, "operator_over_time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSelectItemIndex(I)V

    iget-object v1, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v2, p0, Lbdk;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v1, p0, Lbdk;->g:Lho;

    invoke-virtual {v1, v0}, Lho;->v(I)V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0171

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
