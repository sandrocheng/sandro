.class public final Lcom/ijinshan/cleaner/at;
.super Ljava/lang/Thread;
.source "SDcardCleanerActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;


# direct methods
.method public constructor <init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/ijinshan/cleaner/at;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/at;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    iget-object v0, v0, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/ijinshan/cleaner/at;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d()V

    .line 193
    :cond_0
    new-instance v0, Lcom/ijinshan/cleaner/b/a;

    invoke-direct {v0}, Lcom/ijinshan/cleaner/b/a;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/ijinshan/cleaner/at;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/b/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 195
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/ijinshan/cleaner/at;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a()V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/at;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->f(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 202
    iget-object v0, p0, Lcom/ijinshan/cleaner/at;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Lcom/ijinshan/cleaner/at;)Lcom/ijinshan/cleaner/at;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    :try_start_2
    iget-object v0, p0, Lcom/ijinshan/cleaner/at;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V

    .line 208
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 203
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 206
    :try_start_4
    iget-object v0, p0, Lcom/ijinshan/cleaner/at;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 187
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 206
    :catchall_2
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/ijinshan/cleaner/at;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->a(Lcom/ijinshan/cleaner/SDcardCleanerActivity;I)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
