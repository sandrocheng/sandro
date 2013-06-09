.class public final Lorg/antivirus/core/c/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Ljava/util/ArrayList;


# instance fields
.field c:Landroid/database/DatabaseUtils$InsertHelper;

.field d:Ljava/util/zip/Adler32;

.field e:Landroid/content/ContentValues;

.field private f:Landroid/database/sqlite/SQLiteDatabase;

.field private g:Lorg/antivirus/core/c/a;

.field private h:Ljava/util/zip/Adler32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/antivirus/core/c/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v1, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/c/b;->h:Ljava/util/zip/Adler32;

    iput-object v1, p0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    iput-object v1, p0, Lorg/antivirus/core/c/b;->d:Ljava/util/zip/Adler32;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V
    .locals 8

    const/4 v1, 0x0

    sget-object v0, Lorg/antivirus/core/c/c;->a:[I

    invoke-virtual {p3}, Lorg/antivirus/core/c/d;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "manifestsig"

    :goto_1
    iget-object v2, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    if-eqz p2, :cond_0

    :try_start_0
    const-string v2, "\\|"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v6, "cat"

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v6, "sha"

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_1
    const-string v0, "bpacksig"

    goto :goto_1

    :pswitch_2
    const-string v0, "classessig"

    goto :goto_1

    :pswitch_3
    const-string v0, "mediasig"

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/lang/Object;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/String;

    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    const-string v0, "categories"

    const-string v3, "1"

    invoke-virtual {p2, v0, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    aget-object v5, v4, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v4, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "_id"

    aget-object v6, v4, v1

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v5, "cat_name"

    aget-object v4, v4, v7

    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "categories"

    invoke-virtual {p2, v4, v8, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;
    .locals 10

    const/4 v8, 0x0

    const/4 v0, 0x0

    new-instance v9, Lorg/antivirus/core/c/e;

    invoke-direct {v9, p0}, Lorg/antivirus/core/c/e;-><init>(Lorg/antivirus/core/c/b;)V

    iput-boolean v0, v9, Lorg/antivirus/core/c/e;->c:Z

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->close()V

    :cond_0
    new-instance v0, Lorg/antivirus/core/c/a;

    const-string v1, "secdb"

    invoke-direct {v0, p1, v1}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/core/c/b;->d:Ljava/util/zip/Adler32;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/c/b;->d:Ljava/util/zip/Adler32;

    :cond_2
    sget-object v0, Lorg/antivirus/core/c/c;->a:[I

    invoke-virtual {p2}, Lorg/antivirus/core/c/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v1, "manifestsig"

    :goto_0
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/antivirus/core/c/b;->d:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    iget-object v0, p0, Lorg/antivirus/core/c/b;->d:Ljava/util/zip/Adler32;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/Adler32;->update([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/antivirus/core/c/b;->d:Ljava/util/zip/Adler32;

    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

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

    iput-boolean v0, v9, Lorg/antivirus/core/c/e;->c:Z

    iput-object p3, v9, Lorg/antivirus/core/c/e;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lorg/antivirus/core/c/e;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

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

    goto :goto_0

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v1, 0x0

    sget-object v0, Lorg/antivirus/core/c/c;->a:[I

    invoke-virtual {p3}, Lorg/antivirus/core/c/d;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "manifestsig"

    :goto_1
    iget-object v2, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    if-eqz p2, :cond_0

    :try_start_0
    const-string v2, "\\|"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v6, v5

    if-ne v6, v9, :cond_1

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x2b

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v6, "cat"

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v6, "sha"

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_1
    const-string v0, "bpacksig"

    goto :goto_1

    :pswitch_2
    const-string v0, "classessig"

    goto :goto_1

    :pswitch_3
    const-string v0, "mediasig"

    goto :goto_1

    :cond_2
    const/16 v6, 0x2d

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v6, v4, :cond_1

    const-string v4, "sha=? and cat=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v5, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v5, v5, v8

    aput-object v5, v6, v7

    invoke-virtual {p1, v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
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
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->close()V

    :cond_0
    new-instance v0, Lorg/antivirus/core/c/a;

    const-string v1, "secdb"

    invoke-direct {v0, p1, v1}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

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
    invoke-virtual {p0}, Lorg/antivirus/core/c/b;->a()V

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
    invoke-virtual {p0}, Lorg/antivirus/core/c/b;->a()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {p0}, Lorg/antivirus/core/c/b;->a()V

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

.method private g(Landroid/content/Context;)Z
    .locals 14

    const/4 v10, 0x7

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

    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->close()V

    :cond_0
    new-instance v0, Lorg/antivirus/core/c/a;

    const-string v1, "secdb"

    invoke-direct {v0, p1, v1}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sqlite_master"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const-string v3, "name=? or name=? or name=? or name=? or name=? or name=? or name=?"

    const/4 v4, 0x7

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

    if-eq v0, v10, :cond_b

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
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "classessig"

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
    invoke-virtual {p0}, Lorg/antivirus/core/c/b;->a()V

    iget-object v1, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->close()V

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
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {p0}, Lorg/antivirus/core/c/b;->a()V

    iget-object v1, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {p0}, Lorg/antivirus/core/c/b;->a()V

    iget-object v1, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->close()V

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

.method private static h(Landroid/content/Context;)Z
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

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/antivirus/core/c/d;)Ljava/util/ArrayList;
    .locals 10

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->close()V

    :cond_0
    new-instance v0, Lorg/antivirus/core/c/a;

    const-string v1, "secdb"

    invoke-direct {v0, p1, v1}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    sget-object v0, Lorg/antivirus/core/c/c;->a:[I

    invoke-virtual {p2}, Lorg/antivirus/core/c/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v8

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "spamsig"

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v8

    goto :goto_0

    :pswitch_1
    const-string v1, "mediasig"

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

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

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    :cond_3
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "could not access database"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v9

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;Lorg/antivirus/core/c/d;I)Ljava/util/ArrayList;
    .locals 10

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->close()V

    :cond_0
    new-instance v0, Lorg/antivirus/core/c/a;

    const-string v1, "secdb"

    invoke-direct {v0, p1, v1}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    sget-object v0, Lorg/antivirus/core/c/c;->a:[I

    invoke-virtual {p2}, Lorg/antivirus/core/c/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v8

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "bpacksig"

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v8

    goto :goto_0

    :pswitch_1
    const-string v1, "mediasig"

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

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

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    :cond_3
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/antivirus/core/c/e;

    invoke-direct {v0, p0}, Lorg/antivirus/core/c/e;-><init>(Lorg/antivirus/core/c/b;)V

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, p3, :cond_3

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/core/c/e;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lorg/antivirus/core/c/e;->b:I

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "could not access database"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v9

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/antivirus/core/c/b;->b(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v1, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->close()V

    iput-object v1, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/antivirus/core/c/a;

    const-string v0, "secdb"

    invoke-direct {v1, p1, v0}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    :try_start_2
    iget-object v0, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "DROP TABLE IF EXISTS classessig"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS manifestsig"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS categories"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS mediasig"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS spamsig"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS bpacksig"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/antivirus/core/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "bpack"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lorg/antivirus/core/c/d;->c:Lorg/antivirus/core/c/d;

    invoke-direct {p0, v3, v0, v4}, Lorg/antivirus/core/c/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V

    :cond_0
    const-string v0, "media"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lorg/antivirus/core/c/d;->e:Lorg/antivirus/core/c/d;

    invoke-direct {p0, v3, v0, v4}, Lorg/antivirus/core/c/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V

    :cond_1
    const-string v0, "spam"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lorg/antivirus/core/c/d;->d:Lorg/antivirus/core/c/d;

    sget-object v5, Lorg/antivirus/core/c/c;->a:[I

    invoke-virtual {v4}, Lorg/antivirus/core/c/d;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_0
    const-string v0, "man"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lorg/antivirus/core/c/d;->b:Lorg/antivirus/core/c/d;

    invoke-direct {p0, v3, v0, v4}, Lorg/antivirus/core/c/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V

    :cond_3
    const-string v0, "dex"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lorg/antivirus/core/c/d;->a:Lorg/antivirus/core/c/d;

    invoke-direct {p0, v3, v0, v4}, Lorg/antivirus/core/c/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V

    :cond_4
    const-string v0, "toVersion"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v5, "settings_value"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v4, "settings_key"

    const-string v5, "version"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings"

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    :cond_5
    const-string v0, "categorydic"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    if-eqz v0, :cond_6

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-static {v0, v4, v3}, Lorg/antivirus/core/c/b;->a(Ljava/lang/Object;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    const-string v0, "toVersion"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lorg/antivirus/core/EngineSettings;

    invoke-direct {v1, p1}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setSecDbVersion(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    :goto_1
    return-void

    :pswitch_0
    :try_start_5
    const-string v4, "spamsig"

    iget-object v5, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_2

    :try_start_6
    const-string v5, "\\|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v0, v5

    if-lez v0, :cond_2

    array-length v6, v5

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v9, "sha"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v7, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_8
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_9

    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_a

    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->close()V

    :cond_b
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;Ljava/io/File;)V
    .locals 16

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    :try_start_2
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :try_start_3
    new-instance v7, Ljava/io/BufferedReader;

    const/16 v1, 0x1f70

    invoke-direct {v7, v8, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v10, v1

    move-object v11, v4

    move-object v12, v6

    move-object v4, v5

    move-object v6, v3

    move-object v5, v2

    :cond_0
    :goto_0
    if-nez v10, :cond_24

    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->ready()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v1, "::"

    invoke-virtual {v13, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    :cond_1
    const-string v1, "type::"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/antivirus/core/c/f;->b:Lorg/antivirus/core/c/f;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    const/4 v2, 0x0

    move-object v11, v1

    move-object v12, v2

    goto :goto_0

    :cond_2
    const-string v1, "toVersion::"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/antivirus/core/c/f;->c:Lorg/antivirus/core/c/f;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    const/4 v2, 0x0

    move-object v11, v1

    move-object v12, v2

    goto :goto_0

    :cond_3
    const-string v1, "dex::"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lorg/antivirus/core/c/f;->a:Lorg/antivirus/core/c/f;

    sget-object v2, Lorg/antivirus/core/c/d;->a:Lorg/antivirus/core/c/d;

    new-instance v3, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v11, "classessig"

    invoke-direct {v3, v6, v11}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v11, v1

    move-object v12, v2

    goto :goto_0

    :cond_4
    const-string v1, "man::"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/antivirus/core/c/f;->a:Lorg/antivirus/core/c/f;

    sget-object v2, Lorg/antivirus/core/c/d;->b:Lorg/antivirus/core/c/d;

    new-instance v3, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v11, "manifestsig"

    invoke-direct {v3, v6, v11}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v11, v1

    move-object v12, v2

    goto/16 :goto_0

    :cond_5
    const-string v1, "bpack::"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lorg/antivirus/core/c/f;->a:Lorg/antivirus/core/c/f;

    sget-object v2, Lorg/antivirus/core/c/d;->c:Lorg/antivirus/core/c/d;

    new-instance v3, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v11, "bpacksig"

    invoke-direct {v3, v6, v11}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v11, v1

    move-object v12, v2

    goto/16 :goto_0

    :cond_6
    const-string v1, "spam::"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lorg/antivirus/core/c/f;->a:Lorg/antivirus/core/c/f;

    sget-object v2, Lorg/antivirus/core/c/d;->d:Lorg/antivirus/core/c/d;

    new-instance v3, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v11, "spamsig"

    invoke-direct {v3, v6, v11}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v11, v1

    move-object v12, v2

    goto/16 :goto_0

    :cond_7
    const-string v1, "media::"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lorg/antivirus/core/c/f;->a:Lorg/antivirus/core/c/f;

    sget-object v2, Lorg/antivirus/core/c/d;->e:Lorg/antivirus/core/c/d;

    new-instance v3, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v11, "mediasig"

    invoke-direct {v3, v6, v11}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v11, v1

    move-object v12, v2

    goto/16 :goto_0

    :cond_8
    const-string v1, "categorydic::"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lorg/antivirus/core/c/f;->d:Lorg/antivirus/core/c/f;

    sget-object v2, Lorg/antivirus/core/c/g;->b:Lorg/antivirus/core/c/g;

    if-ne v4, v2, :cond_9

    const-string v2, "DROP TABLE IF EXISTS categories"

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE IF NOT EXISTS categories (_id INTEGER PRIMARY KEY, cat_name TEXT);"

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    const/4 v2, 0x0

    move-object v11, v1

    move-object v12, v2

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v11, v1

    move-object v12, v2

    goto/16 :goto_0

    :cond_b
    if-eqz v11, :cond_0

    if-nez v12, :cond_1b

    sget-object v1, Lorg/antivirus/core/c/c;->b:[I

    invoke-virtual {v11}, Lorg/antivirus/core/c/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    move v10, v1

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "FULL"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    if-eqz v1, :cond_16

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_5
    new-instance v2, Lorg/antivirus/core/c/a;

    const-string v1, "secdb"

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v1}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-virtual {v2}, Lorg/antivirus/core/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_16

    move-result-object v3

    :try_start_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "DROP TABLE IF EXISTS classessig"

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS manifestsig"

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS settings"

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS categories"

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS mediasig"

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS spamsig"

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS bpacksig"

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "vacuum;"

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/antivirus/core/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_17

    if-eqz v3, :cond_c

    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c
    invoke-virtual {v2}, Lorg/antivirus/core/c/a;->close()V

    :cond_d
    :goto_1
    new-instance v2, Lorg/antivirus/core/c/a;

    const-string v1, "secdb"

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v1}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    invoke-virtual {v2}, Lorg/antivirus/core/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_11

    move-result-object v3

    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    sget-object v1, Lorg/antivirus/core/c/g;->a:Lorg/antivirus/core/c/g;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12

    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    :goto_2
    :try_start_b
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_f

    if-eqz v3, :cond_e

    :try_start_c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lorg/antivirus/core/c/a;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    :goto_3
    :try_start_d
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_0
    move-exception v1

    move-object v7, v4

    move-object v8, v5

    move-object v9, v6

    move-object v6, v3

    move-object v5, v2

    :goto_4
    if-eqz v6, :cond_f

    :try_start_e
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    :cond_f
    :goto_5
    if-eqz v5, :cond_10

    :try_start_f
    invoke-virtual {v5}, Lorg/antivirus/core/c/a;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    :cond_10
    :goto_6
    if-eqz v7, :cond_11

    :try_start_10
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    :cond_11
    :goto_7
    if-eqz v8, :cond_12

    :try_start_11
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    :cond_12
    :goto_8
    if-eqz v9, :cond_13

    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    :cond_13
    :goto_9
    :try_start_13
    throw v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    :catch_2
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    :goto_a
    return-void

    :catchall_1
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    :goto_b
    if-eqz v3, :cond_14

    :try_start_14
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_14
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lorg/antivirus/core/c/a;->close()V

    :cond_15
    throw v1

    :catchall_2
    move-exception v1

    goto :goto_4

    :cond_16
    const-string v1, "INC"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v2, Lorg/antivirus/core/c/a;

    const-string v1, "secdb"

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v1}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    :try_start_15
    invoke-virtual {v2}, Lorg/antivirus/core/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    move-result-object v3

    :try_start_16
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    sget-object v1, Lorg/antivirus/core/c/g;->b:Lorg/antivirus/core/c/g;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12

    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    goto/16 :goto_0

    :cond_17
    :try_start_17
    const-string v1, "NOCHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lorg/antivirus/core/c/g;->c:Lorg/antivirus/core/c/g;

    move v10, v1

    move-object v4, v2

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v2, "settings_value"

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v2, "settings_key"

    const-string v3, "version"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settings"

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v3, "settings_key=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "version"

    aput-object v15, v10, v14

    invoke-virtual {v6, v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "settings"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v6, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    :cond_19
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object v1, Lorg/antivirus/core/c/g;->b:Lorg/antivirus/core/c/g;

    if-ne v4, v1, :cond_1a

    const-string v1, "vacuum"

    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    const/4 v3, 0x0

    :try_start_18
    invoke-virtual {v5}, Lorg/antivirus/core/c/a;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_13

    const/4 v2, 0x0

    :try_start_19
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/antivirus/core/EngineSettings;->setSecDbVersion(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12

    const/4 v1, 0x1

    move v10, v1

    move-object v5, v2

    move-object v6, v3

    goto/16 :goto_0

    :pswitch_2
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v3, "_id"

    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v3, "cat_name"

    const/4 v13, 0x1

    aget-object v1, v1, v13

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "categories"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v6, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_1b
    if-eqz v4, :cond_0

    sget-object v1, Lorg/antivirus/core/c/c;->c:[I

    invoke-virtual {v4}, Lorg/antivirus/core/c/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    const/4 v1, 0x1

    move v10, v1

    goto/16 :goto_0

    :pswitch_3
    sget-object v1, Lorg/antivirus/core/c/d;->d:Lorg/antivirus/core/c/d;

    if-ne v12, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->h:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    :try_start_1b
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v2, "sha"

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    :try_start_1c
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->h:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1

    :try_start_1d
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v3, "cat"

    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v3, "sha"

    const/4 v13, 0x1

    aget-object v13, v1, v13

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lorg/antivirus/core/c/d;->a:Lorg/antivirus/core/c/d;

    if-eq v12, v2, :cond_1d

    sget-object v2, Lorg/antivirus/core/c/d;->b:Lorg/antivirus/core/c/d;

    if-ne v12, v2, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->h:Ljava/util/zip/Adler32;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/zip/Adler32;->update([B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v2, "adler"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/core/c/b;->h:Ljava/util/zip/Adler32;

    invoke-virtual {v3}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    :try_start_1e
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v1, Lorg/antivirus/core/c/d;->d:Lorg/antivirus/core/c/d;

    if-ne v12, v1, :cond_20

    sget-object v1, Lorg/antivirus/core/c/c;->a:[I

    invoke-virtual {v12}, Lorg/antivirus/core/c/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_5
    const-string v1, "spamsig"

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1

    :try_start_1f
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v2, "sha"

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v1

    :try_start_20
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1

    goto/16 :goto_0

    :cond_1f
    const/16 v2, 0x2d

    const/4 v3, 0x0

    :try_start_21
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    const-string v2, "sha=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v14

    invoke-virtual {v6, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5

    goto/16 :goto_0

    :cond_20
    :try_start_22
    sget-object v1, Lorg/antivirus/core/c/c;->a:[I

    invoke-virtual {v12}, Lorg/antivirus/core/c/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_6
    const-string v1, "manifestsig"

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->h:Ljava/util/zip/Adler32;

    invoke-virtual {v2}, Ljava/util/zip/Adler32;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1

    :try_start_23
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v14, 0x2

    if-lt v3, v14, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2b

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v3, v14, :cond_23

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v3, "cat"

    const/4 v13, 0x0

    aget-object v13, v2, v13

    invoke-virtual {v1, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v3, "sha"

    const/4 v13, 0x1

    aget-object v13, v2, v13

    invoke-virtual {v1, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/antivirus/core/c/d;->a:Lorg/antivirus/core/c/d;

    if-eq v12, v1, :cond_21

    sget-object v1, Lorg/antivirus/core/c/d;->b:Lorg/antivirus/core/c/d;

    if-ne v12, v1, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->h:Ljava/util/zip/Adler32;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/Adler32;->update([B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v2, "adler"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/core/c/b;->h:Ljava/util/zip/Adler32;

    invoke-virtual {v3}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->c:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    :try_start_24
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v1, "bpacksig"

    goto/16 :goto_c

    :pswitch_8
    const-string v1, "classessig"

    goto/16 :goto_c

    :pswitch_9
    const-string v1, "mediasig"
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1

    goto/16 :goto_c

    :cond_23
    const/16 v3, 0x2d

    const/4 v14, 0x0

    :try_start_25
    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v3, v13, :cond_0

    const-string v3, "sha=? and cat=?"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x1

    aget-object v15, v2, v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aget-object v2, v2, v15

    aput-object v2, v13, v14

    invoke-virtual {v6, v1, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_6

    goto/16 :goto_0

    :cond_24
    :try_start_26
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1

    const/4 v2, 0x0

    :try_start_27
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_14

    const/4 v3, 0x0

    :try_start_28
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_15

    if-eqz v6, :cond_25

    :try_start_29
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_7

    :cond_25
    :goto_d
    if-eqz v5, :cond_26

    :try_start_2a
    invoke-virtual {v5}, Lorg/antivirus/core/c/a;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_8

    :cond_26
    :goto_e
    :try_start_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_2

    goto/16 :goto_a

    :catch_7
    move-exception v1

    goto :goto_d

    :catch_8
    move-exception v1

    goto :goto_e

    :catch_9
    move-exception v2

    goto/16 :goto_5

    :catch_a
    move-exception v2

    goto/16 :goto_6

    :catch_b
    move-exception v2

    goto/16 :goto_7

    :catch_c
    move-exception v2

    goto/16 :goto_8

    :catch_d
    move-exception v2

    goto/16 :goto_9

    :catchall_3
    move-exception v1

    move-object v7, v4

    move-object v8, v5

    move-object v9, v6

    move-object v6, v3

    move-object v5, v2

    goto/16 :goto_4

    :catchall_4
    move-exception v1

    move-object v6, v3

    move-object v7, v4

    move-object v8, v5

    move-object v5, v2

    goto/16 :goto_4

    :catchall_5
    move-exception v1

    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    goto/16 :goto_4

    :catchall_6
    move-exception v1

    move-object v5, v2

    goto/16 :goto_4

    :catchall_7
    move-exception v1

    move-object v5, v2

    move-object v6, v3

    goto/16 :goto_4

    :catchall_8
    move-exception v1

    move-object v5, v2

    goto/16 :goto_4

    :catchall_9
    move-exception v1

    move-object v5, v2

    move-object v6, v3

    goto/16 :goto_4

    :catchall_a
    move-exception v1

    move-object v6, v3

    goto/16 :goto_4

    :catchall_b
    move-exception v1

    move-object v5, v2

    move-object v6, v3

    goto/16 :goto_4

    :catchall_c
    move-exception v1

    move-object v7, v2

    goto/16 :goto_4

    :catchall_d
    move-exception v1

    move-object v7, v2

    move-object v8, v3

    goto/16 :goto_4

    :catch_e
    move-exception v1

    goto/16 :goto_3

    :catch_f
    move-exception v1

    move-object v6, v9

    goto/16 :goto_3

    :catch_10
    move-exception v1

    move-object v5, v8

    move-object v6, v9

    goto/16 :goto_3

    :catch_11
    move-exception v1

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    goto/16 :goto_3

    :catch_12
    move-exception v1

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    goto/16 :goto_3

    :catch_13
    move-exception v1

    move-object v2, v5

    move-object v4, v7

    move-object v6, v9

    move-object v5, v8

    goto/16 :goto_3

    :catch_14
    move-exception v1

    move-object v3, v6

    move-object v4, v2

    move-object v2, v5

    move-object v6, v9

    move-object v5, v8

    goto/16 :goto_3

    :catch_15
    move-exception v1

    move-object v4, v2

    move-object v2, v5

    move-object v5, v3

    move-object v3, v6

    move-object v6, v9

    goto/16 :goto_3

    :catchall_e
    move-exception v1

    move-object v3, v4

    goto/16 :goto_b

    :catchall_f
    move-exception v1

    goto/16 :goto_b

    :catch_16
    move-exception v1

    move-object v3, v4

    goto/16 :goto_2

    :catch_17
    move-exception v1

    goto/16 :goto_2

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

    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/antivirus/core/c/b;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/antivirus/core/c/b;->a()V

    invoke-static {p1}, Lorg/antivirus/core/c/b;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/databases"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v3, "secdb"

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v4, v2

    move-object v2, v1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/antivirus/core/c/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    sget-object v0, Lorg/antivirus/core/c/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    const/16 v2, 0x400

    :try_start_2
    new-array v5, v2, [B

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_1
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    move-result v2

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-object v0, v1

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v0

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    move-object v3, v1

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_5
    :try_start_7
    new-instance v2, Lorg/antivirus/core/c/a;

    const-string v0, "secdb"

    invoke-direct {v2, p1, v0}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    invoke-virtual {v2}, Lorg/antivirus/core/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    move-result-object v1

    :try_start_9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "CREATE INDEX IF NOT EXISTS classessig_idx ON classessig(adler)"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS manifestsig_idx ON manifestsig(adler)"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    invoke-virtual {v2}, Lorg/antivirus/core/c/a;->close()V

    :cond_6
    :goto_6
    const/4 v0, 0x1

    :cond_7
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_7
    :try_start_a
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v3, :cond_8

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_8
    :goto_8
    if-eqz v2, :cond_4

    :try_start_c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v2, v1

    :goto_9
    if-eqz v2, :cond_9

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_9
    :goto_a
    if-eqz v3, :cond_a

    :try_start_e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :cond_a
    :goto_b
    throw v0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_a

    :catch_6
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v2, v1

    :goto_c
    :try_start_f
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_d
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lorg/antivirus/core/c/a;->close()V

    :cond_d
    throw v0

    :catch_8
    move-exception v2

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_d

    :catch_9
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_c

    :catch_a
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_c

    :catchall_4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    goto :goto_9

    :catch_b
    move-exception v2

    move-object v7, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_7

    :catch_c
    move-exception v0

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_7

    :catch_d
    move-exception v0

    goto/16 :goto_3
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Lorg/antivirus/core/c/b;->a()V

    invoke-static {p1}, Lorg/antivirus/core/c/b;->h(Landroid/content/Context;)Z

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/antivirus/core/c/a;

    const-string v0, "secdb"

    invoke-direct {v1, p1, v0}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "bpack"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lorg/antivirus/core/c/d;->c:Lorg/antivirus/core/c/d;

    invoke-direct {p0, v3, v0, v5}, Lorg/antivirus/core/c/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V

    :cond_0
    const-string v0, "media"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lorg/antivirus/core/c/d;->e:Lorg/antivirus/core/c/d;

    invoke-direct {p0, v3, v0, v5}, Lorg/antivirus/core/c/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V

    :cond_1
    const-string v0, "spam"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lorg/antivirus/core/c/d;->d:Lorg/antivirus/core/c/d;

    sget-object v6, Lorg/antivirus/core/c/c;->a:[I

    invoke-virtual {v5}, Lorg/antivirus/core/c/d;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_0
    const-string v0, "dex"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lorg/antivirus/core/c/d;->a:Lorg/antivirus/core/c/d;

    invoke-direct {p0, v3, v0, v4}, Lorg/antivirus/core/c/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V

    :cond_3
    const-string v0, "man"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lorg/antivirus/core/c/d;->b:Lorg/antivirus/core/c/d;

    invoke-direct {p0, v3, v0, v4}, Lorg/antivirus/core/c/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V

    :cond_4
    iget-object v0, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    const-string v0, "toVersion"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v5, "settings_value"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v4, "settings_key"

    const-string v5, "version"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings"

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v5, "settings_key=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "version"

    aput-object v8, v6, v7

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "settings"

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_5
    iget-object v0, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    :cond_6
    const-string v0, "categorydic"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    if-eqz v0, :cond_7

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-static {v0, v4, v3}, Lorg/antivirus/core/c/b;->a(Ljava/lang/Object;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "vacuum;"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    const-string v0, "toVersion"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lorg/antivirus/core/EngineSettings;

    invoke-direct {v1, p1}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setSecDbVersion(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_8
    :goto_1
    return-void

    :pswitch_0
    :try_start_5
    const-string v5, "spamsig"

    iget-object v6, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_2

    :try_start_6
    const-string v6, "\\|"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v0, v6

    if-lez v0, :cond_2

    array-length v7, v6

    move v0, v4

    :goto_2
    if-ge v0, v7, :cond_2

    aget-object v4, v6, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const/16 v8, 0x2b

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_a

    iget-object v8, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    const-string v9, "sha"

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v8, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v3, v5, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v4, p0, Lorg/antivirus/core/c/b;->e:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    const/16 v8, 0x2d

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_9

    const-string v8, "sha=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-virtual {v3, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_4
    :try_start_8
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_b

    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5
    if-eqz v3, :cond_c

    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lorg/antivirus/core/c/a;->close()V

    :cond_d
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-direct {p0, p1}, Lorg/antivirus/core/c/b;->f(Landroid/content/Context;)Ljava/lang/String;
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

.method public final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-direct {p0, p1}, Lorg/antivirus/core/c/b;->f(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final e(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 10

    const/4 v8, 0x0

    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->close()V

    :cond_0
    new-instance v0, Lorg/antivirus/core/c/a;

    const-string v1, "secdb"

    invoke-direct {v0, p1, v1}, Lorg/antivirus/core/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    iget-object v0, p0, Lorg/antivirus/core/c/b;->g:Lorg/antivirus/core/c/a;

    invoke-virtual {v0}, Lorg/antivirus/core/c/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

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
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;
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
    iput-object v0, p0, Lorg/antivirus/core/c/b;->f:Landroid/database/sqlite/SQLiteDatabase;
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
