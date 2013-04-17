.class public final Lbcz;
.super Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView",
        "<",
        "Lkx;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lmd;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkx;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkx;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljf;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private g:I

.field private h:Landroid/view/View;

.field private i:Landroid/os/Handler;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CanRunAtRoot"

    sput-object v0, Lbcz;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbcz;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbcz;->d:Ljava/util/List;

    new-instance v0, Lbdb;

    invoke-direct {v0, p0}, Lbdb;-><init>(Lbcz;)V

    iput-object v0, p0, Lbcz;->i:Landroid/os/Handler;

    new-instance v0, Lbdf;

    invoke-direct {v0, p0}, Lbdf;-><init>(Lbcz;)V

    iput-object v0, p0, Lbcz;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lbdg;

    invoke-direct {v0, p0}, Lbdg;-><init>(Lbcz;)V

    iput-object v0, p0, Lbcz;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lbdh;

    invoke-direct {v0, p0}, Lbdh;-><init>(Lbcz;)V

    iput-object v0, p0, Lbcz;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lbcz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Serializable"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmd;

    iput-object v0, p0, Lbcz;->b:Lmd;

    invoke-virtual {p0}, Lbcz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lbcz;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbcz;->g:I

    return-void
.end method

.method static synthetic a(Lbcz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbcz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkx;",
            ">;>;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbcz;->c:Ljava/util/List;

    iget-object v3, p0, Lbcz;->mContext:Landroid/content/Context;

    const v4, 0x7f0b06e8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbcz;->d:Ljava/util/List;

    iget-object v4, p0, Lbcz;->mContext:Landroid/content/Context;

    const v5, 0x7f0b08be

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    iget-object v3, p0, Lbcz;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lbcz;->mDataList:Ljava/util/List;

    iget-object v4, p0, Lbcz;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lbcz;->mDataList:Ljava/util/List;

    iget-object v4, p0, Lbcz;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lbcz;->h:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbcz;->h:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lbcz;->h:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lbcz;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbcz;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    return-void

    :sswitch_0
    const v1, 0x7f0b06fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbcz;->h:Landroid/view/View;

    new-instance v1, Lbdi;

    invoke-direct {v1, p0}, Lbdi;-><init>(Lbcz;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lbcz;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0702

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lbcz;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b06fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lbcz;->h:Landroid/view/View;

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

.method static synthetic a(Lbcz;I)V
    .locals 0

    invoke-direct {p0, p1}, Lbcz;->a(I)V

    return-void
.end method

.method static synthetic a(Lbcz;Lkx;)V
    .locals 3

    iget-object v0, p0, Lbcz;->e:Ljf;

    iget v1, p1, Lkx;->a:I

    iget-object v2, p1, Lkx;->e:[B

    invoke-virtual {v0, v1, v2}, Ljf;->a(I[B)I

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    invoke-static {}, Lxi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lkx;->a:I

    iget-object v1, p1, Lkx;->e:[B

    iget-object v2, p1, Lkx;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lxf;->a(I[BLjava/lang/String;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v0

    invoke-static {v0}, Lxi;->a(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    :cond_0
    return-void
.end method

.method static synthetic a([BLjava/util/List;I)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-byte v2, p2

    aput-byte v2, p0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lbcz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbcz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lbcz;->b:Lmd;

    iget v1, v1, Lmd;->b:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lbcz;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lbcz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b06f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lbcz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b06f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lbcz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b06f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lbcz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b06f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lbcz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b06f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic c(Lbcz;)V
    .locals 2

    iget-object v0, p0, Lbcz;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbdc;

    invoke-direct {v1, p0}, Lbdc;-><init>(Lbcz;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic d(Lbcz;)V
    .locals 1

    iget-object v0, p0, Lbcz;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-virtual {p0}, Lbcz;->refreshListData()V

    return-void
.end method

.method static synthetic e(Lbcz;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lbcz;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lbcz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbcz;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lbcz;)Ljf;
    .locals 1

    iget-object v0, p0, Lbcz;->e:Ljf;

    return-object v0
.end method

.method static synthetic h(Lbcz;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbcz;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lbcz;)Lmd;
    .locals 1

    iget-object v0, p0, Lbcz;->b:Lmd;

    return-object v0
.end method

.method static synthetic j(Lbcz;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbcz;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lbcz;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbcz;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lbcz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbcz;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic m(Lbcz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbcz;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Lbcz;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
            "<",
            "Lkx;",
            ">;"
        }
    .end annotation

    new-instance v0, Lakh;

    iget-object v1, p0, Lbcz;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbcz;->b:Lmd;

    invoke-direct {p0}, Lbcz;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lakh;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;Lmd;Ljava/util/List;)V

    return-object v0
.end method

.method public final isPinnedHeaderListView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final loadDataList()V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lbcz;->e:Ljf;

    invoke-virtual {v0}, Ljf;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcz;->e:Ljf;

    invoke-virtual {v0}, Ljf;->b()V

    :cond_0
    iget-object v0, p0, Lbcz;->c:Ljava/util/List;

    iget-object v1, p0, Lbcz;->e:Ljf;

    iget-object v2, p0, Lbcz;->b:Lmd;

    iget-object v2, v2, Lmd;->f:Ljava/util/List;

    invoke-virtual {v1, v3, v3, v2}, Ljf;->a(ZZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbcz;->c:Ljava/util/List;

    iget-object v1, p0, Lbcz;->e:Ljf;

    iget-object v2, p0, Lbcz;->b:Lmd;

    iget-object v2, v2, Lmd;->f:Ljava/util/List;

    invoke-virtual {v1, v5, v3, v2}, Ljf;->a(ZZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbcz;->d:Ljava/util/List;

    iget-object v1, p0, Lbcz;->e:Ljf;

    iget-object v2, p0, Lbcz;->b:Lmd;

    iget-object v2, v2, Lmd;->f:Ljava/util/List;

    invoke-virtual {v1, v3, v5, v2}, Ljf;->a(ZZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbcz;->d:Ljava/util/List;

    iget-object v1, p0, Lbcz;->e:Ljf;

    iget-object v2, p0, Lbcz;->b:Lmd;

    iget-object v2, v2, Lmd;->f:Ljava/util/List;

    invoke-virtual {v1, v5, v5, v2}, Ljf;->a(ZZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbcz;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkx;

    iget-object v4, v1, Lkx;->c:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, v1, Lkx;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lkx;->c:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lbcz;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkx;

    iget-object v4, v1, Lkx;->c:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, v1, Lkx;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lkx;->c:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbdd;

    invoke-direct {v1, p0, v2}, Lbdd;-><init>(Lbcz;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    return-void
.end method

.method public final onCreate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onCreate()V

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    iput-object v0, p0, Lbcz;->e:Ljf;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbcz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbcz;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbcz;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lbcz;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbcz;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b08b7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    invoke-virtual {p0}, Lbcz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakh;

    iget-object v1, p0, Lbcz;->j:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lbcz;->k:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lbcz;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lakh;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbcz;->i:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lbcz;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkx;

    iget-boolean v0, v0, Lkx;->g:Z

    if-nez v0, :cond_0

    iget v0, p0, Lbcz;->g:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lbcz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakh;

    invoke-virtual {v0}, Lakh;->a()I

    move-result v1

    if-eq v1, p3, :cond_2

    invoke-virtual {v0, p3}, Lakh;->b(I)V

    :goto_1
    invoke-virtual {v0}, Lakh;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lakh;->b(I)V

    goto :goto_1
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onResume()V

    invoke-virtual {p0}, Lbcz;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    invoke-virtual {p0}, Lbcz;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->by()Z

    move-result v1

    iget v0, p0, Lbcz;->g:I

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbcz;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-direct {p0}, Lbcz;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lbcz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakh;

    iget v2, p0, Lbcz;->g:I

    invoke-virtual {v0, v2}, Lakh;->a(I)V

    invoke-virtual {p0}, Lbcz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakh;

    invoke-virtual {v0, v1}, Lakh;->a(Z)V

    return-void

    :cond_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dy()I

    move-result v0

    invoke-direct {p0, v0}, Lbcz;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbcz;->h:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lbcz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03009e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbcz;->h:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lbcz;->h:Landroid/view/View;

    const v2, 0x7f0801e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lbcz;->h:Landroid/view/View;

    new-instance v3, Lbda;

    invoke-direct {v3, p0}, Lbda;-><init>(Lbcz;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b06f8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lbcz;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v2, p0, Lbcz;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final refreshListData()V
    .locals 2

    invoke-virtual {p0}, Lbcz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-direct {p0}, Lbcz;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbcz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    iget v0, p0, Lbcz;->g:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbcz;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-direct {p0}, Lbcz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    iget-object v0, p0, Lbcz;->b:Lmd;

    iget-object v0, v0, Lmd;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
