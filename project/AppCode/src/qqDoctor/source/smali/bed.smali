.class public final Lbed;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lkx;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private b:Ljf;

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

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbed;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbed;->d:Ljava/util/List;

    new-instance v0, Lbee;

    invoke-direct {v0, p0}, Lbee;-><init>(Lbed;)V

    iput-object v0, p0, Lbed;->e:Landroid/os/Handler;

    return-void
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

    iget-object v2, p0, Lbed;->c:Ljava/util/List;

    iget-object v3, p0, Lbed;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0314

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbed;->d:Ljava/util/List;

    iget-object v4, p0, Lbed;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0315

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    iget-object v3, p0, Lbed;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lbed;->mDataList:Ljava/util/List;

    iget-object v4, p0, Lbed;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lbed;->mDataList:Ljava/util/List;

    iget-object v4, p0, Lbed;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic a(Lbed;)V
    .locals 2

    iget-object v0, p0, Lbed;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbef;

    invoke-direct {v1, p0}, Lbef;-><init>(Lbed;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkx;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkx;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lakk;->a(Lkx;)I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v1, v2, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method static synthetic b(Lbed;)V
    .locals 2

    iget-object v0, p0, Lbed;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-virtual {p0}, Lbed;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lakk;

    invoke-direct {p0}, Lbed;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakk;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbed;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic c(Lbed;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbed;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lbed;)Ljf;
    .locals 1

    iget-object v0, p0, Lbed;->b:Ljf;

    return-object v0
.end method

.method static synthetic e(Lbed;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbed;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    new-instance v0, Lakk;

    iget-object v1, p0, Lbed;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lbed;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lakk;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    return-object v0
.end method

.method public final loadDataList()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lbed;->b:Ljf;

    invoke-virtual {v0}, Ljf;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbed;->b:Ljf;

    invoke-virtual {v0}, Ljf;->b()V

    :cond_0
    iget-object v0, p0, Lbed;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbed;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbed;->c:Ljava/util/List;

    iget-object v1, p0, Lbed;->b:Ljf;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljf;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbed;->d:Ljava/util/List;

    iget-object v1, p0, Lbed;->b:Ljf;

    invoke-virtual {v1, v5}, Ljf;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbed;->c:Ljava/util/List;

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
    iget-object v1, p0, Lbed;->d:Ljava/util/List;

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
    iget-object v0, p0, Lbed;->c:Ljava/util/List;

    invoke-static {v0}, Lbed;->a(Ljava/util/List;)V

    iget-object v0, p0, Lbed;->d:Ljava/util/List;

    invoke-static {v0}, Lbed;->a(Ljava/util/List;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbeg;

    invoke-direct {v1, p0, v2}, Lbeg;-><init>(Lbed;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    iput-object v0, p0, Lbed;->b:Ljf;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbed;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbed;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbed;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lbed;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbed;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b08b7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v8, v0, Lbed;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lbed;->mDataList:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkx;

    new-instance v9, Lbei;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v9, v0, v1}, Lbei;-><init>(Lbed;I)V

    new-instance v10, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v10, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b06ea

    invoke-virtual {v10, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, -0x1

    invoke-virtual {v2}, Lkx;->a()[B

    move-result-object v12

    array-length v13, v12

    const/4 v3, 0x0

    move v6, v3

    move v3, v4

    :goto_0
    if-ge v6, v13, :cond_1

    aget-byte v14, v12, v6

    add-int/lit8 v7, v3, 0x1

    const/4 v3, -0x1

    if-eq v14, v3, :cond_0

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03007b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    const v3, 0x7f08014e

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080150

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f08014f

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v7}, Lmd;->a(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    packed-switch v14, :pswitch_data_0

    :goto_1
    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v7

    goto :goto_0

    :pswitch_0
    const v3, 0x7f0b06d1

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f02025b

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    const v3, 0x7f0b06d2

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f02025a

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    const v3, 0x7f0b06d3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f020259

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v10, v11}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lho;->a()Lho;

    move-result-object v3

    invoke-virtual {v3}, Lho;->by()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lkx;->g:Z

    if-eqz v2, :cond_3

    const v2, 0x7f0b06ec

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v3, Ler;

    invoke-direct {v3, v9, v10}, Ler;-><init>(Landroid/view/View$OnClickListener;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v4, 0x2

    invoke-virtual {v10, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    :cond_2
    const v2, 0x7f0b0033

    new-instance v3, Les;

    invoke-direct {v3, v10}, Les;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v4, 0x2

    invoke-virtual {v10, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    :try_start_0
    invoke-virtual {v10}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_3
    const v2, 0x7f0b06eb

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    invoke-virtual {p0}, Lbed;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-static {}, Lxi;->a()Z

    move-result v1

    invoke-virtual {p0}, Lbed;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lakk;

    invoke-virtual {v0}, Lakk;->a()V

    invoke-virtual {p0}, Lbed;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lakk;

    invoke-virtual {v0, v1}, Lakk;->a(Z)V

    iget-object v0, p0, Lbed;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final refreshListData()V
    .locals 2

    invoke-virtual {p0}, Lbed;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lakk;

    invoke-direct {p0}, Lbed;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakk;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbed;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b08be

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
