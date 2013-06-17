.class public Lcom/antivirus/core/scanners/v;
.super Lcom/antivirus/core/scanners/k;


# static fields
.field private static final j:[B

.field private static final k:[B

.field private static final l:[B

.field private static final m:I


# instance fields
.field private f:Lcom/antivirus/core/scanners/FileScannerJniWrapper;

.field private g:I

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/antivirus/core/scanners/v;->j:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/antivirus/core/scanners/v;->k:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/antivirus/core/scanners/v;->l:[B

    sget-object v0, Lcom/antivirus/core/scanners/v;->j:[B

    array-length v0, v0

    sget-object v1, Lcom/antivirus/core/scanners/v;->k:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/antivirus/core/scanners/v;->j:[B

    array-length v0, v0

    :goto_0
    sput v0, Lcom/antivirus/core/scanners/v;->m:I

    return-void

    :cond_0
    sget-object v0, Lcom/antivirus/core/scanners/v;->k:[B

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

.method protected constructor <init>(Lcom/antivirus/core/b;Landroid/os/Handler;Landroid/os/Messenger;Lcom/antivirus/core/scanners/m;)V
    .locals 3

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/antivirus/core/scanners/k;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;Lcom/antivirus/core/scanners/m;Landroid/os/Messenger;)V

    new-instance v0, Lcom/antivirus/core/scanners/ScannerFilesResult;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/ScannerFilesResult;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/scanners/v;->a:Lcom/antivirus/core/scanners/e;

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/ScannerFilesConfig;->a()V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    invoke-virtual {p1}, Lcom/antivirus/core/b;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x1869f

    :goto_1
    iput v1, v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;->g:I

    invoke-virtual {p1}, Lcom/antivirus/core/b;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/ScannerFilesConfig;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

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

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/v;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/antivirus/core/scanners/v;->b(Ljava/io/File;)Z

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

.method private a(Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, ""

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->b:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, ""

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v2, v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    :goto_1
    iget-object v3, p0, Lcom/antivirus/core/scanners/v;->h:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/antivirus/core/scanners/v;->a:Lcom/antivirus/core/scanners/e;

    check-cast v4, Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    iget v6, v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;->f:I

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    iget v7, v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;->g:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/antivirus/core/scanners/v;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Lcom/antivirus/core/scanners/ScannerFilesResult;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/ScannerFilesResult;)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    :cond_0
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :cond_1
    :goto_0
    return-void

    :goto_1
    iget-object v0, p2, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p2, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/antivirus/core/scanners/v;->a(Ljava/io/File;)V

    if-eqz p1, :cond_3

    iget-object v3, p1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v3, :cond_3

    iget-object v1, p1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v1, v0}, Lcom/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Lcom/antivirus/core/scanners/h;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/antivirus/core/scanners/ScannerFilesResult;Ljava/lang/String;II)V
    .locals 24

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v2, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v8, v2, Lcom/antivirus/core/scanners/ScannerFilesConfig;->d:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v4, Lcom/antivirus/core/e/b;

    invoke-direct {v4}, Lcom/antivirus/core/e/b;-><init>()V

    :try_start_0
    sget-object v8, Lcom/antivirus/core/e/d;->c:Lcom/antivirus/core/e/d;

    iget v9, v2, Lcom/antivirus/core/scanners/ScannerFilesConfig;->g:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;Lcom/antivirus/core/e/d;I)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/antivirus/core/scanners/v;->i:Ljava/util/ArrayList;

    sget-object v8, Lcom/antivirus/core/e/d;->f:Lcom/antivirus/core/e/d;

    iget v2, v2, Lcom/antivirus/core/scanners/ScannerFilesConfig;->g:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v2}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;Lcom/antivirus/core/e/d;I)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v9, Lcom/antivirus/core/scanners/t;

    invoke-direct {v9, v2}, Lcom/antivirus/core/scanners/t;-><init>(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/v;->d:Landroid/os/Messenger;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    iget-object v2, v2, Lcom/antivirus/core/scanners/m;->a:Lcom/antivirus/core/scanners/n;

    sget-object v3, Lcom/antivirus/core/scanners/n;->a:Lcom/antivirus/core/scanners/n;

    if-eq v2, v3, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "filename"

    const-string v10, "preparing..."

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/v;->d:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    iget-object v2, v2, Lcom/antivirus/core/scanners/m;->a:Lcom/antivirus/core/scanners/n;

    sget-object v3, Lcom/antivirus/core/scanners/n;->a:Lcom/antivirus/core/scanners/n;

    if-eq v2, v3, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/antivirus/core/scanners/v;->a(Ljava/lang/String;)I

    move-result v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/v;->d:Landroid/os/Messenger;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    iget-object v3, v3, Lcom/antivirus/core/scanners/m;->a:Lcom/antivirus/core/scanners/n;

    sget-object v5, Lcom/antivirus/core/scanners/n;->a:Lcom/antivirus/core/scanners/n;

    if-eq v3, v5, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v5, 0x2

    iput v5, v3, Landroid/os/Message;->what:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v8, "filename"

    const-string v10, "starting scan"

    invoke-virtual {v5, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/antivirus/core/scanners/v;->d:Landroid/os/Messenger;

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_4
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    array-length v10, v8

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v10, :cond_5

    aget-object v11, v8, v3

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    :cond_4
    move-object v9, v3

    goto/16 :goto_1

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v3

    invoke-static {v3}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_5
    move v3, v6

    move v5, v7

    move v6, v2

    :cond_6
    :goto_6
    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/antivirus/core/scanners/v;->b()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/antivirus/core/scanners/v;->b(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    array-length v8, v7

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v8, :cond_6

    aget-object v10, v7, v2

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v11, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v3, v6

    move v5, v7

    move v6, v2

    goto :goto_6

    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p4

    iget v2, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->b:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p4

    iput v2, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/v;->d:Landroid/os/Messenger;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    iget-object v2, v2, Lcom/antivirus/core/scanners/m;->a:Lcom/antivirus/core/scanners/n;

    sget-object v7, Lcom/antivirus/core/scanners/n;->a:Lcom/antivirus/core/scanners/n;

    if-eq v2, v7, :cond_10

    if-nez v6, :cond_9

    const/4 v6, 0x1

    :cond_9
    move-object/from16 v0, p4

    iget v2, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->b:I

    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v2, v2, 0x2

    div-int v20, v2, v6

    move/from16 v0, v20

    if-lt v3, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    iget-object v2, v2, Lcom/antivirus/core/scanners/m;->a:Lcom/antivirus/core/scanners/n;

    sget-object v5, Lcom/antivirus/core/scanners/n;->c:Lcom/antivirus/core/scanners/n;

    if-ne v2, v5, :cond_f

    :cond_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v2, 0x2

    iput v2, v3, Landroid/os/Message;->what:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "percent"

    div-int/lit8 v2, v20, 0x2

    const/16 v8, 0x63

    if-le v2, v8, :cond_c

    const/16 v2, 0x63

    :goto_8
    invoke-virtual {v5, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "file-name"

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "threat"

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/v;->d:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v21, v20

    move/from16 v22, v6

    :goto_9
    new-instance v7, Lcom/antivirus/core/scanners/w;

    invoke-direct {v7}, Lcom/antivirus/core/scanners/w;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Lcom/antivirus/core/scanners/v;->a(Landroid/content/Context;Lcom/antivirus/core/e/b;Ljava/lang/String;Ljava/util/ArrayList;Lcom/antivirus/core/scanners/w;ILcom/antivirus/core/scanners/t;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v7, Lcom/antivirus/core/scanners/w;->a:Ljava/lang/String;

    iget-object v13, v7, Lcom/antivirus/core/scanners/w;->b:Ljava/lang/String;

    iget-object v14, v7, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    sget-object v15, Lcom/antivirus/core/scanners/g;->a:Lcom/antivirus/core/scanners/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v7, Lcom/antivirus/core/scanners/w;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v7, Lcom/antivirus/core/scanners/w;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v7, Lcom/antivirus/core/scanners/w;->f:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v10, p4

    invoke-virtual/range {v10 .. v18}, Lcom/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/core/scanners/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/v;->d:Landroid/os/Messenger;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    iget-object v2, v2, Lcom/antivirus/core/scanners/m;->a:Lcom/antivirus/core/scanners/n;

    sget-object v3, Lcom/antivirus/core/scanners/n;->a:Lcom/antivirus/core/scanners/n;

    if-eq v2, v3, :cond_b

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v2, 0x2

    iput v2, v3, Landroid/os/Message;->what:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "percent"

    div-int/lit8 v2, v21, 0x2

    const/16 v7, 0x63

    if-le v2, v7, :cond_d

    const/16 v2, 0x63

    :goto_a
    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "file-name"

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "threat"

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/scanners/v;->d:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_b
    :goto_b
    move/from16 v3, v20

    move/from16 v5, v21

    move/from16 v6, v22

    goto/16 :goto_6

    :cond_c
    div-int/lit8 v2, v20, 0x2

    goto/16 :goto_8

    :catch_3
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move/from16 v21, v20

    move/from16 v22, v6

    goto/16 :goto_9

    :cond_d
    div-int/lit8 v2, v21, 0x2

    goto :goto_a

    :catch_4
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_b

    :cond_e
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/antivirus/core/e/b;->a()V

    goto/16 :goto_0

    :cond_f
    move/from16 v21, v20

    move/from16 v22, v6

    move/from16 v20, v3

    goto/16 :goto_9

    :cond_10
    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v22, v6

    goto/16 :goto_9

    :cond_11
    move v2, v5

    goto/16 :goto_3
.end method

.method public static a(Ljava/io/File;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/antivirus/core/e/b;Ljava/lang/String;Ljava/util/ArrayList;Lcom/antivirus/core/scanners/w;ILcom/antivirus/core/scanners/t;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/antivirus/core/scanners/v;->a(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/core/e/b;Lcom/antivirus/core/scanners/w;ILcom/antivirus/core/scanners/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/e/e;

    iget-object v0, v0, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v2, :cond_1

    iget-object v0, p5, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/e/e;

    iget-object v0, v0, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    iput-object v0, p5, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/e/e;

    iget v0, v0, Lcom/antivirus/core/e/e;->b:I

    iput v0, p5, Lcom/antivirus/core/scanners/w;->d:I

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_2
    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/core/e/b;Lcom/antivirus/core/scanners/w;ILcom/antivirus/core/scanners/t;)Z
    .locals 16

    const/4 v5, 0x0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    :cond_0
    :goto_0
    return v3

    :cond_1
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget v4, Lcom/antivirus/core/scanners/v;->m:I

    new-array v14, v4, [B

    const/4 v4, 0x0

    sget v7, Lcom/antivirus/core/scanners/v;->m:I

    invoke-virtual {v3, v14, v4, v7}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    move v12, v3

    move v3, v8

    :goto_1
    if-nez v11, :cond_4

    if-eqz v3, :cond_b

    :cond_4
    :try_start_2
    sget v8, Lcom/antivirus/core/scanners/v;->m:I

    if-ge v12, v8, :cond_b

    sget-object v8, Lcom/antivirus/core/scanners/v;->k:[B

    array-length v8, v8

    if-ge v12, v8, :cond_6

    if-eqz v11, :cond_5

    aget-byte v8, v14, v12

    sget-object v10, Lcom/antivirus/core/scanners/v;->k:[B

    aget-byte v10, v10, v12

    if-ne v8, v10, :cond_5

    const/4 v8, 0x1

    move v10, v8

    :goto_2
    sget-object v8, Lcom/antivirus/core/scanners/v;->j:[B

    array-length v8, v8

    if-ge v12, v8, :cond_8

    if-eqz v3, :cond_7

    aget-byte v3, v14, v12

    sget-object v8, Lcom/antivirus/core/scanners/v;->j:[B

    aget-byte v8, v8, v12

    if-ne v3, v8, :cond_7

    const/4 v3, 0x1

    move v8, v3

    :goto_3
    sget-object v3, Lcom/antivirus/core/scanners/v;->l:[B

    array-length v3, v3

    if-ge v12, v3, :cond_a

    if-eqz v4, :cond_9

    aget-byte v3, v14, v12

    sget-object v4, Lcom/antivirus/core/scanners/v;->l:[B

    aget-byte v4, v4, v12

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_4
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    move v11, v10

    move v4, v3

    move v3, v8

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    move v10, v8

    goto :goto_2

    :cond_6
    move v10, v11

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    move v8, v3

    goto :goto_3

    :cond_8
    move v8, v3

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    move v3, v4

    goto :goto_4

    :cond_b
    if-eqz v3, :cond_2b

    new-instance v8, Ljava/util/jar/JarFile;

    invoke-direct {v8, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10

    :try_start_3
    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v8, v3}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    const/4 v3, 0x0

    if-eqz v9, :cond_2a

    invoke-virtual {v8, v9}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11

    move-result-object v3

    :try_start_4
    invoke-static {v3}, La/a/a/a/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/a/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12

    const/4 v3, 0x0

    :try_start_5
    invoke-static {v9}, La/a/a/a/a/b;->b([B)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/antivirus/core/scanners/w;->b:Ljava/lang/String;

    move-object v9, v6

    :goto_5
    const-string v6, "classes.dex"

    invoke-virtual {v8, v6}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    const/4 v6, 0x0

    if-eqz v10, :cond_c

    invoke-virtual {v8, v10}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13

    move-result-object v3

    :try_start_6
    invoke-static {v3}, La/a/a/a/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/a/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    const/4 v3, 0x0

    :try_start_7
    invoke-static {v10}, La/a/a/a/a/b;->b([B)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p4

    iput-object v10, v0, Lcom/antivirus/core/scanners/w;->a:Ljava/lang/String;

    :cond_c
    if-eqz v9, :cond_d

    sget-object v10, Lcom/antivirus/core/e/d;->b:Lcom/antivirus/core/e/d;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v10, v9, v2}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;Lcom/antivirus/core/e/d;Ljava/lang/String;I)Lcom/antivirus/core/e/e;

    move-result-object v9

    iget-boolean v5, v9, Lcom/antivirus/core/e/e;->c:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_13

    if-eqz v5, :cond_d

    :try_start_8
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/antivirus/core/scanners/w;->b:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v10, v0, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    iget v9, v9, Lcom/antivirus/core/e/e;->b:I

    move-object/from16 v0, p4

    iput v9, v0, Lcom/antivirus/core/scanners/w;->d:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_14

    :cond_d
    if-eqz v6, :cond_f

    :try_start_9
    sget-object v9, Lcom/antivirus/core/e/d;->a:Lcom/antivirus/core/e/d;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v9, v6, v2}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;Lcom/antivirus/core/e/d;Ljava/lang/String;I)Lcom/antivirus/core/e/e;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-boolean v9, v6, Lcom/antivirus/core/e/e;->c:Z

    if-eqz v9, :cond_f

    if-eqz v5, :cond_e

    iget v9, v6, Lcom/antivirus/core/e/e;->b:I

    move-object/from16 v0, p4

    iget v10, v0, Lcom/antivirus/core/scanners/w;->d:I

    if-ge v9, v10, :cond_f

    :cond_e
    const/4 v5, 0x1

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/antivirus/core/scanners/w;->a:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    iget v6, v6, Lcom/antivirus/core/e/e;->b:I

    move-object/from16 v0, p4

    iput v6, v0, Lcom/antivirus/core/scanners/w;->d:I

    :cond_f
    if-eqz v5, :cond_13

    move-object/from16 v0, p4

    iget v6, v0, Lcom/antivirus/core/scanners/w;->d:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_13

    const/4 v9, 0x1

    if-gt v6, v9, :cond_13

    if-eqz v8, :cond_10

    :try_start_a
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_10
    :goto_6
    if-eqz v7, :cond_11

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_11
    :goto_7
    if-eqz v3, :cond_12

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_12
    :goto_8
    move v3, v5

    goto/16 :goto_0

    :cond_13
    :try_start_d
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v8, v6}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_29

    invoke-virtual {v8, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_13

    move-result-object v6

    if-eqz v6, :cond_1d

    :try_start_e
    invoke-static {v6}, Landroid/a/a/f;->a(Ljava/io/InputStream;)Lcom/antivirus/core/scanners/a/a;

    move-result-object v12

    if-eqz v12, :cond_1d

    iget-object v3, v12, Lcom/antivirus/core/scanners/a/a;->f:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    iget-object v3, v12, Lcom/antivirus/core/scanners/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_19

    iget-object v3, v12, Lcom/antivirus/core/scanners/a/a;->f:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_9
    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/antivirus/core/scanners/w;->f:Ljava/lang/String;

    new-instance v14, Lcom/antivirus/core/scanners/w;

    invoke-direct {v14}, Lcom/antivirus/core/scanners/w;-><init>()V

    if-eqz p6, :cond_15

    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v0, v12, v14, v1}, Lcom/antivirus/core/scanners/t;->a(Lcom/antivirus/core/scanners/a/a;Lcom/antivirus/core/scanners/w;I)Z

    move-result v3

    if-eqz v3, :cond_15

    if-eqz v5, :cond_14

    iget v3, v14, Lcom/antivirus/core/scanners/w;->d:I

    move-object/from16 v0, p4

    iget v9, v0, Lcom/antivirus/core/scanners/w;->d:I

    if-ge v3, v9, :cond_15

    :cond_14
    const/4 v5, 0x1

    iget v3, v14, Lcom/antivirus/core/scanners/w;->d:I

    move-object/from16 v0, p4

    iput v3, v0, Lcom/antivirus/core/scanners/w;->d:I

    iget-object v3, v14, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    iget v3, v14, Lcom/antivirus/core/scanners/w;->e:I

    move-object/from16 v0, p4

    iput v3, v0, Lcom/antivirus/core/scanners/w;->e:I

    :cond_15
    if-eqz v5, :cond_1a

    move-object/from16 v0, p4

    iget v3, v0, Lcom/antivirus/core/scanners/w;->d:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_15

    const/4 v9, 0x1

    if-gt v3, v9, :cond_1a

    if-eqz v8, :cond_16

    :try_start_f
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    :cond_16
    :goto_a
    if-eqz v7, :cond_17

    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    :cond_17
    :goto_b
    if-eqz v6, :cond_18

    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    :cond_18
    :goto_c
    move v3, v5

    goto/16 :goto_0

    :cond_19
    :try_start_12
    const-string v3, ""

    goto :goto_9

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/v;->i:Ljava/util/ArrayList;

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/antivirus/core/scanners/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1d

    const/4 v9, 0x0

    const/4 v3, 0x0

    move v15, v3

    move v3, v9

    move v9, v15

    :goto_d
    if-nez v3, :cond_1b

    iget-object v10, v12, Lcom/antivirus/core/scanners/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1b

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/antivirus/core/scanners/v;->i:Ljava/util/ArrayList;

    iget-object v3, v12, Lcom/antivirus/core/scanners/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3, v14}, Lcom/antivirus/core/scanners/v;->a(Ljava/util/ArrayList;Ljava/lang/String;Lcom/antivirus/core/scanners/w;)Z

    move-result v10

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move v3, v10

    goto :goto_d

    :cond_1b
    if-eqz v3, :cond_1d

    if-eqz v5, :cond_1c

    iget v3, v14, Lcom/antivirus/core/scanners/w;->d:I

    move-object/from16 v0, p4

    iget v9, v0, Lcom/antivirus/core/scanners/w;->d:I

    if-ge v3, v9, :cond_1d

    :cond_1c
    const/4 v5, 0x1

    iget v3, v14, Lcom/antivirus/core/scanners/w;->d:I

    move-object/from16 v0, p4

    iput v3, v0, Lcom/antivirus/core/scanners/w;->d:I

    iget-object v3, v14, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    iget v3, v14, Lcom/antivirus/core/scanners/w;->e:I

    move-object/from16 v0, p4

    iput v3, v0, Lcom/antivirus/core/scanners/w;->e:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15

    :cond_1d
    move-object v15, v6

    move-object v6, v8

    move v8, v5

    move-object v5, v15

    :goto_e
    if-nez v11, :cond_1e

    if-eqz v4, :cond_28

    :cond_1e
    :try_start_13
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_16

    :try_start_14
    invoke-static {v3}, La/a/a/a/b/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/antivirus/core/scanners/w;->a:Ljava/lang/String;

    if-eqz v4, :cond_27

    sget-object v7, Lcom/antivirus/core/e/d;->a:Lcom/antivirus/core/e/d;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v7, v4, v2}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;Lcom/antivirus/core/e/d;Ljava/lang/String;I)Lcom/antivirus/core/e/e;

    move-result-object v7

    iget-boolean v4, v7, Lcom/antivirus/core/e/e;->c:Z

    if-eqz v4, :cond_27

    if-eqz v8, :cond_21

    iget v4, v7, Lcom/antivirus/core/e/e;->b:I

    move-object/from16 v0, p4

    iget v9, v0, Lcom/antivirus/core/scanners/w;->d:I

    if-ge v4, v9, :cond_27

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/antivirus/core/scanners/w;->a:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    iget v4, v7, Lcom/antivirus/core/e/e;->b:I

    move-object/from16 v0, p4

    iput v4, v0, Lcom/antivirus/core/scanners/w;->d:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_17

    move-object v7, v3

    move v3, v8

    :goto_f
    if-eqz v6, :cond_1f

    :try_start_15
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    :cond_1f
    :goto_10
    if-eqz v7, :cond_20

    :try_start_16
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    :cond_20
    :goto_11
    if-eqz v5, :cond_0

    :try_start_17
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_0

    :cond_21
    :try_start_18
    iget-boolean v4, v7, Lcom/antivirus/core/e/e;->c:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_17

    :try_start_19
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/antivirus/core/scanners/w;->a:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    iget v7, v7, Lcom/antivirus/core/e/e;->b:I

    move-object/from16 v0, p4

    iput v7, v0, Lcom/antivirus/core/scanners/w;->d:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_18

    move-object v7, v3

    move v3, v4

    goto :goto_f

    :catchall_0
    move-exception v3

    move-object v7, v4

    move-object v8, v9

    :goto_12
    if-eqz v8, :cond_22

    :try_start_1a
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_4

    :cond_22
    :goto_13
    if-eqz v7, :cond_23

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_5

    :cond_23
    :goto_14
    if-eqz v6, :cond_24

    :try_start_1c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_6

    :cond_24
    :goto_15
    throw v3

    :catch_1
    move-exception v3

    move v3, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v9

    :goto_16
    if-eqz v6, :cond_25

    :try_start_1d
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_2

    :cond_25
    :goto_17
    if-eqz v5, :cond_26

    :try_start_1e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_3

    :cond_26
    :goto_18
    if-eqz v4, :cond_0

    :try_start_1f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v6

    goto :goto_17

    :catch_3
    move-exception v5

    goto :goto_18

    :catch_4
    move-exception v4

    goto :goto_13

    :catch_5
    move-exception v4

    goto :goto_14

    :catch_6
    move-exception v4

    goto :goto_15

    :catch_7
    move-exception v4

    goto/16 :goto_6

    :catch_8
    move-exception v4

    goto/16 :goto_7

    :catch_9
    move-exception v3

    goto/16 :goto_8

    :catch_a
    move-exception v3

    goto/16 :goto_a

    :catch_b
    move-exception v3

    goto/16 :goto_b

    :catch_c
    move-exception v3

    goto/16 :goto_c

    :catch_d
    move-exception v4

    goto :goto_10

    :catch_e
    move-exception v4

    goto :goto_11

    :catchall_1
    move-exception v4

    move-object v7, v3

    move-object v8, v9

    move-object v3, v4

    goto :goto_12

    :catchall_2
    move-exception v3

    move-object v8, v9

    goto :goto_12

    :catchall_3
    move-exception v3

    goto :goto_12

    :catchall_4
    move-exception v4

    move-object v6, v3

    move-object v3, v4

    goto :goto_12

    :catchall_5
    move-exception v4

    move-object v6, v3

    move-object v3, v4

    goto :goto_12

    :catchall_6
    move-exception v3

    move-object v8, v6

    move-object v6, v5

    goto :goto_12

    :catchall_7
    move-exception v4

    move-object v7, v3

    move-object v8, v6

    move-object v3, v4

    move-object v6, v5

    goto :goto_12

    :catch_f
    move-exception v4

    move-object v4, v6

    move-object v6, v9

    move-object v15, v3

    move v3, v5

    move-object v5, v15

    goto :goto_16

    :catch_10
    move-exception v3

    move-object v4, v6

    move v3, v5

    move-object v6, v9

    move-object v5, v7

    goto :goto_16

    :catch_11
    move-exception v3

    move-object v4, v6

    move v3, v5

    move-object v6, v8

    move-object v5, v7

    goto :goto_16

    :catch_12
    move-exception v4

    move-object v4, v3

    move-object v6, v8

    move v3, v5

    move-object v5, v7

    goto :goto_16

    :catch_13
    move-exception v4

    move-object v4, v3

    move-object v6, v8

    move v3, v5

    move-object v5, v7

    goto :goto_16

    :catch_14
    move-exception v4

    move-object v4, v3

    move-object v6, v8

    move v3, v5

    move-object v5, v7

    goto :goto_16

    :catch_15
    move-exception v3

    move-object v4, v6

    move v3, v5

    move-object v6, v8

    move-object v5, v7

    goto :goto_16

    :catch_16
    move-exception v3

    move-object v4, v5

    move v3, v8

    move-object v5, v7

    goto :goto_16

    :catch_17
    move-exception v4

    move-object v4, v5

    move-object v5, v3

    move v3, v8

    goto/16 :goto_16

    :catch_18
    move-exception v7

    move-object v15, v5

    move-object v5, v3

    move v3, v4

    move-object v4, v15

    goto/16 :goto_16

    :cond_27
    move-object v7, v3

    move v3, v8

    goto/16 :goto_f

    :cond_28
    move v3, v8

    goto/16 :goto_f

    :cond_29
    move-object v6, v8

    move v8, v5

    move-object v5, v3

    goto/16 :goto_e

    :cond_2a
    move-object v9, v3

    move-object v3, v6

    goto/16 :goto_5

    :cond_2b
    move v8, v5

    move-object v5, v6

    move-object v6, v9

    goto/16 :goto_e
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;Lcom/antivirus/core/scanners/w;)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/e/e;

    iget-object v0, v0, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/e/e;

    iget-object v0, v0, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    iput-object v0, p3, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/e/e;

    iget v0, v0, Lcom/antivirus/core/e/e;->b:I

    iput v0, p3, Lcom/antivirus/core/scanners/w;->d:I

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private b(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_1

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
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_1
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/v;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/v;->f:Lcom/antivirus/core/scanners/FileScannerJniWrapper;

    iget v2, p0, Lcom/antivirus/core/scanners/v;->g:I

    invoke-virtual {v1, v2, v0}, Lcom/antivirus/core/scanners/FileScannerJniWrapper;->scan(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_3

    :cond_1
    const-string v0, "/data/app"

    iget-object v1, p0, Lcom/antivirus/core/scanners/v;->f:Lcom/antivirus/core/scanners/FileScannerJniWrapper;

    iget v2, p0, Lcom/antivirus/core/scanners/v;->g:I

    invoke-virtual {v1, v2, v0}, Lcom/antivirus/core/scanners/FileScannerJniWrapper;->scan(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->a:Lcom/antivirus/core/scanners/e;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/antivirus/core/scanners/e;->a:Z

    :cond_2
    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesResult;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v1, p0, Lcom/antivirus/core/scanners/v;->f:Lcom/antivirus/core/scanners/FileScannerJniWrapper;

    iget v2, p0, Lcom/antivirus/core/scanners/v;->g:I

    invoke-virtual {v1, v2}, Lcom/antivirus/core/scanners/FileScannerJniWrapper;->getFileCount(I)I

    move-result v1

    iput v1, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/antivirus/core/scanners/k;->a()V

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->f:Lcom/antivirus/core/scanners/FileScannerJniWrapper;

    iget v1, p0, Lcom/antivirus/core/scanners/v;->g:I

    invoke-virtual {v0, v1}, Lcom/antivirus/core/scanners/FileScannerJniWrapper;->cancel(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Lcom/antivirus/core/scanners/ScannerFilesResult;Ljava/lang/String;II)V
    .locals 8

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/antivirus/core/scanners/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/antivirus/core/scanners/ScannerFilesResult;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesResult;

    new-instance v2, Lcom/antivirus/core/e/b;

    invoke-direct {v2}, Lcom/antivirus/core/e/b;-><init>()V

    sget-object v3, Lcom/antivirus/core/e/d;->e:Lcom/antivirus/core/e/d;

    iget-object v1, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v1, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    iget v1, v1, Lcom/antivirus/core/scanners/ScannerFilesConfig;->g:I

    invoke-virtual {v2, p1, v3, v1}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;Lcom/antivirus/core/e/d;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/core/scanners/v;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Lcom/antivirus/core/e/b;->e(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v1

    iput-object v1, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->d:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lcom/antivirus/core/e/b;->a()V

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/antivirus/core/scanners/v;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/antivirus/core/scanners/v;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/antivirus/core/scanners/k;->a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->c:Lcom/antivirus/core/scanners/m;

    check-cast v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/v;->f:Lcom/antivirus/core/scanners/FileScannerJniWrapper;

    iget v1, p0, Lcom/antivirus/core/scanners/v;->g:I

    invoke-virtual {v0, v1}, Lcom/antivirus/core/scanners/FileScannerJniWrapper;->destroy(I)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
