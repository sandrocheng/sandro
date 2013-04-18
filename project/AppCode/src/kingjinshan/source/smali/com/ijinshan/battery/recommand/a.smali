.class public final Lcom/ijinshan/battery/recommand/a;
.super Ljava/lang/Thread;
.source "BatteryDownload.java"


# static fields
.field protected static final a:I = 0x7530

.field public static d:I = 0x0

.field public static e:I = 0x0

.field public static f:I = 0x0

.field public static g:I = 0x0

.field public static h:I = 0x0

.field private static final m:I = 0x1

.field private static final n:I = 0x2

.field private static final o:I = 0x3


# instance fields
.field public b:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field public i:I

.field public j:Z

.field private k:Landroid/os/Handler;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/ijinshan/battery/recommand/a;->d:I

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/ijinshan/battery/recommand/a;->e:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/ijinshan/battery/recommand/a;->f:I

    .line 33
    const/4 v0, 0x3

    sput v0, Lcom/ijinshan/battery/recommand/a;->g:I

    .line 34
    const/4 v0, 0x4

    sput v0, Lcom/ijinshan/battery/recommand/a;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    .line 21
    iput-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    .line 22
    iput-object v0, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ijinshan/battery/recommand/a;->c:Landroid/content/Context;

    .line 37
    sget v0, Lcom/ijinshan/battery/recommand/a;->f:I

    iput v0, p0, Lcom/ijinshan/battery/recommand/a;->i:I

    .line 38
    iput-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->j:Z

    .line 41
    iput-object p2, p0, Lcom/ijinshan/battery/recommand/a;->c:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/ijinshan/battery/recommand/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 51
    .line 54
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://dl.sj.ijinshan.com/kBatteryDoctor_10010004.apk"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 59
    const/16 v1, 0x7530

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 60
    const/16 v1, 0x7530

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13

    .line 63
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    .line 70
    :try_start_2
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 71
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 72
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0x190

    if-lt v1, v3, :cond_1

    .line 73
    sget v1, Lcom/ijinshan/battery/recommand/a;->e:I

    iput v1, p0, Lcom/ijinshan/battery/recommand/a;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_13

    .line 133
    :try_start_3
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    :try_start_4
    sget v1, Lcom/ijinshan/battery/recommand/a;->e:I

    iput v1, p0, Lcom/ijinshan/battery/recommand/a;->i:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_13

    .line 133
    :try_start_5
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 152
    :catch_1
    move-exception v1

    goto :goto_0

    .line 78
    :cond_1
    :try_start_6
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    .line 80
    invoke-static {}, Lcom/ijinshan/battery/recommand/a;->d()Z

    move-result v3

    if-nez v3, :cond_2

    const-wide/16 v3, 0x0

    :goto_1
    mul-int/lit8 v5, v1, 0x2

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 82
    sget v1, Lcom/ijinshan/battery/recommand/a;->h:I

    iput v1, p0, Lcom/ijinshan/battery/recommand/a;->i:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_13

    .line 133
    :try_start_7
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 152
    :catch_2
    move-exception v1

    goto :goto_0

    .line 80
    :cond_2
    :try_start_8
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Lcom/ijinshan/battery/recommand/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v6, v3

    mul-long v3, v6, v4

    goto :goto_1

    .line 86
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ijinshan/battery/recommand/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mosecurity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    .line 87
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 88
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BatteryDoctor.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 94
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 95
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 96
    iget-object v4, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13

    move-result-object v2

    .line 101
    const/16 v3, 0x2000

    :try_start_9
    new-array v3, v3, [B

    .line 103
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_14

    move v6, v8

    .line 107
    :goto_2
    :try_start_a
    iget-boolean v7, p0, Lcom/ijinshan/battery/recommand/a;->l:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    if-eqz v7, :cond_6

    .line 133
    if-eqz v2, :cond_5

    .line 135
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 140
    :cond_5
    :goto_3
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 148
    :goto_4
    :try_start_d
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    .line 152
    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 110
    :cond_6
    :try_start_e
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 111
    if-lez v7, :cond_9

    .line 112
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 113
    add-int/2addr v6, v7

    .line 114
    iget-object v7, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 115
    const/4 v8, 0x2

    iput v8, v7, Landroid/os/Message;->what:I

    .line 116
    iput v6, v7, Landroid/os/Message;->arg1:I

    .line 117
    iget-object v8, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_2

    .line 131
    :catch_4
    move-exception v1

    move-object v1, v5

    :goto_5
    :try_start_f
    sget v3, Lcom/ijinshan/battery/recommand/a;->g:I

    iput v3, p0, Lcom/ijinshan/battery/recommand/a;->i:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 133
    if-eqz v2, :cond_7

    .line 135
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 140
    :cond_7
    :goto_6
    if-eqz v1, :cond_8

    .line 142
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 148
    :cond_8
    :goto_7
    :try_start_12
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_0

    .line 153
    :catch_5
    move-exception v1

    goto/16 :goto_0

    .line 119
    :cond_9
    :try_start_13
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 120
    sget v3, Lcom/ijinshan/battery/recommand/a;->f:I

    iput v3, p0, Lcom/ijinshan/battery/recommand/a;->i:I

    .line 121
    if-eqz v1, :cond_b

    if-eq v1, v6, :cond_b

    .line 126
    sget v1, Lcom/ijinshan/battery/recommand/a;->e:I

    iput v1, p0, Lcom/ijinshan/battery/recommand/a;->i:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    .line 133
    if-eqz v2, :cond_a

    .line 135
    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 140
    :cond_a
    :goto_8
    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 148
    :goto_9
    :try_start_16
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_0

    .line 152
    :catch_6
    move-exception v1

    goto/16 :goto_0

    .line 133
    :cond_b
    if-eqz v2, :cond_c

    .line 135
    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c

    .line 140
    :cond_c
    :goto_a
    :try_start_18
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    .line 148
    :goto_b
    :try_start_19
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_0

    .line 153
    :catch_7
    move-exception v1

    goto/16 :goto_0

    .line 133
    :catchall_0
    move-exception v1

    move-object v2, v9

    move-object v3, v9

    :goto_c
    if-eqz v3, :cond_d

    .line 135
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    .line 140
    :cond_d
    :goto_d
    if-eqz v2, :cond_e

    .line 142
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 148
    :cond_e
    :goto_e
    :try_start_1c
    iget-boolean v2, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v2, :cond_f

    .line 149
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_12

    .line 152
    :cond_f
    :goto_f
    throw v1

    :catch_8
    move-exception v1

    goto/16 :goto_3

    :catch_9
    move-exception v1

    goto/16 :goto_4

    :catch_a
    move-exception v1

    goto/16 :goto_8

    :catch_b
    move-exception v1

    goto/16 :goto_9

    :catch_c
    move-exception v1

    goto :goto_a

    :catch_d
    move-exception v1

    goto :goto_b

    :catch_e
    move-exception v2

    goto/16 :goto_6

    :catch_f
    move-exception v1

    goto/16 :goto_7

    :catch_10
    move-exception v3

    goto :goto_d

    :catch_11
    move-exception v2

    goto :goto_e

    :catch_12
    move-exception v2

    goto :goto_f

    .line 133
    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v9

    goto :goto_c

    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v2, v5

    goto :goto_c

    :catchall_3
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_c

    .line 131
    :catch_13
    move-exception v1

    move-object v1, v9

    move-object v2, v9

    goto/16 :goto_5

    :catch_14
    move-exception v1

    move-object v1, v9

    goto/16 :goto_5

    .line 152
    :catch_15
    move-exception v1

    goto/16 :goto_0
.end method

.method private declared-synchronized c()Z
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ijinshan/battery/recommand/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static d()Z
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static e()J
    .locals 5

    .prologue
    .line 189
    invoke-static {}, Lcom/ijinshan/battery/recommand/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const-wide/16 v0, 0x0

    .line 198
    :goto_0
    return-wide v0

    .line 193
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/ijinshan/battery/recommand/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 196
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    .line 198
    mul-long v0, v3, v1

    goto :goto_0
.end method

.method private static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/ijinshan/battery/recommand/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    .line 47
    sget v0, Lcom/ijinshan/battery/recommand/a;->d:I

    iput v0, p0, Lcom/ijinshan/battery/recommand/a;->i:I

    .line 48
    return-void
.end method

.method public final run()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 166
    invoke-direct {p0, v1}, Lcom/ijinshan/battery/recommand/a;->a(Z)V

    .line 167
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://dl.sj.ijinshan.com/kBatteryDoctor_10010004.apk"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/16 v1, 0x7530

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x7530

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13

    :try_start_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    :try_start_2
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0x190

    if-lt v1, v3, :cond_2

    sget v1, Lcom/ijinshan/battery/recommand/a;->e:I

    iput v1, p0, Lcom/ijinshan/battery/recommand/a;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_13

    :try_start_3
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15

    .line 168
    :cond_0
    :goto_0
    invoke-direct {p0, v9}, Lcom/ijinshan/battery/recommand/a;->a(Z)V

    .line 170
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_1

    .line 172
    sget v1, Lcom/ijinshan/battery/recommand/a;->d:I

    iput v1, p0, Lcom/ijinshan/battery/recommand/a;->i:I

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 175
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 176
    iget v2, p0, Lcom/ijinshan/battery/recommand/a;->i:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 177
    iget-object v2, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    iget-object v2, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void

    .line 167
    :catch_0
    move-exception v1

    :try_start_4
    sget v1, Lcom/ijinshan/battery/recommand/a;->e:I

    iput v1, p0, Lcom/ijinshan/battery/recommand/a;->i:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_13

    :try_start_5
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_6
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    invoke-static {}, Lcom/ijinshan/battery/recommand/a;->d()Z

    move-result v3

    if-nez v3, :cond_3

    const-wide/16 v3, 0x0

    :goto_1
    mul-int/lit8 v5, v1, 0x2

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    sget v1, Lcom/ijinshan/battery/recommand/a;->h:I

    iput v1, p0, Lcom/ijinshan/battery/recommand/a;->i:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_13

    :try_start_7
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :cond_3
    :try_start_8
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Lcom/ijinshan/battery/recommand/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v6, v3

    mul-long v3, v6, v4

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ijinshan/battery/recommand/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mosecurity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BatteryDoctor.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    iput v1, v3, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13

    move-result-object v2

    const/16 v3, 0x2000

    :try_start_9
    new-array v3, v3, [B

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_14

    move v6, v9

    :goto_2
    :try_start_a
    iget-boolean v7, p0, Lcom/ijinshan/battery/recommand/a;->l:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    if-eqz v7, :cond_7

    if-eqz v2, :cond_6

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_6
    :goto_3
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :goto_4
    :try_start_d
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_0

    :cond_7
    :try_start_e
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v8, 0x2

    iput v8, v7, Landroid/os/Message;->what:I

    iput v6, v7, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/ijinshan/battery/recommand/a;->k:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v1, v5

    :goto_5
    :try_start_f
    sget v3, Lcom/ijinshan/battery/recommand/a;->g:I

    iput v3, p0, Lcom/ijinshan/battery/recommand/a;->i:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v2, :cond_8

    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    :cond_8
    :goto_6
    if-eqz v1, :cond_9

    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    :cond_9
    :goto_7
    :try_start_12
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto/16 :goto_0

    :cond_a
    :try_start_13
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    sget v3, Lcom/ijinshan/battery/recommand/a;->f:I

    iput v3, p0, Lcom/ijinshan/battery/recommand/a;->i:I

    if-eqz v1, :cond_c

    if-eq v1, v6, :cond_c

    sget v1, Lcom/ijinshan/battery/recommand/a;->e:I

    iput v1, p0, Lcom/ijinshan/battery/recommand/a;->i:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    if-eqz v2, :cond_b

    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    :cond_b
    :goto_8
    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    :goto_9
    :try_start_16
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_0

    :cond_c
    if-eqz v2, :cond_d

    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c

    :cond_d
    :goto_a
    :try_start_18
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    :goto_b
    :try_start_19
    iget-boolean v1, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v8

    move-object v3, v8

    :goto_c
    if-eqz v3, :cond_e

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    :cond_e
    :goto_d
    if-eqz v2, :cond_f

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    :cond_f
    :goto_e
    :try_start_1c
    iget-boolean v2, p0, Lcom/ijinshan/battery/recommand/a;->l:Z

    if-eqz v2, :cond_10

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ijinshan/battery/recommand/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_12

    :cond_10
    :goto_f
    throw v1

    :catch_8
    move-exception v1

    goto/16 :goto_3

    :catch_9
    move-exception v1

    goto/16 :goto_4

    :catch_a
    move-exception v1

    goto/16 :goto_8

    :catch_b
    move-exception v1

    goto/16 :goto_9

    :catch_c
    move-exception v1

    goto :goto_a

    :catch_d
    move-exception v1

    goto :goto_b

    :catch_e
    move-exception v2

    goto/16 :goto_6

    :catch_f
    move-exception v1

    goto/16 :goto_7

    :catch_10
    move-exception v3

    goto :goto_d

    :catch_11
    move-exception v2

    goto :goto_e

    :catch_12
    move-exception v2

    goto :goto_f

    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v8

    goto :goto_c

    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v2, v5

    goto :goto_c

    :catchall_3
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_c

    :catch_13
    move-exception v1

    move-object v1, v8

    move-object v2, v8

    goto/16 :goto_5

    :catch_14
    move-exception v1

    move-object v1, v8

    goto/16 :goto_5

    :catch_15
    move-exception v1

    goto/16 :goto_0
.end method
