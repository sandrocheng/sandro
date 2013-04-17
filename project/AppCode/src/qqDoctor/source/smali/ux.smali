.class final Lux;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Luo;


# direct methods
.method constructor <init>(Luo;)V
    .locals 0

    iput-object p1, p0, Lux;->a:Luo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lux;->a:Luo;

    invoke-static {v1}, Luo;->j(Luo;)Lcom/tencent/tmsecure/module/plugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/plugin/PluginManager;->getAllPlugins()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lux;->a:Luo;

    invoke-static {v1}, Luo;->k(Luo;)Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->setPluginEntityList(Ljava/util/List;)V

    iget-object v1, p0, Lux;->a:Luo;

    invoke-static {v1}, Luo;->k(Luo;)Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->setPluginEntityList(Ljava/util/List;)V

    iget-object v1, p0, Lux;->a:Luo;

    invoke-static {v1}, Luo;->l(Luo;)Lkk;

    move-result-object v1

    invoke-virtual {v1}, Lkk;->b()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lux;->a:Luo;

    invoke-static {v1}, Luo;->l(Luo;)Lkk;

    move-result-object v1

    invoke-virtual {v1}, Lkk;->c()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/plugin/PluginEntity;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->getKey()I

    move-result v0

    iget-object v6, p0, Lux;->a:Luo;

    invoke-static {v6}, Luo;->l(Luo;)Lkk;

    move-result-object v6

    invoke-virtual {v6, v0}, Lkk;->a(I)Z

    move-result v6

    if-nez v6, :cond_3

    add-int v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lux;->a:Luo;

    invoke-static {v7}, Luo;->l(Luo;)Lkk;

    move-result-object v7

    iget-object v8, v7, Lkk;->a:Landroid/content/SharedPreferences;

    const-string v9, "plugin_mapping"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "&"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v7, Lkk;->b:Landroid/content/SharedPreferences$Editor;

    const-string v7, "plugin_mapping"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lux;->a:Luo;

    invoke-static {v0}, Luo;->l(Luo;)Lkk;

    move-result-object v0

    invoke-virtual {v0, v3}, Lkk;->b(Ljava/util/List;)V

    iget-object v0, p0, Lux;->a:Luo;

    invoke-static {v0}, Luo;->k(Luo;)Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->refreshDataList()V

    iget-object v0, p0, Lux;->a:Luo;

    invoke-static {v0}, Luo;->k(Luo;)Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_3
.end method
