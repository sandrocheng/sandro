.class public final Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;
.super Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView$MonitorLogReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView",
        "<",
        "Llz;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lakg;

.field private b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private d:Ljf;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llz;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Llz;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView$MonitorLogReceiver;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/view/View;

.field private j:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->e:Ljava/util/List;

    new-instance v0, Lbcp;

    invoke-direct {v0, p0}, Lbcp;-><init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->k:Landroid/os/Handler;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->j:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->i:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->i:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->i:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->j:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    return-void

    :sswitch_0
    const v1, 0x7f0b06fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->i:Landroid/view/View;

    new-instance v1, Lbcs;

    invoke-direct {v1, p0}, Lbcs;-><init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0702

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b06fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->i:Landroid/view/View;

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

.method public static synthetic a(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->a(I)V

    return-void
.end method

.method private b()V
    .locals 6

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llz;

    iget v3, v1, Llz;->a:I

    iget-object v4, v1, Llz;->d:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->d:Ljf;

    invoke-virtual {v4, v3}, Ljf;->c(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->h:Landroid/graphics/drawable/Drawable;

    iput-object v3, v1, Llz;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v1, Llz;->d:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v4, v1, Llz;->c:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, v1, Llz;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_5
    iget-object v4, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->d:Ljf;

    invoke-virtual {v4, v3}, Ljf;->d(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Llz;->c:Ljava/lang/String;

    iget-object v4, v1, Llz;->c:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->d:Ljf;

    invoke-virtual {v4, v3}, Ljf;->c(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Llz;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbcq;

    invoke-direct {v1, p0}, Lbcq;-><init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->refreshListData()V

    return-void
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)Ljf;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->d:Ljf;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->j:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->refreshListData()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lov;->a(I)V

    sput v4, Lru;->c:I

    sput v4, Lru;->b:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbcr;

    invoke-direct {v1, p0}, Lbcr;-><init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
            "<",
            "Llz;",
            ">;"
        }
    .end annotation

    new-instance v0, Lakg;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lakg;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->a:Lakg;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->a:Lakg;

    return-object v0
.end method

.method public final createOperatingBarDataList()Ljava/util/List;
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

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final isPinnedHeaderListView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final loadDataList()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->d:Ljf;

    invoke-virtual {v0}, Ljf;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->e:Ljava/util/List;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->e:Ljava/util/List;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->b()V

    return-void
.end method

.method public final onCreate()V
    .locals 4

    const/4 v3, 0x2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onCreate()V

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->d:Ljf;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->h:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b016d

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f02027f

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIcon(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b04d1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b06b4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0338

    new-instance v2, Lbcn;

    invoke-direct {v2, p0}, Lbcn;-><init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0033

    new-instance v2, Lbco;

    invoke-direct {v2, p0}, Lbco;-><init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView$MonitorLogReceiver;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView$MonitorLogReceiver;-><init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->g:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView$MonitorLogReceiver;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->g:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView$MonitorLogReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "MONITOR_LOG_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->g:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView$MonitorLogReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
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

    return-void
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 3

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b05af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b05af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/16 v4, 0x11

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v4, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onResume()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->j:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->j:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->j:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->j:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->j:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08b3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->d:Ljf;

    const-string v0, "SELECT count(*) FROM permission_log"

    iget-object v6, v5, Ljf;->a:Lhs;

    invoke-virtual {v6, v0}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v5, v5, Ljf;->a:Lhs;

    invoke-virtual {v5}, Lhs;->b()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    invoke-static {}, Lxi;->a()Z

    move-result v2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->j:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lbdq;

    iget v0, v0, Lbdq;->a:I

    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    invoke-virtual {v0}, Ljf;->c()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b06fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->j:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dy()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->a(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final refreshListData()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->a:Lakg;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lakg;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->a:Lakg;

    invoke-virtual {v0}, Lakg;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->a:Lakg;

    invoke-virtual {v0}, Lakg;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b06b1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->setEmptyText(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->hideEmptyView()V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
