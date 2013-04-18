.class public Lcom/ijinshan/software/recommand/FileDownloadService;
.super Landroid/app/Service;
.source "FileDownloadService.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:Landroid/app/NotificationManager;

.field private h:Landroid/app/Notification;

.field private i:Landroid/content/Intent;

.field private j:Landroid/app/PendingIntent;

.field private k:I

.field private l:Ljava/util/ArrayList;

.field private final m:I

.field private final n:I

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->k:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->m:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->n:I

    .line 145
    new-instance v0, Lcom/ijinshan/software/recommand/a;

    invoke-direct {v0, p0}, Lcom/ijinshan/software/recommand/a;-><init>(Lcom/ijinshan/software/recommand/FileDownloadService;)V

    iput-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->o:Landroid/os/Handler;

    .line 185
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/software/recommand/FileDownloadService;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/ijinshan/software/recommand/FileDownloadService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/ijinshan/software/recommand/FileDownloadService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 123
    const/4 v1, 0x0

    .line 124
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 128
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->g:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private static a(J)Z
    .locals 5
    .parameter

    .prologue
    .line 133
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 135
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    .line 136
    mul-long v0, v3, v1

    .line 137
    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/ijinshan/software/recommand/FileDownloadService;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->j:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->i:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic e(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->o:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/app/Notification;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)J
    .locals 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    const/4 v5, 0x0

    .line 231
    const-wide/16 v6, 0x0

    .line 232
    const/4 v8, 0x0

    .line 233
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 235
    const/4 v11, 0x0

    .line 236
    const/4 v12, 0x0

    .line 237
    const/4 v13, 0x0

    .line 240
    :try_start_0
    new-instance v14, Ljava/net/URL;

    move-object v0, v14

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p4

    check-cast p4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 242
    const/4 v11, 0x1

    :try_start_1
    move-object/from16 v0, p4

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 243
    const-string v11, "User-Agent"

    const-string v14, "MosecurityHttpClient"

    move-object/from16 v0, p4

    move-object v1, v11

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-wide/16 v14, 0x0

    cmp-long v11, v9, v14

    if-lez v11, :cond_0

    .line 245
    const-string v11, "RANGE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v11

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    const/16 v11, 0x2710

    move-object/from16 v0, p4

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 248
    const/16 v11, 0x4e20

    move-object/from16 v0, p4

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 249
    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v14, 0x194

    if-ne v11, v14, :cond_4

    .line 250
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "File not found!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :catchall_0
    move-exception v5

    move-object v6, v13

    move-object v7, v12

    move-object/from16 v8, p4

    :goto_0
    if-eqz v8, :cond_1

    .line 281
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 283
    :cond_1
    if-eqz v7, :cond_2

    .line 284
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 286
    :cond_2
    if-eqz v6, :cond_3

    .line 287
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    throw v5

    .line 252
    :cond_4
    const-wide/16 v14, 0x0

    cmp-long v11, p6, v14

    if-nez v11, :cond_b

    .line 253
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v11

    int-to-long v14, v11

    .line 254
    const-wide/16 v16, -0x1

    cmp-long v11, v14, v16

    if-eqz v11, :cond_b

    .line 258
    :goto_1
    const-wide/16 v16, 0x0

    cmp-long v11, v9, v16

    if-lez v11, :cond_5

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_5

    .line 259
    const-wide/16 v16, 0x64

    mul-long v16, v16, v9

    div-long v16, v16, v14

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v8, v0

    .line 262
    :cond_5
    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->connect()V

    .line 263
    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 264
    :try_start_3
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v16, "rw"

    move-object v0, v12

    move-object/from16 v1, p5

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 265
    :try_start_4
    invoke-virtual {v12, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 266
    const/16 v9, 0x1000

    new-array v9, v9, [B

    move-wide/from16 v20, v6

    move v7, v5

    move-wide/from16 v5, v20

    .line 268
    :cond_6
    :goto_2
    invoke-virtual {v11, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_8

    .line 269
    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13, v10}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 270
    move v0, v10

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v5, v5, v16

    .line 272
    if-eqz v7, :cond_7

    const-wide/16 v16, 0x64

    mul-long v16, v16, v5

    div-long v16, v16, v14

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v10, v0

    const/4 v13, 0x5

    sub-int/2addr v10, v13

    if-lt v10, v7, :cond_6

    .line 273
    :cond_7
    add-int/lit8 v7, v7, 0x5

    .line 274
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v10

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v13, 0x7f0b03f1

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x64

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v18, v18, v14

    add-long v16, v16, v18

    move-object v0, v13

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "%"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/software/recommand/FileDownloadService;->j:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v13

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/software/recommand/FileDownloadService;->g:Landroid/app/NotificationManager;

    move-object v10, v0

    move-object v0, v10

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    .line 280
    :catchall_1
    move-exception v5

    move-object v6, v12

    move-object v7, v11

    move-object/from16 v8, p4

    goto/16 :goto_0

    :cond_8
    if-eqz p4, :cond_9

    .line 281
    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 283
    :cond_9
    if-eqz v11, :cond_a

    .line 284
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 286
    :cond_a
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 291
    return-wide v5

    .line 280
    :catchall_2
    move-exception v5

    move-object v6, v13

    move-object v7, v12

    move-object v8, v11

    goto/16 :goto_0

    :catchall_3
    move-exception v5

    move-object v6, v13

    move-object v7, v11

    move-object/from16 v8, p4

    goto/16 :goto_0

    :cond_b
    move-wide/from16 v14, p6

    goto/16 :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/FileDownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->g:Landroid/app/NotificationManager;

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->i:Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->i:Landroid/content/Intent;

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->j:Landroid/app/PendingIntent;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->l:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 63
    const-string v0, "appName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->a:Ljava/lang/String;

    .line 64
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    const-string v0, "size"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->d:J

    .line 66
    iget-wide v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->d:J

    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v5, v2

    mul-long v2, v5, v3

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    move v0, v7

    :goto_0
    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const v0, 0x7f0b03e9

    invoke-virtual {p0, v0}, Lcom/ijinshan/software/recommand/FileDownloadService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    :goto_1
    const/4 v0, 0x3

    return v0

    :cond_0
    move v0, v8

    .line 66
    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "downURL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->b:Ljava/lang/String;

    .line 71
    const-string v0, "versionCode"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->c:I

    .line 73
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mosecurity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->e:Ljava/io/File;

    .line 75
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->f:Ljava/io/File;

    .line 77
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->h:Landroid/app/Notification;

    .line 78
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->h:Landroid/app/Notification;

    const v1, 0x7f020060

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 79
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->h:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 80
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->h:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b03ea

    invoke-virtual {p0, v2}, Lcom/ijinshan/software/recommand/FileDownloadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 81
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->h:Landroid/app/Notification;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->a:Ljava/lang/String;

    const-string v2, "0%"

    iget-object v3, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 82
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->g:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->k:I

    iget-object v2, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->h:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 84
    new-instance v0, Lcom/ijinshan/software/recommand/c;

    invoke-direct {v0, p0}, Lcom/ijinshan/software/recommand/c;-><init>(Lcom/ijinshan/software/recommand/FileDownloadService;)V

    .line 85
    iget v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->k:I

    iput v1, v0, Lcom/ijinshan/software/recommand/c;->a:I

    .line 86
    iget-object v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/ijinshan/software/recommand/c;->b:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/ijinshan/software/recommand/c;->c:Ljava/lang/String;

    .line 88
    iget v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->c:I

    iput v1, v0, Lcom/ijinshan/software/recommand/c;->d:I

    .line 89
    iget-wide v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->d:J

    iput-wide v1, v0, Lcom/ijinshan/software/recommand/c;->e:J

    .line 90
    iget-object v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->e:Ljava/io/File;

    iput-object v1, v0, Lcom/ijinshan/software/recommand/c;->f:Ljava/io/File;

    .line 91
    iget-object v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->f:Ljava/io/File;

    iput-object v1, v0, Lcom/ijinshan/software/recommand/c;->g:Ljava/io/File;

    .line 92
    iget-object v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->h:Landroid/app/Notification;

    iput-object v1, v0, Lcom/ijinshan/software/recommand/c;->h:Landroid/app/Notification;

    .line 94
    new-instance v1, Lcom/ijinshan/software/recommand/b;

    invoke-direct {v1, p0, v0}, Lcom/ijinshan/software/recommand/b;-><init>(Lcom/ijinshan/software/recommand/FileDownloadService;Lcom/ijinshan/software/recommand/c;)V

    invoke-virtual {v1}, Lcom/ijinshan/software/recommand/b;->start()V

    .line 95
    iget-object v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->k:I

    goto/16 :goto_1

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b03eb

    invoke-virtual {p0, v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 102
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ijinshan/software/recommand/FileDownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b03ec

    invoke-virtual {p0, v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
