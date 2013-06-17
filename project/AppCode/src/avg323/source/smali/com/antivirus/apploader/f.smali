.class public Lcom/antivirus/apploader/f;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field b:Lcom/antivirus/apploader/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/apploader/e;

    const-string v1, "uppdb"

    invoke-direct {v0, p1, v1, v8, v2}, Lcom/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_value"

    aput-object v4, v2, v3

    const-string v3, "_key = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p3

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    :goto_0
    return-object p3

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/TreeMap;I)V
    .locals 9

    const/4 v0, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v3, "basepack =? and sha = ?"

    new-instance v1, Lcom/antivirus/apploader/e;

    const-string v4, "uppdb"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v1, p1, v4, v5, v6}, Lcom/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v1}, Lcom/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "up"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v6, 0x1

    invoke-virtual {p2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v6

    const-string v0, "signatures"

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v1}, Lcom/antivirus/apploader/e;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/apploader/e;

    const-string v1, "uppdb"

    invoke-direct {v0, p1, v1, v9, v10}, Lcom/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_value"

    aput-object v4, v2, v3

    const-string v3, "_key = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "populated"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    move v0, v10

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v9

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    move v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_4
    move v0, v8

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    new-instance v2, Lcom/antivirus/apploader/e;

    const-string v3, "uppdb"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    iget-object v2, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v2}, Lcom/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v2, "up"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "signatures"

    const-string v3, "sourcedir =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v1}, Lcom/antivirus/apploader/e;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    :cond_1
    :goto_0
    return v6

    :catch_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v1}, Lcom/antivirus/apploader/e;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/apploader/e;

    const-string v1, "uppdb"

    invoke-direct {v0, p1, v1, v8, v2}, Lcom/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "signatures"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sourcedir"

    aput-object v4, v2, v3

    const-string v3, "up = 2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    move-object v0, v8

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    move-object v0, v8

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    new-instance v2, Lcom/antivirus/apploader/e;

    const-string v3, "uppdb"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    iget-object v2, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v2}, Lcom/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v2, "_key"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "settings"

    const-string v3, "_key = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v1}, Lcom/antivirus/apploader/e;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v1}, Lcom/antivirus/apploader/e;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    new-instance v0, Lcom/antivirus/apploader/e;

    const-string v3, "uppdb"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, p1, v3, v4, v5}, Lcom/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const-string v3, "up"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "signatures"

    const-string v4, "up =2"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v2, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v2}, Lcom/antivirus/apploader/e;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    :cond_2
    :goto_0
    return v6

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v1}, Lcom/antivirus/apploader/e;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public d(Landroid/content/Context;)V
    .locals 9

    const/4 v1, 0x0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    new-instance v0, Lcom/antivirus/apploader/e;

    const-string v2, "uppdb"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    move-result-object v4

    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    const-string v0, "_value"

    const-string v2, "yes"

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_key"

    const-string v2, "populated"

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings"

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    const-string v0, "_value"

    const-string v2, "0"

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_key"

    const-string v2, "trys"

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings"

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    move-result-object v6

    move-object v3, v1

    :goto_0
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    :try_start_3
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    new-instance v7, Ljava/io/File;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, v7}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f

    :try_start_4
    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, La/a/a/a/b/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "sha"

    invoke-virtual {v5, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "basepack"

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sourcedir"

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "version"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "up"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "signatures"

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    move-object v0, v1

    move-object v1, v2

    :goto_1
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_3
    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    :goto_4
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_5
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v4

    :goto_6
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    :cond_5
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    :try_start_a
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :cond_7
    :goto_8
    return-void

    :catchall_0
    move-exception v0

    :goto_9
    if-eqz v1, :cond_8

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_8
    :goto_a
    if-eqz v2, :cond_9

    :try_start_c
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    :cond_9
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v0, v4

    goto :goto_6

    :cond_a
    :try_start_d
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    :cond_c
    if-eqz v1, :cond_d

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    :cond_d
    :goto_b
    if-eqz v3, :cond_7

    :try_start_f
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_c
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e
    iget-object v2, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v2}, Lcom/antivirus/apploader/e;->close()V

    :cond_f
    if-eqz v1, :cond_10

    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :cond_10
    :goto_d
    if-eqz v3, :cond_11

    :try_start_11
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    :cond_11
    :goto_e
    throw v0

    :catch_4
    move-exception v2

    goto/16 :goto_2

    :catch_5
    move-exception v2

    goto :goto_5

    :catch_6
    move-exception v3

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v1

    goto :goto_d

    :catch_b
    move-exception v1

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_c

    :catchall_3
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_c

    :catchall_5
    move-exception v0

    goto :goto_c

    :catch_c
    move-exception v0

    move-object v3, v1

    move-object v0, v1

    goto/16 :goto_6

    :catch_d
    move-exception v0

    move-object v3, v1

    move-object v0, v4

    goto/16 :goto_6

    :catch_e
    move-exception v0

    move-object v0, v4

    goto/16 :goto_6

    :catchall_6
    move-exception v0

    move-object v2, v3

    goto/16 :goto_9

    :catch_f
    move-exception v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_4

    :cond_12
    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_1
.end method

.method public e(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 11

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    iget-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/apploader/e;

    const-string v1, "uppdb"

    invoke-direct {v0, p1, v1, v8, v2}, Lcom/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "signatures"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "basepack"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "sha"

    aput-object v4, v2, v3

    const-string v3, "up = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v9

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    :goto_1
    return-object v10

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/antivirus/apploader/f;->a()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public f(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/antivirus/apploader/e;

    const-string v2, "uppdb"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "drop table signatures"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v2, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v2}, Lcom/antivirus/apploader/e;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v1}, Lcom/antivirus/apploader/e;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public g(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/antivirus/apploader/e;

    const-string v2, "uppdb"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v1}, Lcom/antivirus/apploader/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "VACUUM"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v0}, Lcom/antivirus/apploader/e;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/antivirus/apploader/f;->b:Lcom/antivirus/apploader/e;

    invoke-virtual {v1}, Lcom/antivirus/apploader/e;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method
