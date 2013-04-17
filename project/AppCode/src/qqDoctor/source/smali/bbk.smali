.class public final Lbbk;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lkw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/network/NetworkManager;

.field private b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private c:Labe;

.field private d:Landroid/content/pm/PackageManager;

.field private e:Lbbo;

.field private f:Lho;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbbo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbk;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbk;->h:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbk;->i:Z

    iput-object p2, p0, Lbbk;->e:Lbbo;

    return-void
.end method

.method private a(Ljava/lang/String;Z)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v2, p0, Lbbk;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v2, p1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getMobileRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.tencent.qqpimsecure"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lbbk;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getSelfMobileDownloadBytes()J

    move-result-wide v4

    sub-long/2addr v2, v4

    :cond_0
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    :goto_1
    return-wide v0

    :cond_1
    iget-object v2, p0, Lbbk;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v2, p1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getMobileTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.tencent.qqpimsecure"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lbbk;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getSelfMobileUploadBytes()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method private a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkw;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lbbk;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbbk;->h:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbbk;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method static synthetic a(Lbbk;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lbbk;)Lcom/tencent/tmsecure/module/network/NetworkManager;
    .locals 1

    iget-object v0, p0, Lbbk;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    return-object v0
.end method

.method private b()V
    .locals 13

    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    move v1, v2

    :goto_0
    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbbk;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0, v3, v10}, Lcom/tencent/tmsecure/module/network/NetworkManager;->refreshTrafficInfo([Ljava/lang/String;Z)V

    move v5, v2

    :goto_1
    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lbbk;->a(Ljava/lang/String;Z)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lkw;->b(J)V

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lbbk;->a(Ljava/lang/String;Z)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lkw;->c(J)V

    add-long/2addr v3, v6

    invoke-virtual {v1, v3, v4}, Lkw;->a(J)V

    cmp-long v0, v3, v11

    if-eqz v0, :cond_1

    move v3, v2

    move v4, v2

    :goto_2
    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-virtual {v1}, Lkw;->a()J

    move-result-wide v6

    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->a()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    :goto_3
    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lbbk;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getSelfMobileDownloadBytes()J

    move-result-wide v0

    iget-object v2, p0, Lbbk;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getSelfMobileUploadBytes()J

    move-result-wide v2

    add-long v4, v0, v2

    cmp-long v4, v4, v11

    if-lez v4, :cond_5

    new-instance v4, Lkw;

    invoke-direct {v4}, Lkw;-><init>()V

    iget-object v5, p0, Lbbk;->mContext:Landroid/content/Context;

    const v6, 0x7f0b01ac

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkw;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lkw;->b(J)V

    invoke-virtual {v4, v2, v3}, Lkw;->c(J)V

    add-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Lkw;->a(J)V

    const-string v0, "com.tencent.qqpimsecure.self"

    invoke-virtual {v4, v0}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lbbk;->f:Lho;

    invoke-virtual {v0}, Lho;->cc()V

    :cond_6
    return-void

    :cond_7
    move v3, v4

    goto :goto_3
.end method

.method static synthetic c(Lbbk;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lbbk;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbbk;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lbbk;)Lbbo;
    .locals 1

    iget-object v0, p0, Lbbk;->e:Lbbo;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 4

    new-instance v0, Lake;

    iget-object v1, p0, Lbbk;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lbbk;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lbbk;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lake;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Landroid/widget/ListView;)V

    return-object v0
.end method

.method public final getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lbbk;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbbk;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v0, "com.qq.AppService"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "cn.imolo.service"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.wd.AndroidDaemon"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.nd.assistance"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.dragon.android.pandaspace"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.qihoo360.daemon"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.htc.android.psclient"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.wandoujia.phoenix2.usbproxy"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbk;->g:Ljava/util/List;

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    iget-object v3, p0, Lbbk;->c:Labe;

    invoke-virtual {v3}, Labe;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    iget-object v3, p0, Lbbk;->c:Labe;

    invoke-virtual {v3}, Labe;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lbbk;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getInstalledApp(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, La;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbbk;->g:Ljava/util/List;

    :goto_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_5

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    :try_start_0
    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lbbk;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_4

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3e9

    if-eq v7, v8, :cond_4

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lbbk;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x1000

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v8, v7

    move v0, v1

    :goto_2
    if-ge v0, v8, :cond_4

    aget-object v9, v7, v0

    const-string v10, "android.permission.INTERNET"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbbk;->g:Ljava/util/List;

    iget-object v3, p0, Lbbk;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v5, p0, Lbbk;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v3

    invoke-static {v3, v1}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;Z)Lkw;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v2

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lbbk;->b()V

    iget-object v0, p0, Lbbk;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    return-void
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    iget-object v0, p0, Lbbk;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lbbk;->d:Landroid/content/pm/PackageManager;

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    iput-object v0, p0, Lbbk;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lbbk;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbbk;->f:Lho;

    new-instance v0, Labe;

    invoke-direct {v0}, Labe;-><init>()V

    iput-object v0, p0, Lbbk;->c:Labe;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lbbk;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Laau;

    invoke-direct {v0}, Laau;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.qqpimsecure.CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_cache_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lbbk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbk;->i:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
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

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbbk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0045

    new-instance v2, Lbbl;

    invoke-direct {v2, p0, v0}, Lbbl;-><init>(Lbbk;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lbbn;

    invoke-direct {v2, v0}, Lbbn;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/16 v4, 0x46

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201fa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    return v3
.end method

.method public final onResume()V
    .locals 5

    const v3, 0x7f0b01a9

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget-object v0, p0, Lbbk;->e:Lbbo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbk;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbk;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    :cond_0
    invoke-virtual {p0}, Lbbk;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lbbk;->setReloadData(Z)V

    iget-object v0, p0, Lbbk;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lbbk;->e:Lbbo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbk;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbk;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbbk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lbbk;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbbk;->e:Lbbo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbk;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbk;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbbk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onStart()V

    invoke-virtual {p0}, Lbbk;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setVisibility(I)V

    return-void
.end method

.method public final refreshListData()V
    .locals 5

    const v3, 0x7f0b01a9

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const v0, 0x7f0b05c3

    invoke-virtual {p0, v0}, Lbbk;->setEmptyText(I)V

    iget-object v0, p0, Lbbk;->e:Lbbo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbk;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbk;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbbk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lbbk;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lake;

    invoke-direct {p0}, Lbbk;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lake;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbbk;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lbbk;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lbbk;->hideEmptyView()V

    iget-object v0, p0, Lbbk;->e:Lbbo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbk;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbk;->e:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbbk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbbk;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b01a0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    return-void
.end method
