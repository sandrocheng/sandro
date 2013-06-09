.class public Lorg/antivirus/core/scanners/s;
.super Lorg/antivirus/core/scanners/j;


# static fields
.field private static final j:[B

.field private static final k:[B

.field private static final l:[B

.field private static final m:I


# instance fields
.field private g:Lorg/antivirus/core/scanners/FileScannerJniWrapper;

.field private h:I

.field private i:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/antivirus/core/scanners/s;->j:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/antivirus/core/scanners/s;->k:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/antivirus/core/scanners/s;->l:[B

    sget-object v0, Lorg/antivirus/core/scanners/s;->j:[B

    array-length v0, v0

    sget-object v1, Lorg/antivirus/core/scanners/s;->k:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    sget-object v0, Lorg/antivirus/core/scanners/s;->j:[B

    array-length v0, v0

    :goto_0
    sput v0, Lorg/antivirus/core/scanners/s;->m:I

    return-void

    :cond_0
    sget-object v0, Lorg/antivirus/core/scanners/s;->k:[B

    array-length v0, v0

    goto :goto_0

    :array_0
    .array-data 0x1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data

    :array_1
    .array-data 0x1
        0x64t
        0x65t
        0x78t
        0xat
        0x30t
        0x33t
        0x35t
        0x0t
    .end array-data

    :array_2
    .array-data 0x1
        0x58t
        0x35t
        0x4ft
        0x21t
        0x50t
        0x25t
        0x40t
        0x41t
    .end array-data
.end method

.method protected constructor <init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;Lorg/antivirus/core/scanners/l;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lorg/antivirus/core/scanners/j;-><init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;Lorg/antivirus/core/scanners/l;)V

    new-instance v0, Lorg/antivirus/core/scanners/ScannerFilesResult;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerFilesResult;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/s;->a:Lorg/antivirus/core/scanners/d;

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/ScannerFilesConfig;->a()V

    :goto_0
    invoke-virtual {p1}, Lorg/antivirus/core/EngineSettings;->getIgnoreFiles()Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerFilesConfig;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    invoke-virtual {p1}, Lorg/antivirus/core/EngineSettings;->isPUPEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    :goto_1
    iput v1, v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;->g:I

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0x270f

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)I
    .locals 11

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v1, v2

    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v0, :cond_3

    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lorg/antivirus/core/scanners/s;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    array-length v8, v7

    move v3, v2

    :goto_2
    if-ge v3, v8, :cond_1

    aget-object v9, v7, v3

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    rem-int/lit16 v1, v0, 0x1f4

    if-nez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    const-wide/16 v9, 0x2710

    cmp-long v1, v7, v9

    if-lez v1, :cond_4

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v2, v0, 0x2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Lorg/antivirus/core/scanners/ScannerFilesResult;Ljava/lang/String;I)V
    .locals 15

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    return-void

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/antivirus/core/c/b;->a()V

    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v1, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v1, v1, Lorg/antivirus/core/scanners/ScannerFilesConfig;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lorg/antivirus/core/c/b;

    invoke-direct {v2}, Lorg/antivirus/core/c/b;-><init>()V

    :cond_3
    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->d:Landroid/os/Messenger;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    iget-object v1, v1, Lorg/antivirus/core/scanners/l;->a:Lorg/antivirus/core/scanners/m;

    sget-object v7, Lorg/antivirus/core/scanners/m;->a:Lorg/antivirus/core/scanners/m;

    if-eq v1, v7, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v7, 0x2

    iput v7, v1, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "filename"

    const-string v9, "preparing..."

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v7, p0, Lorg/antivirus/core/scanners/s;->d:Landroid/os/Messenger;

    invoke-virtual {v7, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    iget-object v1, v1, Lorg/antivirus/core/scanners/l;->a:Lorg/antivirus/core/scanners/m;

    sget-object v7, Lorg/antivirus/core/scanners/m;->a:Lorg/antivirus/core/scanners/m;

    if-eq v1, v7, :cond_11

    invoke-direct {p0, v6}, Lorg/antivirus/core/scanners/s;->a(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iget-object v3, p0, Lorg/antivirus/core/scanners/s;->d:Landroid/os/Messenger;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    iget-object v3, v3, Lorg/antivirus/core/scanners/l;->a:Lorg/antivirus/core/scanners/m;

    sget-object v7, Lorg/antivirus/core/scanners/m;->a:Lorg/antivirus/core/scanners/m;

    if-eq v3, v7, :cond_5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v7, 0x2

    iput v7, v3, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "filename"

    const-string v9, "starting scan"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_1
    iget-object v7, p0, Lorg/antivirus/core/scanners/s;->d:Landroid/os/Messenger;

    invoke-virtual {v7, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    array-length v8, v6

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_6

    aget-object v9, v6, v3

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-static {v3}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_6
    move v3, v4

    move v4, v5

    move v5, v1

    :cond_7
    :goto_4
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {v14}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v10}, Lorg/antivirus/core/scanners/s;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    array-length v7, v6

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v7, :cond_7

    aget-object v8, v6, v1

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v14, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_4

    :cond_9
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p4

    iget v1, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p4

    iput v1, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I

    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->d:Landroid/os/Messenger;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    iget-object v1, v1, Lorg/antivirus/core/scanners/l;->a:Lorg/antivirus/core/scanners/m;

    sget-object v6, Lorg/antivirus/core/scanners/m;->a:Lorg/antivirus/core/scanners/m;

    if-eq v1, v6, :cond_10

    if-nez v5, :cond_a

    const/4 v5, 0x1

    :cond_a
    move-object/from16 v0, p4

    iget v1, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I

    mul-int/lit8 v1, v1, 0x64

    mul-int/lit8 v1, v1, 0x2

    div-int v11, v1, v5

    if-lt v3, v11, :cond_b

    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    iget-object v1, v1, Lorg/antivirus/core/scanners/l;->a:Lorg/antivirus/core/scanners/m;

    sget-object v4, Lorg/antivirus/core/scanners/m;->c:Lorg/antivirus/core/scanners/m;

    if-ne v1, v4, :cond_f

    :cond_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v1, 0x2

    iput v1, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "percent"

    div-int/lit8 v1, v11, 0x2

    const/16 v7, 0x63

    if-le v1, v7, :cond_c

    const/16 v1, 0x63

    :goto_6
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "file-name"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "threat"

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_2
    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->d:Landroid/os/Messenger;

    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v12, v11

    move v13, v5

    :goto_7
    new-instance v5, Lorg/antivirus/core/scanners/t;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lorg/antivirus/core/scanners/t;-><init>(B)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lorg/antivirus/core/scanners/s;->a(Landroid/content/Context;Lorg/antivirus/core/c/b;Ljava/lang/String;Ljava/util/ArrayList;Lorg/antivirus/core/scanners/t;I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v5, Lorg/antivirus/core/scanners/t;->a:Ljava/lang/String;

    iget-object v6, v5, Lorg/antivirus/core/scanners/t;->b:Ljava/lang/String;

    iget-object v7, v5, Lorg/antivirus/core/scanners/t;->c:Ljava/lang/String;

    sget-object v8, Lorg/antivirus/core/scanners/f;->a:Lorg/antivirus/core/scanners/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v5, Lorg/antivirus/core/scanners/t;->d:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p4

    move-object v5, v1

    invoke-virtual/range {v3 .. v9}, Lorg/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/antivirus/core/scanners/f;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->d:Landroid/os/Messenger;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    iget-object v1, v1, Lorg/antivirus/core/scanners/l;->a:Lorg/antivirus/core/scanners/m;

    sget-object v3, Lorg/antivirus/core/scanners/m;->a:Lorg/antivirus/core/scanners/m;

    if-eq v1, v3, :cond_e

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v1, 0x2

    iput v1, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "percent"

    div-int/lit8 v1, v12, 0x2

    const/16 v6, 0x63

    if-le v1, v6, :cond_d

    const/16 v1, 0x63

    :goto_8
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "file-name"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "threat"

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_3
    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->d:Landroid/os/Messenger;

    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v3, v11

    move v4, v12

    move v5, v13

    goto/16 :goto_4

    :cond_c
    div-int/lit8 v1, v11, 0x2

    goto/16 :goto_6

    :catch_2
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move v12, v11

    move v13, v5

    goto/16 :goto_7

    :cond_d
    div-int/lit8 v1, v12, 0x2

    goto :goto_8

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    :cond_e
    move v3, v11

    move v4, v12

    move v5, v13

    goto/16 :goto_4

    :cond_f
    move v12, v11

    move v13, v5

    move v11, v3

    goto/16 :goto_7

    :cond_10
    move v11, v3

    move v12, v4

    move v13, v5

    goto/16 :goto_7

    :cond_11
    move v1, v3

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/ScannerFilesResult;)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    :cond_0
    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :cond_1
    :goto_0
    return-void

    :goto_1
    iget-object v0, p2, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p2, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz p1, :cond_3

    iget-object v3, p1, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v3, :cond_3

    iget-object v1, p1, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Lorg/antivirus/core/scanners/g;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lorg/antivirus/core/c/b;Lorg/antivirus/core/scanners/t;I)Z
    .locals 11

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget v4, Lorg/antivirus/core/scanners/s;->m:I

    new-array v9, v4, [B

    const/4 v4, 0x0

    sget v5, Lorg/antivirus/core/scanners/s;->m:I

    invoke-virtual {v0, v9, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move v7, v2

    move v0, v1

    move v4, v1

    move v6, v1

    :goto_1
    if-nez v6, :cond_2

    if-eqz v4, :cond_9

    :cond_2
    :try_start_2
    sget v5, Lorg/antivirus/core/scanners/s;->m:I

    if-ge v7, v5, :cond_9

    sget-object v5, Lorg/antivirus/core/scanners/s;->k:[B

    array-length v5, v5

    if-ge v7, v5, :cond_6

    if-eqz v6, :cond_5

    aget-byte v5, v9, v7

    sget-object v6, Lorg/antivirus/core/scanners/s;->k:[B

    aget-byte v6, v6, v7

    if-ne v5, v6, :cond_5

    move v5, v1

    :goto_2
    sget-object v6, Lorg/antivirus/core/scanners/s;->j:[B

    array-length v6, v6

    if-ge v7, v6, :cond_3

    if-eqz v4, :cond_7

    aget-byte v4, v9, v7

    sget-object v6, Lorg/antivirus/core/scanners/s;->j:[B

    aget-byte v6, v6, v7

    if-ne v4, v6, :cond_7

    move v4, v1

    :cond_3
    :goto_3
    sget-object v6, Lorg/antivirus/core/scanners/s;->l:[B

    array-length v6, v6

    if-ge v7, v6, :cond_4

    if-eqz v0, :cond_8

    aget-byte v0, v9, v7

    sget-object v6, Lorg/antivirus/core/scanners/s;->l:[B

    aget-byte v6, v6, v7

    if-ne v0, v6, :cond_8

    move v0, v1

    :cond_4
    :goto_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    goto :goto_1

    :cond_5
    move v5, v2

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_2

    :cond_7
    move v4, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    if-eqz v4, :cond_17

    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, v8}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v4, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v4}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v1, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lorg/a/a/a/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/licensing/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-static {v7}, Lorg/a/a/a/a/b;->a([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p3, Lorg/antivirus/core/scanners/t;->b:Ljava/lang/String;

    move-object v5, v4

    :goto_5
    const-string v4, "classes.dex"

    invoke-virtual {v1, v4}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v1, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lorg/a/a/a/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/vending/licensing/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-static {v9}, Lorg/a/a/a/a/b;->a([B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p3, Lorg/antivirus/core/scanners/t;->a:Ljava/lang/String;

    :goto_6
    if-eqz v5, :cond_a

    sget-object v7, Lorg/antivirus/core/c/d;->b:Lorg/antivirus/core/c/d;

    invoke-virtual {p2, p0, v7, v5, p4}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;

    move-result-object v5

    iget-boolean v2, v5, Lorg/antivirus/core/c/e;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v2, :cond_a

    :try_start_4
    iget-object v7, p3, Lorg/antivirus/core/scanners/t;->b:Ljava/lang/String;

    iput-object v7, p3, Lorg/antivirus/core/scanners/t;->c:Ljava/lang/String;

    iget v5, v5, Lorg/antivirus/core/c/e;->b:I

    iput v5, p3, Lorg/antivirus/core/scanners/t;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    :cond_a
    if-eqz v4, :cond_b

    if-nez v2, :cond_b

    :try_start_5
    sget-object v5, Lorg/antivirus/core/c/d;->a:Lorg/antivirus/core/c/d;

    invoke-virtual {p2, p0, v5, v4, p4}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;

    move-result-object v4

    iget-boolean v2, v4, Lorg/antivirus/core/c/e;->c:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    if-eqz v2, :cond_b

    :try_start_6
    iget-object v5, p3, Lorg/antivirus/core/scanners/t;->a:Ljava/lang/String;

    iput-object v5, p3, Lorg/antivirus/core/scanners/t;->c:Ljava/lang/String;

    iget v4, v4, Lorg/antivirus/core/c/e;->b:I

    iput v4, p3, Lorg/antivirus/core/scanners/t;->d:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    :cond_b
    :goto_7
    if-nez v6, :cond_c

    if-eqz v0, :cond_14

    :cond_c
    :try_start_7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :try_start_8
    invoke-static {v0}, Lorg/a/a/a/b/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lorg/antivirus/core/scanners/t;->a:Ljava/lang/String;

    if-eqz v3, :cond_13

    sget-object v4, Lorg/antivirus/core/c/d;->a:Lorg/antivirus/core/c/d;

    invoke-virtual {p2, p0, v4, v3, p4}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;

    move-result-object v3

    iget-boolean v4, v3, Lorg/antivirus/core/c/e;->c:Z

    if-eqz v4, :cond_13

    if-eqz v2, :cond_f

    iget v4, v3, Lorg/antivirus/core/c/e;->b:I

    iget v5, p3, Lorg/antivirus/core/scanners/t;->d:I

    if-ge v4, v5, :cond_13

    iget-object v4, p3, Lorg/antivirus/core/scanners/t;->a:Ljava/lang/String;

    iput-object v4, p3, Lorg/antivirus/core/scanners/t;->c:Ljava/lang/String;

    iget v3, v3, Lorg/antivirus/core/c/e;->b:I

    iput v3, p3, Lorg/antivirus/core/scanners/t;->d:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    move-object v3, v0

    move v0, v2

    :goto_8
    if-eqz v1, :cond_d

    :try_start_9
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_d
    :goto_9
    if-eqz v3, :cond_e

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_e
    :goto_a
    move v2, v0

    goto/16 :goto_0

    :cond_f
    :try_start_b
    iget-boolean v2, v3, Lorg/antivirus/core/c/e;->c:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    :try_start_c
    iget-object v4, p3, Lorg/antivirus/core/scanners/t;->a:Ljava/lang/String;

    iput-object v4, p3, Lorg/antivirus/core/scanners/t;->c:Ljava/lang/String;

    iget v3, v3, Lorg/antivirus/core/c/e;->b:I

    iput v3, p3, Lorg/antivirus/core/scanners/t;->d:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    move-object v3, v0

    move v0, v2

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v1, v3

    move v0, v2

    :goto_b
    if-eqz v3, :cond_10

    :try_start_d
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_10
    :goto_c
    if-eqz v1, :cond_e

    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_d
    if-eqz v1, :cond_11

    :try_start_f
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_11
    :goto_e
    if-eqz v3, :cond_12

    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    :cond_12
    :goto_f
    throw v0

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v2

    goto :goto_c

    :catch_5
    move-exception v1

    goto :goto_e

    :catch_6
    move-exception v1

    goto :goto_f

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v10

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_d

    :catchall_3
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_d

    :catch_7
    move-exception v1

    move-object v1, v0

    move v0, v2

    goto :goto_b

    :catch_8
    move-exception v0

    move v0, v2

    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    goto :goto_b

    :catch_9
    move-exception v0

    move v0, v2

    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    goto :goto_b

    :catch_a
    move-exception v3

    move-object v3, v1

    move-object v1, v0

    move v0, v2

    goto :goto_b

    :catch_b
    move-exception v3

    move-object v3, v1

    move-object v1, v0

    move v0, v2

    goto :goto_b

    :cond_13
    move-object v3, v0

    move v0, v2

    goto :goto_8

    :cond_14
    move v0, v2

    goto :goto_8

    :cond_15
    move-object v4, v3

    goto/16 :goto_6

    :cond_16
    move-object v5, v3

    goto/16 :goto_5

    :cond_17
    move-object v1, v3

    goto/16 :goto_7
.end method

.method private static a(Landroid/content/Context;Lorg/antivirus/core/c/b;Ljava/lang/String;Ljava/util/ArrayList;Lorg/antivirus/core/scanners/t;I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0, p2, p1, p4, p5}, Lorg/antivirus/core/scanners/s;->a(Landroid/content/Context;Ljava/lang/String;Lorg/antivirus/core/c/b;Lorg/antivirus/core/scanners/t;I)Z

    move-result v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/c/e;

    iget-object v0, v0, Lorg/antivirus/core/c/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p4, Lorg/antivirus/core/scanners/t;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/c/e;

    iget-object v0, v0, Lorg/antivirus/core/c/e;->a:Ljava/lang/String;

    iput-object v0, p4, Lorg/antivirus/core/scanners/t;->c:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/c/e;

    iget v0, v0, Lorg/antivirus/core/c/e;->b:I

    iput v0, p4, Lorg/antivirus/core/scanners/t;->d:I

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null file"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-super {p0}, Lorg/antivirus/core/scanners/j;->a()V

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->g:Lorg/antivirus/core/scanners/FileScannerJniWrapper;

    iget v1, p0, Lorg/antivirus/core/scanners/s;->h:I

    invoke-virtual {v0, v1}, Lorg/antivirus/core/scanners/FileScannerJniWrapper;->cancel(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->a:Lorg/antivirus/core/scanners/d;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesResult;

    new-instance v2, Lorg/antivirus/core/c/b;

    invoke-direct {v2}, Lorg/antivirus/core/c/b;-><init>()V

    sget-object v3, Lorg/antivirus/core/c/d;->e:Lorg/antivirus/core/c/d;

    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v1, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    iget v1, v1, Lorg/antivirus/core/scanners/ScannerFilesConfig;->g:I

    invoke-virtual {v2, p1, v3, v1}, Lorg/antivirus/core/c/b;->a(Landroid/content/Context;Lorg/antivirus/core/c/d;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/antivirus/core/scanners/s;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Lorg/antivirus/core/c/b;->e(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->d:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lorg/antivirus/core/c/b;->a()V

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->g:Lorg/antivirus/core/scanners/FileScannerJniWrapper;

    iget v2, p0, Lorg/antivirus/core/scanners/s;->h:I

    invoke-virtual {v1, v2, v0}, Lorg/antivirus/core/scanners/FileScannerJniWrapper;->scan(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_7

    :cond_2
    const-string v0, "/data/app"

    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->g:Lorg/antivirus/core/scanners/FileScannerJniWrapper;

    iget v2, p0, Lorg/antivirus/core/scanners/s;->h:I

    invoke-virtual {v1, v2, v0}, Lorg/antivirus/core/scanners/FileScannerJniWrapper;->scan(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    array-length v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->a:Lorg/antivirus/core/scanners/d;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/antivirus/core/scanners/d;->a:Z

    :cond_3
    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->a:Lorg/antivirus/core/scanners/d;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesResult;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->a:Lorg/antivirus/core/scanners/d;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v1, p0, Lorg/antivirus/core/scanners/s;->g:Lorg/antivirus/core/scanners/FileScannerJniWrapper;

    iget v2, p0, Lorg/antivirus/core/scanners/s;->h:I

    invoke-virtual {v1, v2}, Lorg/antivirus/core/scanners/FileScannerJniWrapper;->getFileCount(I)I

    move-result v1

    iput v1, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    :try_start_3
    iget-boolean v0, p0, Lorg/antivirus/core/scanners/j;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v5, ""

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->b:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getIgnoreFiles()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :try_start_4
    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v2, v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    :goto_2
    iget-object v3, p0, Lorg/antivirus/core/scanners/s;->i:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/antivirus/core/scanners/s;->a:Lorg/antivirus/core/scanners/d;

    check-cast v4, Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    iget v0, v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;->f:I

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    iget v6, v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;->g:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/antivirus/core/scanners/s;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Lorg/antivirus/core/scanners/ScannerFilesResult;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :cond_6
    :try_start_6
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public final a(Landroid/os/Messenger;Lorg/antivirus/core/scanners/m;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/antivirus/core/scanners/j;->a(Landroid/os/Messenger;Lorg/antivirus/core/scanners/m;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->c:Lorg/antivirus/core/scanners/l;

    check-cast v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerFilesConfig;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/scanners/s;->g:Lorg/antivirus/core/scanners/FileScannerJniWrapper;

    iget v1, p0, Lorg/antivirus/core/scanners/s;->h:I

    invoke-virtual {v0, v1}, Lorg/antivirus/core/scanners/FileScannerJniWrapper;->destroy(I)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
