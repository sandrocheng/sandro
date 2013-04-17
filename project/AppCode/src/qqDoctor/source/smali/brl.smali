.class public final Lbrl;
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
.field a:I

.field private b:Landroid/app/Activity;

.field private c:Landroid/content/Context;

.field private d:Ljl;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lbrl;->a:I

    iput-object p1, p0, Lbrl;->c:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lbrl;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lbrl;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbrl;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic a(Lbrl;Ljl;)Ljl;
    .locals 0

    iput-object p1, p0, Lbrl;->d:Ljl;

    return-object p1
.end method

.method private a(I)V
    .locals 11

    if-ltz p1, :cond_0

    iget-object v0, p0, Lbrl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbrl;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    iget-object v0, p0, Lbrl;->d:Ljl;

    if-nez v0, :cond_2

    invoke-static {}, Lf;->e()Ljl;

    move-result-object v0

    iput-object v0, p0, Lbrl;->d:Ljl;

    :cond_2
    const-string v0, "id"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    const-string v0, "scanDate"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lbrl;->d:Ljl;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljl;->b(J)Ljava/util/List;

    move-result-object v9

    new-instance v0, Lmu;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    const-string v5, "virusFound"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "virusCured"

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "waitingDealing"

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v10, "riskFound"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v0 .. v9}, Lmu;-><init>(JILjava/lang/String;IIIILjava/util/List;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbrl;->c:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/virus/ScanResultActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lbrl;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic a(Lbrl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lbrl;->a(I)V

    return-void
.end method

.method static synthetic b(Lbrl;)Ljl;
    .locals 1

    iget-object v0, p0, Lbrl;->d:Ljl;

    return-object v0
.end method

.method private b()V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lbrl;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lbrl;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbrl;->d:Ljl;

    if-nez v0, :cond_1

    invoke-static {}, Lf;->e()Ljl;

    move-result-object v0

    iput-object v0, p0, Lbrl;->d:Ljl;

    :cond_1
    iget-object v0, p0, Lbrl;->d:Ljl;

    invoke-virtual {v0}, Ljl;->c()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmu;

    const-string v6, "id"

    iget-wide v7, v0, Lmu;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "scanDate"

    iget-object v7, v0, Lmu;->c:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "riskFound"

    iget v7, v0, Lmu;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "virusCured"

    iget v7, v0, Lmu;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "virusFound"

    iget v7, v0, Lmu;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "waitingDealing"

    iget v0, v0, Lmu;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " report size"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object v4, p0, Lbrl;->e:Ljava/util/List;

    iget-object v0, p0, Lbrl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b05af

    invoke-virtual {p0, v0}, Lbrl;->setEmptyText(I)V

    invoke-virtual {p0}, Lbrl;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lbrl;->hideEmptyView()V

    move v3, v2

    :goto_2
    iget-object v0, p0, Lbrl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lbrl;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v4, v9}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbrl;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v5, "id"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbrl;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b04bd

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v0, p0, Lbrl;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v7, "scanDate"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbrl;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b04be

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "virusFound"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "riskFound"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    const-string v7, "virusCured"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "waitingDealing"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v0, p0, Lbrl;->mDataList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0}, Lbrl;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1
.end method

.method static synthetic c(Lbrl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbrl;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lbrl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrl;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lbrl;)V
    .locals 0

    invoke-direct {p0}, Lbrl;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lbrl;->d:Ljl;

    if-nez v0, :cond_0

    invoke-static {}, Lf;->e()Ljl;

    move-result-object v0

    iput-object v0, p0, Lbrl;->d:Ljl;

    :cond_0
    iget-object v0, p0, Lbrl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lbrl;->d:Ljl;

    invoke-virtual {v0}, Ljl;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbrl;->c:Landroid/content/Context;

    const v1, 0x7f0b0471

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    :goto_0
    invoke-direct {p0}, Lbrl;->b()V

    invoke-virtual {p0}, Lbrl;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbrl;->c:Landroid/content/Context;

    const v2, 0x7f0b0309

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lbrl;->d:Ljl;

    invoke-virtual {v4}, Ljl;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lbrl;->c:Landroid/content/Context;

    const v1, 0x7f0b0501

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbrl;->c:Landroid/content/Context;

    const v1, 0x7f0b04b9

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    new-instance v0, Lamn;

    iget-object v1, p0, Lbrl;->c:Landroid/content/Context;

    iget-object v2, p0, Lbrl;->mDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lamn;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    return-object v0
.end method

.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    invoke-static {}, Lf;->e()Ljl;

    move-result-object v0

    iput-object v0, p0, Lbrl;->d:Ljl;

    invoke-virtual {p0}, Lbrl;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-virtual {p0}, Lbrl;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {p0}, Lbrl;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerForContextMenu(Landroid/view/View;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbrl;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbrl;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbrl;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f02027f

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIcon(I)V

    iget-object v0, p0, Lbrl;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b04d1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lbrl;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b06b5

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Lbrl;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0338

    new-instance v2, Lbrm;

    invoke-direct {v2, p0}, Lbrm;-><init>(Lbrl;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lbrl;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0033

    new-instance v2, Lbrn;

    invoke-direct {v2, p0}, Lbrn;-><init>(Lbrl;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    iget-object v0, p0, Lbrl;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrl;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbrl;->a:I

    :goto_0
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v0, p0, Lbrl;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lbrl;->a:I

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v3, p0, Lbrl;->c:Landroid/content/Context;

    const v4, 0x7f0b000c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v3, p0, Lbrl;->c:Landroid/content/Context;

    const v4, 0x7f0b0037

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v3, 0x2

    iput v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v0, Lbro;

    invoke-direct {v0, p0, v1}, Lbro;-><init>(Lbrl;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lbrl;->c:Landroid/content/Context;

    const v2, 0x7f0b0040

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    return-void

    :cond_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v0, p0, Lbrl;->a:I

    goto :goto_0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lbrl;->a(I)V

    return-void
.end method

.method public final onListPreferenceChange(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbrl;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lbrl;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbrl;->c:Landroid/content/Context;

    const v1, 0x7f0b04b9

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lbrl;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbrl;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbrl;->c:Landroid/content/Context;

    const v1, 0x7f0b04b9

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/16 v0, 0x33

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    invoke-direct {p0}, Lbrl;->b()V

    invoke-virtual {p0}, Lbrl;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbrl;->c:Landroid/content/Context;

    const v2, 0x7f0b0309

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lbrl;->d:Ljl;

    invoke-virtual {v4}, Ljl;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b02b3

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    return-void
.end method
