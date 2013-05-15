.class public Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;
.super Ljava/lang/Object;
.source "GlobalActivityLogHelper.java"


# static fields
.field private static a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

.field private static b:J


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/res/Resources;

.field private e:Landroid/content/ContentResolver;

.field private f:Lcom/avast/android/mobilesecurity/t;

.field private g:Ljava/io/File;

.field private h:Ljava/io/File;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->c:Landroid/content/Context;

    .line 138
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->d:Landroid/content/res/Resources;

    .line 139
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->f:Lcom/avast/android/mobilesecurity/t;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e:Landroid/content/ContentResolver;

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 143
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->g:Ljava/io/File;

    .line 149
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->g:Ljava/io/File;

    const-string v2, "avast-log.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->h:Ljava/io/File;

    .line 151
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->c()V

    .line 152
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->f:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->d()Z

    .line 155
    :cond_0
    return-void

    .line 145
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Android/data/com.avast.android.mobilesecurity/log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->g:Ljava/io/File;

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;)Landroid/net/Uri;
    .locals 5
    .parameter

    .prologue
    .line 264
    const-string v0, "GlobalActivityLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing log line to DB, date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 266
    const-string v1, "date"

    iget-wide v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    const-string v1, "type"

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    const-string v1, "text_primary"

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    const-string v1, "text_secondary"

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_1
    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    const-string v1, "text_tertiary"

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_2
    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->g:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 279
    const-string v1, "number_primary"

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->g:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    :cond_3
    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->h:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 282
    const-string v1, "number_secondary"

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    :cond_4
    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->h:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 285
    const-string v1, "number_secondary"

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    :cond_5
    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->i:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 288
    const-string v1, "number_tertiary"

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->i:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    :cond_6
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e:Landroid/content/ContentResolver;

    if-nez v1, :cond_7

    .line 292
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e:Landroid/content/ContentResolver;

    .line 294
    :cond_7
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/avast/android/mobilesecurity/m;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    sget-wide v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->b:J

    .line 298
    const-string v1, "GlobalActivityLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lines in db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit p0

    .line 301
    return-object v0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;
    .locals 2
    .parameter

    .prologue
    .line 120
    sget-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    if-nez v0, :cond_1

    .line 121
    const-class v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    monitor-enter v1

    .line 122
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    .line 125
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;)Lcom/avast/android/mobilesecurity/t;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->f:Lcom/avast/android/mobilesecurity/t;

    return-object v0
.end method

.method private a(J)V
    .locals 13
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 341
    const-string v0, "GlobalActivityLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping lines to file, from id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/avast/android/mobilesecurity/m;->a()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_id >= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 348
    const-string v2, "date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 349
    const-string v3, "type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 350
    const-string v4, "text_primary"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 351
    const-string v5, "text_secondary"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 353
    const-string v6, "text_tertiary"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 354
    const-string v7, "number_primary"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 356
    const-string v8, "number_secondary"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 358
    const-string v9, "number_tertiary"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 362
    :cond_0
    new-instance v10, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;-><init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/v;)V

    .line 363
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->a:J

    .line 364
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->b:J

    .line 365
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a(I)Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    move-result-object v11

    iput-object v11, v10, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 366
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->d:Ljava/lang/String;

    .line 367
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->e:Ljava/lang/String;

    .line 368
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->f:Ljava/lang/String;

    .line 369
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->g:Ljava/lang/Long;

    .line 370
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->h:Ljava/lang/Long;

    .line 371
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->i:Ljava/lang/Long;

    .line 372
    invoke-direct {p0, v10}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->c(Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;)V

    .line 373
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    .line 376
    :cond_1
    if-eqz v1, :cond_2

    .line 377
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_2
    return-void

    .line 376
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 377
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->g()I

    move-result v0

    return v0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->b(Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b(Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;)Z
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    const/4 v0, 0x0

    .line 313
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 331
    :goto_0
    monitor-exit p0

    return v0

    .line 317
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->f:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aV()J

    move-result-wide v0

    .line 319
    iget-wide v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->a:J

    sub-long/2addr v2, v0

    .line 320
    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 321
    add-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(J)V

    .line 326
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 323
    :cond_1
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->c(Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 328
    :cond_2
    :try_start_2
    const-string v1, "GlobalActivityLogHelper"

    const-string v2, "Log line could not be written to the log file, because the storage is not writable."

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/avast/android/mobilesecurity/m;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->b:J

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->b:J

    goto :goto_0
.end method

.method private c(Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;)V
    .locals 9
    .parameter

    .prologue
    .line 389
    const-string v0, "GlobalActivityLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing log line to file, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    iget-wide v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->a:J

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 395
    iget-wide v1, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->b:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 396
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->d:Landroid/content/res/Resources;

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->f:Ljava/lang/String;

    iget-object v5, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->g:Ljava/lang/Long;

    iget-object v6, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->h:Ljava/lang/Long;

    iget-object v7, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->i:Ljava/lang/Long;

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->h:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 405
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 408
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 411
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->f:Lcom/avast/android/mobilesecurity/t;

    iget-wide v1, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->h(J)V

    .line 415
    return-void

    .line 407
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 408
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    throw v0

    .line 413
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "External storage not writable."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->h:Ljava/io/File;

    return-object v0
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "GlobalActivityLogHelper"

    const-string v2, "Creating log dir."

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    :goto_0
    return v0

    .line 186
    :cond_0
    const-string v1, "GlobalActivityLogHelper"

    const-string v2, "Storage not writable."

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 191
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    :try_start_0
    const-string v1, "GlobalActivityLogHelper"

    const-string v2, "Creating log file."

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 199
    :cond_2
    const-string v1, "GlobalActivityLogHelper"

    const-string v2, "Storage not writable."

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_3
    const-string v1, "GlobalActivityLogHelper"

    const-string v2, "Storage not readable."

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_4
    const-string v0, "GlobalActivityLogHelper"

    const-string v1, "Log file exists."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 424
    const-string v0, "GlobalActivityLogHelper"

    const-string v1, "Deleting old lines from db."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/avast/android/mobilesecurity/m;->a()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 427
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 429
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    .line 430
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 433
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v4, 0x64

    if-lt v0, v4, :cond_0

    .line 434
    const/16 v0, 0x63

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 439
    :goto_0
    if-eqz v0, :cond_1

    .line 440
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 441
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->e:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/avast/android/mobilesecurity/m;->a()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id >= ? AND _id <= ?"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 443
    const-string v1, "GlobalActivityLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted lines: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    monitor-enter p0

    .line 445
    :try_start_0
    sget-wide v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->b:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->b:J

    .line 446
    const-string v1, "GlobalActivityLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lines in db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :goto_1
    return v0

    .line 436
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 450
    :cond_1
    const-string v0, "GlobalActivityLogHelper"

    const-string v1, "Cursor could not be moved to the last position."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v6

    .line 453
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 460
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/v;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/v;-><init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method public a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 242
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;

    invoke-direct {v0, v5}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;-><init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/v;)V

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->b:J

    .line 244
    iput-object p1, v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 245
    iput-object p2, v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->d:Ljava/lang/String;

    .line 246
    iput-object p3, v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->e:Ljava/lang/String;

    .line 247
    iput-object p4, v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->f:Ljava/lang/String;

    .line 248
    iput-object p5, v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->g:Ljava/lang/Long;

    .line 249
    iput-object p6, v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->h:Ljava/lang/Long;

    .line 250
    iput-object p7, v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->i:Ljava/lang/Long;

    .line 252
    const-string v1, "GlobalActivityLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting log line, date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/x;

    invoke-direct {v1, p0, v5}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/x;-><init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;Lcom/avast/android/mobilesecurity/app/globalactivitylog/v;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/x;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    return-void
.end method
