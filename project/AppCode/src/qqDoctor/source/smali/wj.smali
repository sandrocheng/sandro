.class final Lwj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lwh;


# direct methods
.method constructor <init>(Lwh;)V
    .locals 0

    iput-object p1, p0, Lwj;->a:Lwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lwj;->a:Lwh;

    iget-object v3, v0, Lwh;->e:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lwj;->a:Lwh;

    iget-object v1, v0, Lwh;->d:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lwj;->a:Lwh;

    iget-object v0, v0, Lwh;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lwj;->a:Lwh;

    iget-object v0, v0, Lwh;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwj;->a:Lwh;

    iget-object v0, v0, Lwh;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lwj;->a:Lwh;

    iget-object v0, v0, Lwh;->b:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "file_network_local_upload"

    invoke-static {v0, v1, v2}, Lfj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQQPIM/STNetLocal;

    iget v4, v1, LQQPIM/STNetLocal;->nNetType:I

    iget-object v5, p0, Lwj;->a:Lwh;

    sget-object v5, Lfl;->a:Lfl;

    invoke-static {v5}, Lwh;->a(Lfl;)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lwj;->a:Lwh;

    iget-object v4, v4, Lwh;->e:Ljava/util/HashMap;

    sget-object v5, Lfl;->a:Lfl;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :try_start_3
    iget v4, v1, LQQPIM/STNetLocal;->nNetType:I

    iget-object v5, p0, Lwj;->a:Lwh;

    sget-object v5, Lfl;->c:Lfl;

    invoke-static {v5}, Lwh;->a(Lfl;)I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lwj;->a:Lwh;

    iget-object v4, v4, Lwh;->e:Ljava/util/HashMap;

    sget-object v5, Lfl;->c:Lfl;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget v4, v1, LQQPIM/STNetLocal;->nNetType:I

    iget-object v5, p0, Lwj;->a:Lwh;

    sget-object v5, Lfl;->b:Lfl;

    invoke-static {v5}, Lwh;->a(Lfl;)I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lwj;->a:Lwh;

    iget-object v4, v4, Lwh;->e:Ljava/util/HashMap;

    sget-object v5, Lfl;->b:Lfl;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget v4, v1, LQQPIM/STNetLocal;->nNetType:I

    iget-object v5, p0, Lwj;->a:Lwh;

    sget-object v5, Lfl;->d:Lfl;

    invoke-static {v5}, Lwh;->a(Lfl;)I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lwj;->a:Lwh;

    iget-object v4, v4, Lwh;->e:Ljava/util/HashMap;

    sget-object v5, Lfl;->d:Lfl;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lwj;->a:Lwh;

    invoke-static {v0}, Lwh;->a(Lwh;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lwj;->a:Lwh;

    iget-object v0, v0, Lwh;->c:Liy;

    iget-object v0, v0, Liy;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_upload_started"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lwj;->a:Lwh;

    iget-object v1, v0, Lwh;->g:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_6

    new-instance v1, Lwk;

    invoke-direct {v1, v0}, Lwk;-><init>(Lwh;)V

    iput-object v1, v0, Lwh;->g:Landroid/content/BroadcastReceiver;

    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lwh;->f:Lfl;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v0, Lwh;->b:Landroid/content/Context;

    iget-object v0, v0, Lwh;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_7
    return-void
.end method
