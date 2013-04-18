.class public final Lcom/jxphone/a/a/a;
.super Ljava/lang/Object;
.source "HttpDataSender.java"

# interfaces
.implements Lcom/jxphone/a/a/f;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final e:[Landroid/net/NetworkInfo;

.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/a/a/a;->c:Z

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 44
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    const-string v1, "kmbg.gif?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/a/a/a;->b:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cache.data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jxphone/a/a/a;->a:Ljava/io/File;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/a/a/a;->f:Landroid/content/Context;

    .line 50
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/a/a/a;->e:[Landroid/net/NetworkInfo;

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/jxphone/a/a/a;

    invoke-direct {v0, p0, p1}, Lcom/jxphone/a/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/jxphone/a/a/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jxphone/a/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    new-instance v0, Lcom/jxphone/a/a/d;

    invoke-direct {v0, p0, p1}, Lcom/jxphone/a/a/d;-><init>(Lcom/jxphone/a/a/a;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/jxphone/a/a/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/jxphone/a/a/d;->start()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/jxphone/a/a/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;[[Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    array-length v0, p1

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 129
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 130
    aget-object v3, v2, v5

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 136
    sub-int v1, v0, v6

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    move v1, v5

    .line 138
    :goto_1
    if-ge v1, v0, :cond_3

    .line 139
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/16 v2, 0x2b

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 138
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_3
    return-void
.end method

.method private a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jxphone/a/a/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 104
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/jxphone/a/a/a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/jxphone/a/a/a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/jxphone/a/a/a;->a:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 156
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Cache data"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 161
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error  on closing cache"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error  on caching"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 161
    if-eqz v0, :cond_0

    .line 163
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 165
    :catch_2
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error  on closing cache"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_2

    .line 163
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 166
    :cond_2
    :goto_3
    throw v0

    .line 165
    :catch_3
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error  on closing cache"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 161
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 159
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private b()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 107
    iget-object v0, p0, Lcom/jxphone/a/a/a;->e:[Landroid/net/NetworkInfo;

    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 108
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 111
    :goto_1
    return v0

    .line 107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v5

    .line 111
    goto :goto_1
.end method


# virtual methods
.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/jxphone/a/a/a;->c:Z

    .line 71
    return-void
.end method

.method public final a([BLcom/jxphone/a/a/h;Lcom/jxphone/a/a/g;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    new-instance v0, Lcom/jxphone/a/a/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jxphone/a/a/c;-><init>(Lcom/jxphone/a/a/a;[BLcom/jxphone/a/a/h;Lcom/jxphone/a/a/g;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/jxphone/a/a/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/jxphone/a/a/c;->start()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/jxphone/a/a/a;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public final a([[Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public final a([[Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    invoke-static {v0, p1}, Lcom/jxphone/a/a/a;->a(Ljava/lang/StringBuilder;[[Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz p2, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/jxphone/a/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-direct {p0, v0}, Lcom/jxphone/a/a/a;->a(Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/jxphone/a/a/a;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0, v0}, Lcom/jxphone/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/jxphone/a/a/a;->c:Z

    return v0
.end method
