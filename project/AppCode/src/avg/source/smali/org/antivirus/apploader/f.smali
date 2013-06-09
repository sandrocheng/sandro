.class public final Lorg/antivirus/apploader/f;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field b:Lorg/antivirus/apploader/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/apploader/e;

    const-string v1, "uppdb"

    invoke-direct {v0, p1, v1}, Lorg/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

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
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

    :goto_0
    return-object p3

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

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

.method public final a(Landroid/content/Context;Ljava/util/TreeMap;I)V
    .locals 9

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "basepack =? and sha = ?"

    new-instance v1, Lorg/antivirus/apploader/e;

    const-string v4, "uppdb"

    invoke-direct {v1, p1, v4}, Lorg/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
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
    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

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
    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/apploader/e;

    const-string v1, "uppdb"

    invoke-direct {v0, p1, v1}, Lorg/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

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
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v9

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

    move v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

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

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/antivirus/apploader/e;

    const-string v3, "uppdb"

    invoke-direct {v2, p1, v3}, Lorg/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    iget-object v2, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v2}, Lorg/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
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

    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

    :cond_1
    :goto_0
    return v6

    :catch_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

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
    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/apploader/e;

    const-string v1, "uppdb"

    invoke-direct {v0, p1, v1}, Lorg/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

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
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_2
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

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

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    new-instance v2, Lorg/antivirus/apploader/e;

    const-string v3, "uppdb"

    invoke-direct {v2, p1, v3}, Lorg/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    iget-object v2, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v2}, Lorg/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
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

    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

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
    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    new-instance v2, Lorg/antivirus/apploader/e;

    const-string v3, "uppdb"

    invoke-direct {v2, p1, v3}, Lorg/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    iget-object v2, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v2}, Lorg/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v2, "up"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "signatures"

    const-string v3, "up =2"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

    :cond_1
    :goto_0
    return v5

    :catch_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public final d(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    iget-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/apploader/e;

    const-string v1, "uppdb"

    invoke-direct {v0, p1, v1}, Lorg/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    iget-object v0, p0, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/antivirus/apploader/f;->a:Landroid/database/sqlite/SQLiteDatabase;

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
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

    :goto_1
    return-object v10

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-direct {p0}, Lorg/antivirus/apploader/f;->a()V

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
