.class public final Lblh;
.super Lblt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblt",
        "<",
        "Lkw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Lod;

.field private g:I

.field private h:Labe;

.field private i:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lblt;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lblh;->d:Z

    iput-boolean v0, p0, Lblh;->e:Z

    iput v0, p0, Lblh;->g:I

    new-instance v0, Lblm;

    invoke-direct {v0, p0}, Lblm;-><init>(Lblh;)V

    iput-object v0, p0, Lblh;->i:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    return-void
.end method

.method static synthetic a(Lblh;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lblh;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lblh;->mDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lblh;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lblh;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lblh;->g:I

    new-instance v0, Lmp;

    invoke-direct {v0}, Lmp;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmp;->g:I

    iput-object p1, v0, Lmp;->h:Ljava/lang/Object;

    new-instance v1, Lblo;

    invoke-direct {v1, p0}, Lblo;-><init>(Lblh;)V

    iput-object v1, v0, Lmp;->i:Labu$a;

    iget-object v1, p0, Lblh;->f:Lod;

    invoke-virtual {v1, v0}, Lod;->b(Lmp;)Z

    return-void
.end method

.method static synthetic b(Lblh;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lblh;)Labe;
    .locals 1

    iget-object v0, p0, Lblh;->h:Labe;

    return-object v0
.end method

.method private d()Lakv;
    .locals 6

    new-instance v0, Lakv;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lblh;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, p0, v1}, Lakv;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic d(Lblh;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lblh;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lblh;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lblh;->g:I

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lblh;->d:Z

    new-instance v0, Lblp;

    invoke-direct {v0, p0}, Lblp;-><init>(Lblh;)V

    invoke-virtual {v0}, Lblp;->start()V

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic f(Lblh;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lblh;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lblh;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lblh;)V
    .locals 0

    invoke-direct {p0}, Lblh;->e()V

    return-void
.end method

.method static synthetic j(Lblh;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lblh;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lblh;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lblh;)V
    .locals 12

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkw;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "use time :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  apk path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", apk size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v2

    check-cast v2, Lakv;

    invoke-virtual {v2}, Lakv;->c()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v2

    check-cast v2, Lakv;

    invoke-virtual {v2, v1}, Lakv;->b(Lkw;)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    :goto_1
    move-wide v4, v6

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lblh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lblh;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01c1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_2

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method static synthetic n(Lblh;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lblh;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lblh;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()Lakv;
    .locals 1

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lblt;->a(Landroid/content/Intent;)V

    const v0, 0x7f0b0923

    invoke-virtual {p0, v0}, Lblh;->setEmptyText(I)V

    return-void
.end method

.method public final a(Lkw;)V
    .locals 4

    const v3, 0x7f0b01c1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->c()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0, p1}, Lakv;->b(Lkw;)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->a()V

    iget-object v0, p0, Lblh;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01c0

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lblh;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01c1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-direct {p0}, Lblh;->d()Lakv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1

    invoke-direct {p0}, Lblh;->d()Lakv;

    move-result-object v0

    return-object v0
.end method

.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b000e

    invoke-direct {v0, v3, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b000c

    invoke-direct {v0, v5, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b0015

    invoke-direct {v0, v4, v2, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    return-object v1
.end method

.method public final bridge synthetic getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    return-object v0
.end method

.method public final bridge synthetic getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    return-object v0
.end method

.method public final getFooterView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final isPinnedHeaderListView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final loadDataList()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lblh;->d:Z

    iput-boolean v0, p0, Lblh;->e:Z

    iput v0, p0, Lblh;->g:I

    :try_start_0
    new-instance v1, Lbln;

    invoke-direct {v1, p0}, Lbln;-><init>(Lblh;)V

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lblh;->e:Z

    invoke-direct {p0}, Lblh;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    invoke-super {p0, p1}, Lblt;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lblt;->onCreate()V

    const-class v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iput-object v0, p0, Lblh;->a:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v0, p0, Lblh;->a:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lblh;->i:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65bd

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Lod;

    iget-object v1, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lod;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lblh;->f:Lod;

    new-instance v0, Labe;

    invoke-direct {v0}, Labe;-><init>()V

    iput-object v0, p0, Lblh;->h:Labe;

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v1, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b08f6

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-virtual {p0, v0}, Lblh;->c(Lkw;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v0, 0x7f0b0047

    new-instance v2, Lblq;

    invoke-direct {v2, v1}, Lblq;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lblh;->a:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lblh;->i:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->removeListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    iget-object v0, p0, Lblh;->f:Lod;

    invoke-virtual {v0}, Lod;->e()V

    iget-object v0, p0, Lblh;->mFooterView:Landroid/view/View;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Lblh;->mFooterView:Landroid/view/View;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    invoke-virtual {p0}, Lblh;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lblh;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonEnable(Z)V

    :cond_0
    invoke-super {p0}, Lblt;->onDestroy()V

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lblh;->mDataList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lblh;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lakv;->setDataList(Ljava/util/List;)V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lblh;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setSelection(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_2
    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->a()V

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lblh;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0903

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    sub-int v1, v2, v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lblh;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0904

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lft$a;

    invoke-direct {v0}, Lft$a;-><init>()V

    invoke-static {v0}, Lft;->a(Lft$a;)V

    iget-wide v0, v0, Lft$a;->a:J

    invoke-static {v0, v1}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lblh;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lblh;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lblh;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lblh;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :cond_1
    :pswitch_4
    iget-object v1, p0, Lblh;->mDataList:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lblh;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lakv;->setDataList(Ljava/util/List;)V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->notifyDataSetChanged()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
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

    const v4, 0x7f0b045d

    const/4 v5, 0x2

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b045e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b000c

    new-instance v3, Lblj;

    invoke-direct {v3, p0, v0, v1}, Lblj;-><init>(Lblh;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v2, Lblk;

    invoke-direct {v2, v1}, Lblk;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v0, v2, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lblh;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v0}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4d

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;Z)Lkw;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b045f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b0045

    new-instance v3, Lbll;

    invoke-direct {v3, v1}, Lbll;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v1, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f08014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->onClick(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public final onLoadDataStart()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lblh;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lblh;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lblh;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->removeFooterView(Landroid/view/View;)Z

    invoke-virtual {p0}, Lblh;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lblh;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lblh;->mFooterView:Landroid/view/View;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    iget-object v0, p0, Lblh;->mFooterView:Landroid/view/View;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    invoke-virtual {p0}, Lblh;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lblh;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonEnable(Z)V

    :cond_0
    invoke-virtual {p0}, Lblh;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {p0, v0}, Lblh;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    invoke-super {p0}, Lblt;->onLoadDataStart()V

    return-void
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lblh;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01d0

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->f()Ljava/util/List;

    move-result-object v1

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    iget-object v1, p0, Lblh;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lblh;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0905

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lblh;->c(Ljava/util/List;)V

    goto :goto_0

    :pswitch_1
    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lblh;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01d1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0452

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0494

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0045

    new-instance v2, Lblr;

    invoke-direct {v2, p0, v1}, Lblr;-><init>(Lblh;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v0, v2, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v2, Lbls;

    invoke-direct {v2, v1}, Lbls;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_2
    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->b()I

    move-result v0

    if-ne v1, v0, :cond_3

    invoke-virtual {p1, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setCheck(Z)V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0, v4}, Lakv;->a(Z)V

    :goto_1
    invoke-virtual {p0, p1}, Lblh;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1, v5}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setCheck(Z)V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0, v5}, Lakv;->a(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onOptionClick(I)V
    .locals 10

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lblt;->onOptionClick(I)V

    iget-boolean v1, p0, Lblh;->d:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lblh;->mDataList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    new-instance v2, Lgx$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgx$a;-><init>(B)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lblh;->mDataList:Ljava/util/List;

    monitor-enter v3

    :try_start_2
    iget-object v4, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_5

    add-int/lit8 v0, v5, -0x1

    move v1, v0

    :goto_3
    if-le v1, v2, :cond_4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getLastModifiedTime()J

    move-result-wide v6

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getLastModifiedTime()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v4, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :pswitch_2
    iget-object v3, p0, Lblh;->mDataList:Ljava/util/List;

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_4
    if-ge v2, v5, :cond_8

    add-int/lit8 v0, v5, -0x1

    move v1, v0

    :goto_5
    if-le v1, v2, :cond_7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getSize()J

    move-result-wide v6

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getSize()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v4, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    iget-boolean v0, p0, Lblh;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->clearDataList()V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakv;

    invoke-virtual {v0}, Lakv;->notifyDataSetChanged()V

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/16 v4, 0x2c

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0532

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v4, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020204

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lblt;->onResume()V

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbli;

    invoke-direct {v1, p0}, Lbli;-><init>(Lblh;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lblt;->onStart()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0b1c

    invoke-virtual {p0, v0}, Lblh;->setEmptyText(I)V

    iget-object v0, p0, Lblh;->mFooterView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lblh;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lblh;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->removeFooterView(Landroid/view/View;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lblh;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lblh;->setReloadData(Z)V

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final refreshListData()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0, v3}, Lblh;->setReloadData(Z)V

    iget-boolean v0, p0, Lblh;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblh;->mFooterView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lblh;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lblh;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->removeFooterView(Landroid/view/View;)Z

    invoke-virtual {p0}, Lblh;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {p0, v0}, Lblh;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    invoke-virtual {p0}, Lblh;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lblh;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonEnable(Z)V

    :cond_0
    iget-object v0, p0, Lblh;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b0583

    invoke-virtual {p0, v0}, Lblh;->setEmptyText(I)V

    invoke-virtual {p0}, Lblh;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {p0, v0}, Lblh;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    :cond_1
    iget-object v0, p0, Lblh;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    const v0, 0x7f0b016e

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    iget-object v0, p0, Lblh;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lblh;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v1, 0x1

    iget-object v3, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020227

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lblh;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0b16

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lblh;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020225

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p0, Lblh;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0b17

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lblh;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lblh;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020226

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p0, Lblh;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0b18

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lblh;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lblh;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonPopStyle(Ljava/util/List;)V

    return-void
.end method
