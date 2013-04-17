.class final Lbxo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/plugin/IPluginDatabase;


# instance fields
.field private a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

.field private b:Landroid/os/Handler;

.field private c:Landroid/database/sqlite/SQLiteOpenHelper;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbxp;

    invoke-direct {v0, p0}, Lbxp;-><init>(Lbxo;)V

    iput-object v0, p0, Lbxo;->d:Ljava/lang/Runnable;

    iput-object p2, p0, Lbxo;->a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbxo;->b:Landroid/os/Handler;

    new-instance v0, Lbxq;

    iget-object v1, p0, Lbxo;->a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbxo;->a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;->getVersion()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Lbxq;-><init>(Lbxo;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lbxo;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method static synthetic a(Lbxo;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    iget-object v0, p0, Lbxo;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method static synthetic b(Lbxo;)Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;
    .locals 1

    iget-object v0, p0, Lbxo;->a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v0, p0, Lbxo;->b:Landroid/os/Handler;

    iget-object v1, p0, Lbxo;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lbxo;->b:Landroid/os/Handler;

    iget-object v1, p0, Lbxo;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lbxo;->a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbxo;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final deleteTable(Ljava/lang/String;)Z
    .locals 4

    iget-object v1, p0, Lbxo;->a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbxo;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final execSQL(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lbxo;->a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbxo;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final execTransaction(Ljava/lang/Runnable;)V
    .locals 6

    iget-object v1, p0, Lbxo;->a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbxo;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v0, p0, Lbxo;->b:Landroid/os/Handler;

    iget-object v2, p0, Lbxo;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lbxo;->b:Landroid/os/Handler;

    iget-object v2, p0, Lbxo;->d:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v2, p0, Lbxo;->b:Landroid/os/Handler;

    iget-object v3, p0, Lbxo;->d:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lbxo;->b:Landroid/os/Handler;

    iget-object v3, p0, Lbxo;->d:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    iget-object v1, p0, Lbxo;->a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbxo;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    iget-object v8, p0, Lbxo;->a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lbxo;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public final update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lbxo;->a:Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbxo;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
