.class public final Lcom/ijinshan/bootmanager/c/a;
.super Ljava/lang/Object;
.source "AutoBootDbManger.java"


# static fields
.field private static final a:Ljava/lang/String; = "kingsoft_autoboot_white.db"

.field private static final b:Ljava/lang/String; = "autoboot_white"


# instance fields
.field private c:Lcom/ijinshan/bootmanager/c/b;

.field private d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->c:Lcom/ijinshan/bootmanager/c/b;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/ijinshan/bootmanager/c/b;

    invoke-direct {v0, p0, p1}, Lcom/ijinshan/bootmanager/c/b;-><init>(Lcom/ijinshan/bootmanager/c/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->c:Lcom/ijinshan/bootmanager/c/b;

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->c:Lcom/ijinshan/bootmanager/c/b;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/c/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    return-void
.end method

.method private b(Lcom/ijinshan/bootmanager/b/a;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 48
    if-nez p1, :cond_0

    move v0, v8

    .line 61
    :goto_0
    return v0

    .line 50
    :cond_0
    const-string v3, " packageName = ?"

    .line 52
    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 53
    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "autoboot_white"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v9

    .line 59
    :goto_1
    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v1

    .line 61
    goto :goto_0

    :cond_2
    move v1, v8

    .line 58
    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/ijinshan/bootmanager/b/a;Ljava/lang/String;)J
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 65
    monitor-enter p0

    if-nez p1, :cond_0

    .line 66
    const-wide/16 v0, -0x1

    .line 85
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 67
    :cond_0
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 68
    const-string v0, "packageName"

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "chineseName"

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "type"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v9, " packageName = ?"

    .line 72
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 73
    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-nez p1, :cond_1

    move v0, v11

    :goto_1
    if-eqz v0, :cond_4

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "autoboot_white"

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 81
    :goto_2
    iget-object v2, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    :try_start_2
    iget-object v2, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_1
    :try_start_3
    const-string v3, " packageName = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "autoboot_white"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v12

    :goto_3
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v11

    goto :goto_3

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "autoboot_white"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    goto :goto_2

    .line 83
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->c:Lcom/ijinshan/bootmanager/c/b;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->c:Lcom/ijinshan/bootmanager/c/b;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/c/b;->close()V

    .line 28
    :cond_1
    return-void
.end method

.method public final a(Lcom/ijinshan/bootmanager/b/a;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 31
    if-nez p1, :cond_0

    move v0, v8

    .line 44
    :goto_0
    return v0

    .line 33
    :cond_0
    const-string v3, " packageName = ? and type = \'0\'"

    .line 35
    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 36
    iget-object v0, p0, Lcom/ijinshan/bootmanager/c/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "autoboot_white"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v9

    .line 42
    :goto_1
    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v1

    .line 44
    goto :goto_0

    :cond_2
    move v1, v8

    .line 41
    goto :goto_1
.end method
