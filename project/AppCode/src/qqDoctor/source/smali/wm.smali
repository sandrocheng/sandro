.class final Lwm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lwh;


# direct methods
.method constructor <init>(Lwh;)V
    .locals 0

    iput-object p1, p0, Lwm;->a:Lwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v2, 0x0

    sget-object v4, Lwh;->a:Lwh;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lwm;->a:Lwh;

    iget-object v0, v0, Lwh;->b:Landroid/content/Context;

    invoke-static {v0}, La;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    new-instance v5, LQQPIM/STVecNetLocal;

    invoke-direct {v5}, LQQPIM/STVecNetLocal;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v5, LQQPIM/STVecNetLocal;->veclocal:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lwm;->a:Lwh;

    iget-object v0, v0, Lwh;->b:Landroid/content/Context;

    const-string v1, ""

    const-string v3, "file_network_local_upload"

    invoke-static {v0, v1, v3}, Lfj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQQPIM/STNetLocal;

    iget-object v6, v5, LQQPIM/STVecNetLocal;->veclocal:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v0, v5, LQQPIM/STVecNetLocal;->veclocal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v5}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportLocalNet(LQQPIM/STVecNetLocal;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v0}, La;->b(I)Lfc;

    move-result-object v1

    sget-object v2, Lfc;->a:Lfc;

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^^ upload network error ,code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    :goto_2
    iget-object v0, p0, Lwm;->a:Lwh;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, v5, LQQPIM/STVecNetLocal;->veclocal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v1, ""

    :goto_3
    if-ge v2, v3, :cond_7

    iget-object v0, v5, LQQPIM/STVecNetLocal;->veclocal:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STNetLocal;

    iget v6, v0, LQQPIM/STNetLocal;->nNetType:I

    iget-object v7, p0, Lwm;->a:Lwh;

    sget-object v7, Lfl;->a:Lfl;

    invoke-static {v7}, Lwh;->a(Lfl;)I

    move-result v7

    if-ne v6, v7, :cond_4

    iget-object v0, p0, Lwm;->a:Lwh;

    iget-object v0, v0, Lwh;->c:Liy;

    iget-object v0, v0, Liy;->b:Landroid/content/SharedPreferences$Editor;

    const-string v6, "is_wifi_upload"

    const/4 v7, 0x1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfl;->a:Lfl;

    invoke-virtual {v1}, Lfl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_3

    :cond_4
    iget v6, v0, LQQPIM/STNetLocal;->nNetType:I

    iget-object v7, p0, Lwm;->a:Lwh;

    sget-object v7, Lfl;->b:Lfl;

    invoke-static {v7}, Lwh;->a(Lfl;)I

    move-result v7

    if-ne v6, v7, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfl;->b:Lfl;

    invoke-virtual {v1}, Lfl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwm;->a:Lwh;

    iget-object v1, v1, Lwh;->c:Liy;

    iget-object v1, v1, Liy;->b:Landroid/content/SharedPreferences$Editor;

    const-string v6, "is_gprs_wap_upload"

    const/4 v7, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :cond_5
    iget v6, v0, LQQPIM/STNetLocal;->nNetType:I

    iget-object v7, p0, Lwm;->a:Lwh;

    sget-object v7, Lfl;->c:Lfl;

    invoke-static {v7}, Lwh;->a(Lfl;)I

    move-result v7

    if-ne v6, v7, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfl;->c:Lfl;

    invoke-virtual {v1}, Lfl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwm;->a:Lwh;

    iget-object v1, v1, Lwh;->c:Liy;

    iget-object v1, v1, Liy;->b:Landroid/content/SharedPreferences$Editor;

    const-string v6, "is_gprs_cmnet_upload"

    const/4 v7, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :cond_6
    iget v0, v0, LQQPIM/STNetLocal;->nNetType:I

    iget-object v6, p0, Lwm;->a:Lwh;

    sget-object v6, Lfl;->d:Lfl;

    invoke-static {v6}, Lwh;->a(Lfl;)I

    move-result v6

    if-ne v0, v6, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfl;->d:Lfl;

    invoke-virtual {v1}, Lfl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwm;->a:Lwh;

    iget-object v1, v1, Lwh;->c:Liy;

    iget-object v1, v1, Liy;->b:Landroid/content/SharedPreferences$Editor;

    const-string v6, "is_none_upload"

    const/4 v7, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lwm;->a:Lwh;

    invoke-static {v0}, Lwh;->a(Lwh;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lwm;->a:Lwh;

    iget-object v0, v0, Lwh;->c:Liy;

    iget-object v0, v0, Liy;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_upload_started"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    iget-object v0, p0, Lwm;->a:Lwh;

    iget-object v0, v0, Lwh;->b:Landroid/content/Context;

    const-string v1, "file_network_local_upload"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    goto/16 :goto_4
.end method
