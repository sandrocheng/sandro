.class public Lorg/antivirus/core/scanners/aa;
.super Lorg/antivirus/core/scanners/j;


# static fields
.field public static final g:Landroid/net/Uri;

.field public static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static j:Z


# instance fields
.field private k:Lorg/antivirus/core/scanners/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/antivirus/core/scanners/aa;->g:Landroid/net/Uri;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lorg/antivirus/core/scanners/aa;->h:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    sput-object v0, Lorg/antivirus/core/scanners/aa;->i:[Ljava/lang/String;

    sput-boolean v2, Lorg/antivirus/core/scanners/aa;->j:Z

    return-void
.end method

.method public constructor <init>(Lorg/antivirus/core/EngineSettings;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/antivirus/core/scanners/j;-><init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;Lorg/antivirus/core/scanners/l;)V

    new-instance v0, Lorg/antivirus/core/scanners/ScannerSmsResult;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerSmsResult;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/aa;->a:Lorg/antivirus/core/scanners/d;

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/ScannerSmsResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v1, 0x0

    iget-object v3, p2, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v0, "--Suspicious--"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "--Suspicious--"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_2
    const-string v0, "avgmobilation.com"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " avgmobilation.com"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lorg/antivirus/core/scanners/aa;->j:Z

    move v0, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p0, v6, v7, p3, p4}, Lorg/antivirus/core/scanners/aa;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z

    rem-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x2710

    cmp-long v0, v6, v8

    if-lez v0, :cond_5

    :cond_4
    sput-boolean v1, Lorg/antivirus/core/scanners/aa;->j:Z

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/ScannerSmsResult;->b()V

    invoke-virtual {p1, p0}, Lorg/antivirus/core/scanners/g;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    sget-object v1, Lorg/antivirus/core/scanners/aa;->g:Landroid/net/Uri;

    sget-object v2, Lorg/antivirus/core/scanners/aa;->i:[Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/antivirus/core/scanners/aa;->g:Landroid/net/Uri;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "body"

    invoke-virtual {v5, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "read"

    const-string v8, "1"

    invoke-virtual {v5, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_id = ?"

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_2
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/scanners/aa;->k:Lorg/antivirus/core/scanners/ab;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    const-string v0, "--Suspicious--"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "avgmobilation.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lorg/antivirus/core/scanners/aa;->k:Lorg/antivirus/core/scanners/ab;

    iget-object v1, v0, Lorg/antivirus/core/scanners/ab;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lorg/antivirus/core/scanners/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/core/scanners/aa;->k:Lorg/antivirus/core/scanners/ab;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    move v0, v3

    :goto_2
    if-nez v0, :cond_5

    if-ltz v1, :cond_5

    iget-object v0, p0, Lorg/antivirus/core/scanners/aa;->k:Lorg/antivirus/core/scanners/ab;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v3

    :cond_5
    iget-object v1, p0, Lorg/antivirus/core/scanners/aa;->k:Lorg/antivirus/core/scanners/ab;

    iget-object v4, v1, Lorg/antivirus/core/scanners/ab;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    iget-object v1, v1, Lorg/antivirus/core/scanners/ab;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v2

    :goto_3
    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    iget-object v1, p0, Lorg/antivirus/core/scanners/aa;->k:Lorg/antivirus/core/scanners/ab;

    iget-object v1, v1, Lorg/antivirus/core/scanners/ab;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v5, v1

    :goto_4
    if-nez v0, :cond_9

    if-ltz v5, :cond_9

    iget-object v0, p0, Lorg/antivirus/core/scanners/aa;->k:Lorg/antivirus/core/scanners/ab;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ab;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v4, v1

    move v1, v2

    :goto_5
    if-ltz v4, :cond_8

    if-eqz v1, :cond_8

    if-eqz v1, :cond_7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move v0, v1

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_0

    invoke-static {v6}, Lorg/antivirus/core/scanners/aa;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v6}, Lorg/antivirus/core/scanners/aa;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    move v3, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lorg/antivirus/core/scanners/aa;->j:Z

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "(?s).*http:\\/\\/\\w+\\.\\w+.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?s).*http:\\/\\/\\d+\\.\\d+\\.\\d+\\.\\d+.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?s).*www\\.\\w{3,}\\.[com|org|net].*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?s).*[a-zA-Z0-9\\-]{2,}\\.[a-zA-Z0-9\\-]{2,}\\/[a-zA-Z0-9\\_]{4,}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?s).*\\w+\\@\\w+\\.\\w{2,}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "(?s).*([0-9\\,\\:\\.]){5,}.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?s).*\\d+\\.\\d+.\\/mo*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/antivirus/core/scanners/aa;->a:Lorg/antivirus/core/scanners/d;

    move-object v6, v0

    check-cast v6, Lorg/antivirus/core/scanners/ScannerSmsResult;

    iget-object v0, v6, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    new-instance v0, Lorg/antivirus/core/c/b;

    invoke-direct {v0}, Lorg/antivirus/core/c/b;-><init>()V

    new-instance v1, Lorg/antivirus/core/scanners/ab;

    sget-object v2, Lorg/antivirus/core/c/d;->d:Lorg/antivirus/core/c/d;

    invoke-virtual {v0, p1, v2}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;Lorg/antivirus/core/c/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/antivirus/core/scanners/ab;-><init>(Lorg/antivirus/core/scanners/aa;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/antivirus/core/scanners/aa;->k:Lorg/antivirus/core/scanners/ab;

    invoke-virtual {v0}, Lorg/antivirus/core/c/b;->a()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/antivirus/core/scanners/aa;->g:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    const-string v0, "body"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v3, :cond_2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/antivirus/core/scanners/aa;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, v6, Lorg/antivirus/core/scanners/ScannerSmsResult;->a:Z

    iget-object v3, v6, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/antivirus/core/scanners/aa;->a:Lorg/antivirus/core/scanners/d;

    move-object v6, v0

    check-cast v6, Lorg/antivirus/core/scanners/ScannerSmsResult;

    iget-object v0, v6, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    new-instance v0, Lorg/antivirus/core/c/b;

    invoke-direct {v0}, Lorg/antivirus/core/c/b;-><init>()V

    new-instance v1, Lorg/antivirus/core/scanners/ab;

    sget-object v2, Lorg/antivirus/core/c/d;->d:Lorg/antivirus/core/c/d;

    invoke-virtual {v0, p1, v2}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;Lorg/antivirus/core/c/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/antivirus/core/scanners/ab;-><init>(Lorg/antivirus/core/scanners/aa;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/antivirus/core/scanners/aa;->k:Lorg/antivirus/core/scanners/ab;

    invoke-virtual {v0}, Lorg/antivirus/core/c/b;->a()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/antivirus/core/scanners/aa;->g:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MAX(date) AS date , _id, body"

    aput-object v4, v2, v3

    const-string v3, "read = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    const-string v0, "body"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v3, :cond_2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/antivirus/core/scanners/aa;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, v6, Lorg/antivirus/core/scanners/ScannerSmsResult;->a:Z

    iget-object v3, v6, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method
