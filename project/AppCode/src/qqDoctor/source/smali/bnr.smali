.class public final Lbnr;
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
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private d:Labe;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 1

    invoke-direct {p0, p1}, Lblt;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbnr;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbnr;->b:Ljava/util/List;

    iput-object p2, p0, Lbnr;->e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 6
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

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbnr;->a:Ljava/util/List;

    iget-object v3, p0, Lbnr;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbnr;->b:Ljava/util/List;

    iget-object v3, p0, Lbnr;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00bd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbnr;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lbnr;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbnr;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbnr;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbnr;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public final a(Lkw;)V
    .locals 2

    iget-object v0, p0, Lbnr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnr;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    new-instance v0, Lall;

    invoke-direct {p0}, Lbnr;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lall;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 2

    new-instance v0, Lall;

    invoke-direct {p0}, Lbnr;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lall;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    return-object v0
.end method

.method public final getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lbnr;->e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbnr;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final isPinnedHeaderListView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final loadDataList()V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lbnr;->d:Labe;

    iget-object v0, v0, Labe;->a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v2, 0x9

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppsCanMovable(IIZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, La;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbnr;->a:Ljava/util/List;

    iget-object v3, p0, Lbnr;->a:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lbnr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v6, p0, Lbnr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-ne v5, v6, :cond_0

    move-object v2, v0

    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lkw;->g(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lbnr;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lbnr;->b:Ljava/util/List;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lbnr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbnr;->d:Labe;

    iget-object v0, v0, Labe;->a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v4, 0x9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppsCanMovable(IIZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, La;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lbnr;->d:Labe;

    iget-object v4, v4, Labe;->a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v5, 0x79

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getInstalledApp(II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, La;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lbnr;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lbnr;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbnr;->b:Ljava/util/List;

    iget-object v4, p0, Lbnr;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lbnr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lkw;->g(I)V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    iget-object v0, p0, Lbnr;->d:Labe;

    iget-object v0, v0, Labe;->a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v2, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppsCanMovable(IIZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, La;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v6, p0, Lbnr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-ne v5, v6, :cond_5

    :goto_4
    move-object v1, v0

    goto :goto_3

    :cond_3
    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "software_move_to_sdcard_count"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v2, "software_move_to_sdcard_count"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lbnr;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    :cond_4
    :try_start_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "software_move_to_sdcard_count"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :cond_5
    move-object v0, v1

    goto :goto_4
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Lblt;->onCreate()V

    iget-object v0, p0, Lbnr;->d:Labe;

    if-nez v0, :cond_0

    new-instance v0, Labe;

    invoke-direct {v0}, Labe;-><init>()V

    iput-object v0, p0, Lbnr;->d:Labe;

    :cond_0
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

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lbnr;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbnr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbnr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbnr;->mHandler:Landroid/os/Handler;

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
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lbnr;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, La;->c(Landroid/view/Menu;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lblt;->onResume()V

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const v0, 0x7f0b05c1

    invoke-virtual {p0, v0}, Lbnr;->setEmptyText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbnr;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final refreshListData()V
    .locals 2

    invoke-virtual {p0}, Lbnr;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-direct {p0}, Lbnr;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbnr;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lbnr;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbnr;->setReloadData(Z)V

    :cond_0
    iget-object v0, p0, Lbnr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbnr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b0925

    invoke-virtual {p0, v0}, Lbnr;->setEmptyText(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lbnr;->hideEmptyView()V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    return-void
.end method
