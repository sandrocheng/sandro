.class public Lcom/antivirus/core/e/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Ljava/util/ArrayList;


# instance fields
.field c:Landroid/database/DatabaseUtils$InsertHelper;

.field d:Ljava/util/zip/Adler32;

.field e:Landroid/content/ContentValues;

.field private f:Landroid/database/sqlite/SQLiteDatabase;

.field private g:Lcom/antivirus/core/e/a;

.field private h:Ljava/util/zip/Adler32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/antivirus/core/e/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v1, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/e/b;->h:Ljava/util/zip/Adler32;

    iput-object v1, p0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    iput-object v1, p0, Lcom/antivirus/core/e/b;->d:Ljava/util/zip/Adler32;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v2, "_id"

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v2, "cat_name"

    aget-object v0, v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "categories"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object v0, Lcom/antivirus/core/e/d;->d:Lcom/antivirus/core/e/d;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/antivirus/core/e/b;->c(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/antivirus/core/e/b;->b(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lcom/antivirus/core/e/d;Ljava/lang/String;I)Lcom/antivirus/core/e/e;
    .locals 10

    const/4 v0, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/antivirus/core/e/e;

    invoke-direct {v9, p0}, Lcom/antivirus/core/e/e;-><init>(Lcom/antivirus/core/e/b;)V

    iput-boolean v0, v9, Lcom/antivirus/core/e/e;->c:Z

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->close()V

    :cond_0
    new-instance v0, Lcom/antivirus/core/e/a;

    const-string v1, "secdb"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/antivirus/core/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/e/b;->d:Ljava/util/zip/Adler32;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/e/b;->d:Ljava/util/zip/Adler32;

    :cond_2
    const-string v0, "manifestsig"

    sget-object v0, Lcom/antivirus/core/e/c;->a:[I

    invoke-virtual {p2}, Lcom/antivirus/core/e/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v1, "manifestsig"

    :goto_0
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/antivirus/core/e/b;->d:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    iget-object v0, p0, Lcom/antivirus/core/e/b;->d:Ljava/util/zip/Adler32;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/Adler32;->update([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/antivirus/core/e/b;->d:Ljava/util/zip/Adler32;

    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sha"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cat"

    aput-object v4, v2, v3

    const-string v3, "adler=? and sha=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "cat ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ge v0, p4, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/antivirus/core/e/e;->c:Z

    iput-object p3, v9, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/antivirus/core/e/e;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "could not access database"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v8, v1

    :goto_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :pswitch_0
    :try_start_3
    const-string v1, "manifestsig"

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "classessig"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_5
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v9

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2

    :cond_8
    move-object v1, v8

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/content/Context;Lcom/antivirus/core/b;Ljava/io/File;Z)V
    .locals 17

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    if-eqz p4, :cond_2

    :try_start_1
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    move-object v7, v6

    move-object v6, v1

    :goto_0
    :try_start_3
    new-instance v5, Ljava/io/BufferedReader;

    const v1, 0xfa30

    invoke-direct {v5, v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v11, v10

    move-object v10, v9

    move-object v9, v4

    move-object v4, v3

    :cond_0
    :goto_1
    if-nez v1, :cond_18

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v3, "::"

    invoke-virtual {v14, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    :cond_1
    const-string v3, "type::"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/antivirus/core/e/f;->b:Lcom/antivirus/core/e/f;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v9, 0x0

    move-object v11, v9

    move-object v9, v3

    goto :goto_1

    :cond_2
    :try_start_5
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v7

    move-object v7, v8

    :goto_2
    :try_start_6
    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v1

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Lcom/antivirus/core/e/a;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_6
    :goto_7
    if-eqz v7, :cond_7

    :try_start_b
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_7
    :goto_8
    if-eqz v8, :cond_8

    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :cond_8
    :goto_9
    throw v1

    :cond_9
    :try_start_d
    const-string v3, "toVersion::"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/antivirus/core/e/f;->c:Lcom/antivirus/core/e/f;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    const/4 v9, 0x0

    move-object v11, v9

    move-object v9, v3

    goto/16 :goto_1

    :cond_a
    const-string v3, "emgs::"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/antivirus/core/e/f;->a:Lcom/antivirus/core/e/f;

    sget-object v9, Lcom/antivirus/core/e/d;->f:Lcom/antivirus/core/e/d;

    new-instance v11, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v14, "emgssig"

    invoke-direct {v11, v4, v14}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v11, v9

    move-object v9, v3

    goto/16 :goto_1

    :cond_b
    const-string v3, "dex::"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/antivirus/core/e/f;->a:Lcom/antivirus/core/e/f;

    sget-object v9, Lcom/antivirus/core/e/d;->a:Lcom/antivirus/core/e/d;

    new-instance v11, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v14, "classessig"

    invoke-direct {v11, v4, v14}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v11, v9

    move-object v9, v3

    goto/16 :goto_1

    :cond_c
    const-string v3, "man::"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/antivirus/core/e/f;->a:Lcom/antivirus/core/e/f;

    sget-object v9, Lcom/antivirus/core/e/d;->b:Lcom/antivirus/core/e/d;

    new-instance v11, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v14, "manifestsig"

    invoke-direct {v11, v4, v14}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v11, v9

    move-object v9, v3

    goto/16 :goto_1

    :cond_d
    const-string v3, "bpack::"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/antivirus/core/e/f;->a:Lcom/antivirus/core/e/f;

    sget-object v9, Lcom/antivirus/core/e/d;->c:Lcom/antivirus/core/e/d;

    new-instance v11, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v14, "bpacksig"

    invoke-direct {v11, v4, v14}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v11, v9

    move-object v9, v3

    goto/16 :goto_1

    :cond_e
    const-string v3, "spam::"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/antivirus/core/e/f;->a:Lcom/antivirus/core/e/f;

    sget-object v9, Lcom/antivirus/core/e/d;->d:Lcom/antivirus/core/e/d;

    new-instance v11, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v14, "spamsig"

    invoke-direct {v11, v4, v14}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v11, v9

    move-object v9, v3

    goto/16 :goto_1

    :cond_f
    const-string v3, "media::"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/antivirus/core/e/f;->a:Lcom/antivirus/core/e/f;

    sget-object v9, Lcom/antivirus/core/e/d;->e:Lcom/antivirus/core/e/d;

    new-instance v11, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v14, "mediasig"

    invoke-direct {v11, v4, v14}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v11, v9

    move-object v9, v3

    goto/16 :goto_1

    :cond_10
    const-string v3, "categorydic::"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/antivirus/core/e/f;->d:Lcom/antivirus/core/e/f;

    sget-object v9, Lcom/antivirus/core/e/g;->b:Lcom/antivirus/core/e/g;

    if-ne v10, v9, :cond_11

    const-string v9, "DROP TABLE IF EXISTS categories"

    invoke-virtual {v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v9, "CREATE TABLE IF NOT EXISTS categories (_id INTEGER PRIMARY KEY, cat_name TEXT);"

    invoke-virtual {v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_11
    const/4 v9, 0x0

    move-object v11, v9

    move-object v9, v3

    goto/16 :goto_1

    :cond_12
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v11, v9

    move-object v9, v3

    goto/16 :goto_1

    :cond_13
    if-eqz v9, :cond_0

    if-nez v11, :cond_17

    sget-object v3, Lcom/antivirus/core/e/c;->b:[I

    invoke-virtual {v9}, Lcom/antivirus/core/e/f;->ordinal()I

    move-result v15

    aget v3, v3, v15

    packed-switch v3, :pswitch_data_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :pswitch_0
    const-string v3, "FULL"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct/range {p0 .. p1}, Lcom/antivirus/core/e/b;->l(Landroid/content/Context;)V

    new-instance v3, Lcom/antivirus/core/e/a;

    const-string v10, "secdb"

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v10, v14, v15}, Lcom/antivirus/core/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :try_start_e
    invoke-virtual {v3}, Lcom/antivirus/core/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    move-result-object v2

    :try_start_f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    sget-object v4, Lcom/antivirus/core/e/g;->a:Lcom/antivirus/core/e/g;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_12

    move-object v10, v4

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_1

    :cond_14
    :try_start_10
    const-string v3, "INC"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct/range {p0 .. p1}, Lcom/antivirus/core/e/b;->k(Landroid/content/Context;)V

    new-instance v3, Lcom/antivirus/core/e/a;

    const-string v10, "secdb"

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v10, v14, v15}, Lcom/antivirus/core/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    :try_start_11
    invoke-virtual {v3}, Lcom/antivirus/core/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_13

    move-result-object v2

    :try_start_12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    sget-object v4, Lcom/antivirus/core/e/g;->b:Lcom/antivirus/core/e/g;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_14

    move-object v10, v4

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_1

    :cond_15
    :try_start_13
    const-string v3, "NOCHANGE"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    sget-object v3, Lcom/antivirus/core/e/g;->c:Lcom/antivirus/core/e/g;

    move-object v10, v3

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/antivirus/core/e/b;->b(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object v1, Lcom/antivirus/core/e/g;->b:Lcom/antivirus/core/e/g;

    if-ne v10, v1, :cond_16

    const-string v1, "vacuum"

    invoke-virtual {v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    const/4 v3, 0x0

    :try_start_14
    invoke-virtual {v2}, Lcom/antivirus/core/e/a;->close()V

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/antivirus/core/b;->l(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_15

    const/4 v1, 0x1

    move-object v4, v3

    goto/16 :goto_1

    :pswitch_2
    :try_start_15
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/antivirus/core/e/b;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_2

    :cond_17
    if-eqz v10, :cond_0

    sget-object v3, Lcom/antivirus/core/e/c;->c:[I

    invoke-virtual {v10}, Lcom/antivirus/core/e/g;->ordinal()I

    move-result v15

    aget v3, v3, v15

    packed-switch v3, :pswitch_data_1

    const/4 v1, 0x1

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v4}, Lcom/antivirus/core/e/b;->d(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    goto/16 :goto_3

    :pswitch_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v4}, Lcom/antivirus/core/e/b;->a(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_1

    :cond_18
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    const/4 v3, 0x0

    :try_start_16
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    const/4 v5, 0x0

    if-eqz v7, :cond_1f

    :try_start_17
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    const/4 v6, 0x0

    :goto_a
    :try_start_18
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    const/4 v1, 0x0

    if-eqz v4, :cond_19

    :try_start_19
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    :cond_19
    :goto_b
    if-eqz v2, :cond_1a

    :try_start_1a
    invoke-virtual {v2}, Lcom/antivirus/core/e/a;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    :cond_1a
    :goto_c
    if-eqz v3, :cond_1b

    :try_start_1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a

    :cond_1b
    :goto_d
    if-eqz v5, :cond_1c

    :try_start_1c
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b

    :cond_1c
    :goto_e
    if-eqz v6, :cond_1d

    :try_start_1d
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    :cond_1d
    :goto_f
    if-eqz v1, :cond_1e

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d

    :cond_1e
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v12

    return-void

    :catch_2
    move-exception v3

    goto/16 :goto_4

    :catch_3
    move-exception v2

    goto/16 :goto_5

    :catch_4
    move-exception v2

    goto/16 :goto_6

    :catch_5
    move-exception v2

    goto/16 :goto_7

    :catch_6
    move-exception v2

    goto/16 :goto_8

    :catch_7
    move-exception v2

    goto/16 :goto_9

    :catch_8
    move-exception v4

    goto :goto_b

    :catch_9
    move-exception v2

    goto :goto_c

    :catch_a
    move-exception v2

    goto :goto_d

    :catch_b
    move-exception v2

    goto :goto_e

    :catch_c
    move-exception v2

    goto :goto_f

    :catch_d
    move-exception v1

    goto :goto_10

    :catchall_2
    move-exception v1

    move-object v8, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_3

    :catchall_4
    move-exception v1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_3

    :catchall_5
    move-exception v1

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_3

    :catchall_6
    move-exception v1

    move-object v2, v3

    goto/16 :goto_3

    :catchall_7
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_3

    :catchall_8
    move-exception v1

    move-object v2, v3

    goto/16 :goto_3

    :catchall_9
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_3

    :catchall_a
    move-exception v1

    move-object v4, v3

    goto/16 :goto_3

    :catchall_b
    move-exception v1

    move-object v5, v3

    goto/16 :goto_3

    :catchall_c
    move-exception v1

    move-object v6, v5

    move-object v5, v3

    goto/16 :goto_3

    :catchall_d
    move-exception v1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    goto/16 :goto_3

    :catch_e
    move-exception v1

    move-object/from16 v16, v7

    move-object v7, v6

    move-object/from16 v6, v16

    goto/16 :goto_2

    :catch_f
    move-exception v1

    move-object v7, v8

    goto/16 :goto_2

    :catch_10
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_2

    :catch_11
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_2

    :catch_12
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_2

    :catch_13
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_2

    :catch_14
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_2

    :catch_15
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_2

    :catch_16
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v16, v3

    move-object v3, v4

    move-object/from16 v4, v16

    goto/16 :goto_2

    :catch_17
    move-exception v1

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    goto/16 :goto_2

    :catch_18
    move-exception v1

    move-object v7, v8

    move-object/from16 v16, v3

    move-object v3, v4

    move-object/from16 v4, v16

    goto/16 :goto_2

    :cond_1f
    move-object v6, v7

    goto/16 :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v1, "settings_value"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v1, "settings_key"

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings"

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v2, "settings_key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "version"

    aput-object v5, v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "settings"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const/4 v4, 0x3

    const/4 v3, 0x2

    sget-object v0, Lcom/antivirus/core/e/c;->a:[I

    invoke-virtual {p2}, Lcom/antivirus/core/e/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "manifestsig"

    :goto_1
    iget-object v1, p0, Lcom/antivirus/core/e/b;->h:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v2, "cat"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v2, "sha"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/antivirus/core/e/d;->a:Lcom/antivirus/core/e/d;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/antivirus/core/e/d;->b:Lcom/antivirus/core/e/d;

    if-ne p2, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/e/b;->h:Ljava/util/zip/Adler32;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v1, "adler"

    iget-object v2, p0, Lcom/antivirus/core/e/b;->h:Ljava/util/zip/Adler32;

    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "bpacksig"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "classessig"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "mediasig"

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "emgssig"

    goto/16 :goto_1

    :cond_3
    :try_start_1
    sget-object v0, Lcom/antivirus/core/e/d;->c:Lcom/antivirus/core/e/d;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/antivirus/core/e/d;->f:Lcom/antivirus/core/e/d;

    if-ne p2, v0, :cond_2

    :cond_4
    array-length v0, v1

    if-lt v0, v4, :cond_2

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v2, "dry_wet"

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v2, 0x2d

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/antivirus/core/e/d;->c:Lcom/antivirus/core/e/d;

    if-eq p2, v2, :cond_6

    sget-object v2, Lcom/antivirus/core/e/d;->f:Lcom/antivirus/core/e/d;

    if-ne p2, v2, :cond_7

    :cond_6
    array-length v2, v1

    if-lt v2, v4, :cond_7

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "sha=? and cat=? and dry_wet=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget-object v5, v1, v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aget-object v5, v1, v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v1, v1, v5

    aput-object v1, v3, v4

    invoke-virtual {p3, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/antivirus/core/e/d;->a:Lcom/antivirus/core/e/d;

    if-eq p2, v2, :cond_8

    sget-object v2, Lcom/antivirus/core/e/d;->b:Lcom/antivirus/core/e/d;

    if-ne p2, v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/antivirus/core/e/b;->h:Ljava/util/zip/Adler32;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/Adler32;->update([B)V

    const-string v2, "adler=? and sha=? and cat=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/antivirus/core/e/b;->h:Ljava/util/zip/Adler32;

    invoke-virtual {v6}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, v1, v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aget-object v1, v1, v5

    aput-object v1, v3, v4

    invoke-virtual {p3, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string v2, "sha=? and cat=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget-object v5, v1, v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    aput-object v1, v3, v4

    invoke-virtual {p3, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private c(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    sget-object v0, Lcom/antivirus/core/e/c;->a:[I

    invoke-virtual {p2}, Lcom/antivirus/core/e/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "spamsig"

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2b

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v1, "sha"

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x2d

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "sha=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private d(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object v0, Lcom/antivirus/core/e/d;->d:Lcom/antivirus/core/e/d;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/antivirus/core/e/b;->e(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/antivirus/core/e/b;->f(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    iget-object v0, p0, Lcom/antivirus/core/e/b;->h:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v1, "sha"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/antivirus/core/e/a;

    const-string v0, "secdb"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, p1, v0, v3, v4}, Lcom/antivirus/core/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lcom/antivirus/core/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "CREATE INDEX IF NOT EXISTS classessig_idx ON classessig(adler)"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS manifestsig_idx ON manifestsig(adler)"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/antivirus/core/e/a;->close()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/antivirus/core/e/a;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/antivirus/core/e/a;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private f(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    iget-object v0, p0, Lcom/antivirus/core/e/b;->h:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v2, "cat"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v2, "sha"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/antivirus/core/e/d;->a:Lcom/antivirus/core/e/d;

    if-eq p2, v1, :cond_2

    sget-object v1, Lcom/antivirus/core/e/d;->b:Lcom/antivirus/core/e/d;

    if-ne p2, v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/antivirus/core/e/b;->h:Ljava/util/zip/Adler32;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v1, "adler"

    iget-object v2, p0, Lcom/antivirus/core/e/b;->h:Ljava/util/zip/Adler32;

    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/antivirus/core/e/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    :try_start_1
    sget-object v1, Lcom/antivirus/core/e/d;->c:Lcom/antivirus/core/e/d;

    if-eq p2, v1, :cond_5

    sget-object v1, Lcom/antivirus/core/e/d;->f:Lcom/antivirus/core/e/d;

    if-ne p2, v1, :cond_3

    :cond_5
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/antivirus/core/e/b;->e:Landroid/content/ContentValues;

    const-string v2, "dry_wet"

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private g(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/databases"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "secdb"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v4, v0

    move-object v3, v1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/antivirus/core/e/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    sget-object v0, Lcom/antivirus/core/e/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    const/16 v3, 0x400

    :try_start_2
    new-array v5, v3, [B

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_1
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-result v3

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-object v0, v1

    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v0

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_5
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_6
    :try_start_7
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_7
    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_8
    if-eqz v3, :cond_7

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_7
    :goto_9
    if-eqz v2, :cond_8

    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_8
    :goto_a
    throw v0

    :catch_6
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_9

    :catch_7
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_a

    :catch_8
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_8

    :catch_9
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_6

    :catch_a
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_6
.end method

.method private h(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 v8, 0x0

    const-string v9, ""

    const-string v0, "secdb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->close()V

    :cond_0
    new-instance v0, Lcom/antivirus/core/e/a;

    const-string v1, "secdb"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/antivirus/core/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "settings_value"

    aput-object v4, v2, v3

    const-string v3, "settings_key=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "version"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/antivirus/core/e/b;->a()V

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v8

    move-object v0, v9

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {p0}, Lcom/antivirus/core/e/b;->a()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/antivirus/core/e/b;->a()V

    throw v0

    :cond_5
    const-string v0, "-1"

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_3

    :cond_6
    move-object v1, v9

    goto :goto_0

    :cond_7
    move-object v8, v0

    move-object v0, v9

    goto :goto_1

    :cond_8
    move-object v0, v9

    goto :goto_1
.end method

.method private i(Landroid/content/Context;)Z
    .locals 14

    const/4 v12, 0x4

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v0, "secdb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->close()V

    :cond_0
    new-instance v0, Lcom/antivirus/core/e/a;

    const-string v1, "secdb"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/antivirus/core/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sqlite_master"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const-string v3, "name=? or name=? or name=? or name=? or name=? or name=? or name=? or name=?"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "bpacksig"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "categories"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "mediasig"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "spamsig"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "classessig"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "manifestsig"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "settings"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "emgssig"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_c

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_b

    move v2, v11

    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v8

    move v10, v2

    :goto_1
    if-eqz v10, :cond_a

    :try_start_3
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bpacksig"

    const/4 v2, 0x0

    const-string v3, "_id = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    if-eqz v1, :cond_9

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    if-eq v0, v12, :cond_8

    move v2, v11

    :goto_2
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move v0, v2

    :goto_3
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/antivirus/core/e/b;->a()V

    iget-object v1, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v1}, Lcom/antivirus/core/e/a;->close()V

    :cond_3
    :goto_4
    return v0

    :cond_4
    move v0, v11

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move v0, v9

    :goto_5
    :try_start_6
    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {p0}, Lcom/antivirus/core/e/b;->a()V

    iget-object v1, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v1}, Lcom/antivirus/core/e/a;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {p0}, Lcom/antivirus/core/e/b;->a()V

    iget-object v1, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v1}, Lcom/antivirus/core/e/a;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v8, v9

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v8, v2

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v9

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v13, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    move v0, v10

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v10

    goto :goto_5

    :cond_8
    move v2, v10

    goto :goto_2

    :cond_9
    move-object v8, v1

    move v0, v10

    goto :goto_3

    :cond_a
    move-object v8, v9

    move v0, v10

    goto :goto_3

    :cond_b
    move v2, v9

    goto/16 :goto_0

    :cond_c
    move v10, v9

    move-object v9, v1

    goto/16 :goto_1

    :cond_d
    move v0, v9

    goto :goto_3
.end method

.method private static j(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "secdb"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private k(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private l(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/antivirus/core/e/a;

    const-string v0, "secdb"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, p1, v0, v3, v4}, Lcom/antivirus/core/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lcom/antivirus/core/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "DROP TABLE IF EXISTS classessig"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS manifestsig"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS categories"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS mediasig"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS spamsig"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS bpacksig"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS emgssig"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "vacuum;"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/antivirus/core/e/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Lcom/antivirus/core/e/a;->close()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/antivirus/core/e/a;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/antivirus/core/e/d;Ljava/lang/String;I)Lcom/antivirus/core/e/e;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/antivirus/core/e/b;->b(Landroid/content/Context;Lcom/antivirus/core/e/d;Ljava/lang/String;I)Lcom/antivirus/core/e/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/antivirus/core/e/d;)Ljava/util/ArrayList;
    .locals 10

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->close()V

    :cond_0
    new-instance v0, Lcom/antivirus/core/e/a;

    const-string v1, "secdb"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/antivirus/core/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    const-string v0, ""

    sget-object v0, Lcom/antivirus/core/e/c;->a:[I

    invoke-virtual {p2}, Lcom/antivirus/core/e/d;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_1
    const-string v1, "spamsig"

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    goto :goto_0

    :pswitch_1
    :try_start_2
    const-string v1, "mediasig"

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sha"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    :cond_5
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, La/a/a/a/a/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    :try_start_5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "could not access database"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_8
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v9

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lcom/antivirus/core/e/d;I)Ljava/util/ArrayList;
    .locals 10

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->close()V

    :cond_0
    new-instance v0, Lcom/antivirus/core/e/a;

    const-string v1, "secdb"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/antivirus/core/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    const-string v0, ""

    sget-object v0, Lcom/antivirus/core/e/c;->a:[I

    invoke-virtual {p2}, Lcom/antivirus/core/e/d;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_1
    const-string v1, "emgssig"

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    goto :goto_0

    :pswitch_1
    :try_start_2
    const-string v1, "bpacksig"

    goto :goto_1

    :pswitch_2
    const-string v1, "mediasig"

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/antivirus/core/e/d;->e:Lcom/antivirus/core/e/d;

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sha"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cat"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "cat ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    :cond_5
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/antivirus/core/e/e;

    invoke-direct {v0, p0}, Lcom/antivirus/core/e/e;-><init>(Lcom/antivirus/core/e/b;)V

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, p3, :cond_5

    sget-object v1, Lcom/antivirus/core/e/d;->f:Lcom/antivirus/core/e/d;

    if-eq p2, v1, :cond_9

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/a/a/a/a/a;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    :goto_4
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/antivirus/core/e/e;->b:I

    sget-object v1, Lcom/antivirus/core/e/d;->e:Lcom/antivirus/core/e/d;

    if-eq p2, v1, :cond_6

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/antivirus/core/e/e;->d:I

    :cond_6
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "could not access database"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sha"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cat"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "dry_wet"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dry_wet DESC , cat ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    goto :goto_4

    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_b
    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object v0, v9

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v1, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->close()V

    iput-object v1, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/antivirus/core/b;Ljava/io/File;Z)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/antivirus/core/e/b;->b(Landroid/content/Context;Lcom/antivirus/core/b;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/antivirus/core/e/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/core/e/b;->a()V

    invoke-static {p1}, Lcom/antivirus/core/e/b;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/antivirus/core/e/b;->g(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/antivirus/core/e/b;->f(Landroid/content/Context;)V

    new-instance v0, Lcom/antivirus/core/b;

    invoke-direct {v0, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/antivirus/core/e/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b;->l(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Lcom/antivirus/core/e/b;->a()V

    invoke-static {p1}, Lcom/antivirus/core/e/b;->j(Landroid/content/Context;)Z

    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-direct {p0, p1}, Lcom/antivirus/core/e/b;->h(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-direct {p0, p1}, Lcom/antivirus/core/e/b;->h(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public e(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 10

    const/4 v8, 0x0

    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->close()V

    :cond_0
    new-instance v0, Lcom/antivirus/core/e/a;

    const-string v1, "secdb"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/antivirus/core/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    iget-object v0, p0, Lcom/antivirus/core/e/b;->g:Lcom/antivirus/core/e/a;

    invoke-virtual {v0}, Lcom/antivirus/core/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "categories"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cat_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "could not access database"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v8, v1

    :goto_3
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v9

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/antivirus/core/e/b;->f:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v8

    goto :goto_1

    :cond_7
    move-object v1, v8

    goto :goto_4
.end method
