.class public abstract Lblt;
.super Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lblt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Landroid/content/BroadcastReceiver;

.field protected c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lblv;

    invoke-direct {v0, p0}, Lblv;-><init>(Lblt;)V

    iput-object v0, p0, Lblt;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Lblw;

    invoke-direct {v0, p0}, Lblw;-><init>(Lblt;)V

    iput-object v0, p0, Lblt;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Lblx;

    invoke-direct {v0, p0}, Lblx;-><init>(Lblt;)V

    iput-object v0, p0, Lblt;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lblt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lblt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lblt;Landroid/content/Intent;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "extra_notify_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lblt;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v4, v0, Lkv;->mState:I

    const/4 v5, -0x3

    if-ne v4, v5, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lblt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0410

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lblt;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f030046

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0800a1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800a2

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0800a3

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lblt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    invoke-virtual {v2, p7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p6, :cond_2

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Lkw;I)V
    .locals 1

    iget-object v0, p0, Lblt;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lkw;->a(Landroid/content/Context;Lkw;I)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lblt;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final b(Lkw;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lblt;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lblt;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->uninstallApp(Ljava/lang/String;Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b6

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected final c(Lkw;)Landroid/view/View;
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lblt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v0, 0x7f030045

    invoke-virtual {v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0b08f7

    invoke-virtual {p1}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lblt;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b08f8

    invoke-virtual {p1}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lblt;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b08fb

    invoke-virtual {p1}, Lkw;->getSize()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    iget-object v0, p0, Lblt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0410

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lblt;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lkw;->n()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const v3, 0x7f0b08fc

    sget-object v0, Lkw;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Lkw;->n()I

    move-result v4

    aget-object v4, v0, v4

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lblt;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_0
    const v3, 0x7f0b08fd

    invoke-virtual {p1}, Lkw;->getCompany()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lblt;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v8, Ljava/io/File;

    invoke-virtual {p1}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0b08fe

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lblt;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b08ff

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lblt;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v2

    :cond_1
    invoke-static {v7, v8}, La;->c(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lblt;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lblt;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    new-instance v1, Lblu;

    invoke-direct {v1, p0, p1, v0}, Lblu;-><init>(Lblt;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;)V

    invoke-virtual {p0, v1}, Lblt;->setBatchNext(Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lblt;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/lang/String;Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lblt;->mContext:Landroid/content/Context;

    const v1, 0x7f0b088e

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getDataList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isPinnedHeaderListView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onCreate()V

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lblt;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {p0}, Lblt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {p0}, Lblt;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lblt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lblt;->a:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpimsecure.NOTIFY_UI_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lblt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lblt;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpimsecure.NOTIFY_UI_FAILURE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lblt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lblt;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpimsecure.NOTIFY_UI_NULL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lblt;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lblt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lblt;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lblt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lblt;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lblt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lblt;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onDestroy()V

    return-void
.end method

.method public onHandlerMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lblt;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblt;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, p0}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
