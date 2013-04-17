.class public Lcom/tencent/feedback/a/b;
.super Ljava/lang/Object;
.source "OnUploadCountImp.java"

# interfaces
.implements Lcom/tencent/feedback/upload/e$a;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/a/b;->a:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private static a([J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    .line 248
    const-string v0, "CountDAO.parseToStr()"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 249
    if-nez p0, :cond_1

    .line 250
    const-string v0, ""

    .line 257
    :cond_0
    return-object v0

    .line 252
    :cond_1
    const-string v1, ""

    .line 253
    array-length v3, p0

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_0

    aget-wide v4, p0, v1

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 120
    const-string v0, "CountDAO.query() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 121
    if-nez p0, :cond_0

    move-object v0, v8

    .line 167
    :goto_0
    return-object v0

    .line 129
    :cond_0
    :try_start_0
    new-instance v9, Lcom/tencent/feedback/common/a/d;

    invoke-direct {v9, p0}, Lcom/tencent/feedback/common/a/d;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :try_start_1
    invoke-virtual {v9}, Lcom/tencent/feedback/common/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 132
    :try_start_2
    const-string v1, "count"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    .line 133
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 137
    const-string v3, "CountDAO.parseFromCursor() start"

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move-object v3, v8

    :goto_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 144
    :catch_0
    move-exception v1

    move-object v3, v9

    move-object v12, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v12

    .line 146
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 150
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 159
    :cond_3
    if-eqz v3, :cond_4

    .line 161
    invoke-virtual {v3}, Lcom/tencent/feedback/common/a/d;->close()V

    .line 164
    :cond_4
    const-string v0, "CountDAO.query() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move-object v0, v8

    .line 167
    goto :goto_0

    .line 137
    :cond_5
    :try_start_5
    const-string v3, "_prority"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_9

    move v5, v10

    :goto_4
    const-string v3, "_local"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_a

    move v4, v10

    :goto_5
    const-string v3, "_countid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Lcom/tencent/feedback/a/a;

    invoke-direct {v3, v5, v6, v4}, Lcom/tencent/feedback/a/a;-><init>(ZLjava/lang/String;Z)V

    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/feedback/a/a;->a(J)Lcom/tencent/feedback/a/a;

    const-string v4, "_ctime"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/feedback/a/a;->a(I)Lcom/tencent/feedback/a/a;

    const-string v4, "_stime"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/feedback/a/a;->b(J)Lcom/tencent/feedback/a/a;

    const-string v4, "_utime"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/feedback/a/a;->c(J)Lcom/tencent/feedback/a/a;

    const-string v4, "_cparams"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/a/b;->a(Ljava/lang/String;)[J

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/feedback/a/a;->a([J)Lcom/tencent/feedback/a/a;

    const-string v4, "CountDAO.parseFromCursor() end"

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 150
    :catchall_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    :goto_6
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 152
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 156
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 159
    :cond_7
    if-eqz v9, :cond_8

    .line 161
    invoke-virtual {v9}, Lcom/tencent/feedback/common/a/d;->close()V

    .line 164
    :cond_8
    const-string v1, "CountDAO.query() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v5, v11

    .line 137
    goto/16 :goto_4

    :cond_a
    move v4, v11

    goto/16 :goto_5

    .line 139
    :cond_b
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 150
    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    .line 152
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 156
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 159
    :cond_d
    invoke-virtual {v9}, Lcom/tencent/feedback/common/a/d;->close()V

    .line 164
    const-string v0, "CountDAO.query() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 150
    :catchall_1
    move-exception v0

    move-object v2, v8

    move-object v9, v8

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v8

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v8, v2

    move-object v9, v3

    move-object v2, v1

    goto :goto_6

    .line 144
    :catch_1
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    move-object v3, v8

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    move-object v3, v9

    goto/16 :goto_3

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v3, v9

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    const-string v0, "CountDAO.insert_Or_ReplaceList() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 43
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CountDAO.insert_Or_ReplaceList() have null args context "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " list "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move v0, v1

    .line 113
    :goto_0
    return v0

    .line 58
    :cond_1
    :try_start_0
    new-instance v4, Lcom/tencent/feedback/common/a/d;

    invoke-direct {v4, p0}, Lcom/tencent/feedback/common/a/d;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :try_start_1
    invoke-virtual {v4}, Lcom/tencent/feedback/common/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move v6, v1

    .line 62
    :goto_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 65
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/a/a;

    .line 66
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 67
    const-string v5, "_countid"

    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v8, "_prority"

    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v1

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v8, "_local"

    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->g()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v1

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v5, "_stime"

    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v5, "_utime"

    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->d()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    const-string v5, "_ctime"

    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->e()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v5, "_cparams"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->f()[J

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/feedback/a/b;->a([J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v5, "count"

    const-string v8, "_id"

    invoke-virtual {v3, v5, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 77
    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gtz v5, :cond_5

    .line 79
    const-string v0, "CountDAO.insert_Or_ReplaceList() failure! return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    :cond_2
    invoke-virtual {v4}, Lcom/tencent/feedback/common/a/d;->close()V

    .line 113
    const-string v0, "CountDAO.insert_Or_ReplaceList() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    .line 68
    :cond_3
    const/4 v5, 0x5

    goto/16 :goto_2

    :cond_4
    move v5, v2

    .line 69
    goto :goto_3

    .line 82
    :cond_5
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result id:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v7, v8}, Lcom/tencent/feedback/a/a;->a(J)Lcom/tencent/feedback/a/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 62
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    .line 87
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    :cond_7
    invoke-virtual {v4}, Lcom/tencent/feedback/common/a/d;->close()V

    .line 113
    const-string v0, "CountDAO.insert_Or_ReplaceList() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    .line 90
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 93
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 97
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 105
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    :cond_8
    if-eqz v3, :cond_9

    .line 110
    invoke-virtual {v3}, Lcom/tencent/feedback/common/a/d;->close()V

    .line 113
    :cond_9
    const-string v0, "CountDAO.insert_Or_ReplaceList() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    .line 103
    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_5
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 105
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    :cond_a
    if-eqz v4, :cond_b

    .line 110
    invoke-virtual {v4}, Lcom/tencent/feedback/common/a/d;->close()V

    .line 113
    :cond_b
    const-string v1, "CountDAO.insert_Or_ReplaceList() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0

    .line 103
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_5

    .line 90
    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;)[J
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 262
    const-string v0, "CountDAOparseToArray()"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 263
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 297
    :goto_0
    return-object v0

    .line 268
    :cond_1
    :try_start_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 270
    if-nez v4, :cond_2

    move-object v0, v1

    .line 271
    goto :goto_0

    :cond_2
    move v2, v3

    move v0, v3

    .line 275
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_5

    .line 277
    aget-object v5, v4, v2

    if-eqz v5, :cond_3

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_4

    .line 278
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 275
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 281
    :cond_5
    array-length v2, v4

    sub-int v0, v2, v0

    new-array v2, v0, [J

    move v0, v3

    .line 283
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_7

    array-length v5, v2

    if-ge v0, v5, :cond_7

    .line 285
    aget-object v5, v4, v3

    if-eqz v5, :cond_6

    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 287
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    add-int/lit8 v0, v0, 0x1

    .line 283
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move-object v0, v2

    .line 291
    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 297
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 6
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 172
    const-string v1, "CountDAO.deleteCounts() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 174
    if-nez p0, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CountDAO.insert_Or_ReplaceList() have null args context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 212
    :goto_0
    return v0

    .line 187
    :cond_0
    :try_start_0
    new-instance v3, Lcom/tencent/feedback/common/a/d;

    invoke-direct {v3, p0}, Lcom/tencent/feedback/common/a/d;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :try_start_1
    invoke-virtual {v3}, Lcom/tencent/feedback/common/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 189
    const-string v1, "count"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 202
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 207
    :cond_1
    invoke-virtual {v3}, Lcom/tencent/feedback/common/a/d;->close()V

    .line 212
    const-string v1, "CountDAO.deleteCounts() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :catch_0
    move-exception v1

    move-object v3, v2

    .line 194
    :goto_1
    :try_start_2
    const-string v4, "db deleted error!"

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 207
    :cond_2
    if-eqz v3, :cond_3

    .line 209
    invoke-virtual {v3}, Lcom/tencent/feedback/common/a/d;->close()V

    .line 212
    :cond_3
    const-string v1, "CountDAO.deleteCounts() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 207
    :cond_4
    if-eqz v3, :cond_5

    .line 209
    invoke-virtual {v3}, Lcom/tencent/feedback/common/a/d;->close()V

    .line 212
    :cond_5
    const-string v1, "CountDAO.deleteCounts() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0

    .line 202
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 192
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;JJJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/a/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/a/c;

    move-result-object v1

    .line 27
    if-nez v1, :cond_2

    .line 29
    const-string v0, "CountProcess == null error"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUploadConsume count start "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 35
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 38
    if-eqz v2, :cond_3

    const-string v0, "rqd_upload_wifi_consumed"

    .line 39
    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p2, v3, v4

    const/4 v4, 0x1

    aput-wide p4, v3, v4

    const/4 v4, 0x2

    aput-wide p6, v3, v4

    .line 40
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;[JZZ)V

    .line 43
    if-eqz v2, :cond_4

    const-string v0, "local_rqd_upload_totalwifi"

    .line 44
    :goto_2
    const/4 v3, 0x3

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p2, v3, v4

    const/4 v4, 0x1

    aput-wide p4, v3, v4

    const/4 v4, 0x2

    aput-wide p6, v3, v4

    .line 45
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;[JZZ)V

    .line 46
    const-string v0, "onUploadConsume count end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 49
    if-eqz v2, :cond_5

    const-string v0, "local_rqd_upload_todaywifi"

    .line 50
    :goto_3
    invoke-virtual {v1, v0}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;)Lcom/tencent/feedback/a/a;

    move-result-object v2

    .line 51
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 52
    const/4 v4, 0x3

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p2, v4, v5

    const/4 v5, 0x1

    aput-wide p4, v4, v5

    const/4 v5, 0x2

    aput-wide p6, v4, v5

    .line 53
    if-eqz v2, :cond_6

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/tencent/feedback/a/a;->c()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5, v3}, Lcom/tencent/feedback/common/g;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 56
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/tencent/feedback/a/a;->a(I)Lcom/tencent/feedback/a/a;

    .line 57
    invoke-virtual {v2, v4}, Lcom/tencent/feedback/a/a;->a([J)Lcom/tencent/feedback/a/a;

    .line 58
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/feedback/a/a;->b(J)Lcom/tencent/feedback/a/a;

    .line 59
    invoke-virtual {v2}, Lcom/tencent/feedback/a/a;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/feedback/a/a;->c(J)Lcom/tencent/feedback/a/a;

    .line 60
    invoke-virtual {v1, v2}, Lcom/tencent/feedback/a/c;->a(Lcom/tencent/feedback/a/a;)V

    goto/16 :goto_0

    .line 38
    :cond_3
    const-string v0, "rqd_upload_nowifi_consumed"

    goto :goto_1

    .line 43
    :cond_4
    const-string v0, "local_rqd_upload_totalnowifi"

    goto :goto_2

    .line 49
    :cond_5
    const-string v0, "local_rqd_upload_todaynowifi"

    goto :goto_3

    .line 65
    :cond_6
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;[JZZ)V

    goto/16 :goto_0
.end method
