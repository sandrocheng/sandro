.class public final Lcom/keniu/security/f/c;
.super Ljava/lang/Object;
.source "DbUpdate.java"


# static fields
.field private static f:Lcom/keniu/security/f/c;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Lcom/keniu/security/f/e;

.field private e:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "db_update"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keniu/security/f/c;->a:Landroid/os/HandlerThread;

    .line 54
    iget-object v0, p0, Lcom/keniu/security/f/c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/f/c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keniu/security/f/c;->b:Landroid/os/Handler;

    .line 58
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/MoSecurityApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/c;->c:Landroid/content/pm/PackageManager;

    .line 60
    new-instance v0, Lcom/keniu/security/f/e;

    invoke-direct {v0, p0}, Lcom/keniu/security/f/e;-><init>(Lcom/keniu/security/f/c;)V

    iput-object v0, p0, Lcom/keniu/security/f/c;->d:Lcom/keniu/security/f/e;

    .line 62
    iget-object v0, p0, Lcom/keniu/security/f/c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/f/c;->d:Lcom/keniu/security/f/e;

    const-wide/32 v2, 0x6ddd00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    const-string v1, "db_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/MoSecurityApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/c;->e:Landroid/content/SharedPreferences;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/f/c;)Landroid/os/HandlerThread;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/f/c;->a:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static a()Lcom/keniu/security/f/c;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/keniu/security/f/c;->f:Lcom/keniu/security/f/c;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/keniu/security/f/c;

    invoke-direct {v0}, Lcom/keniu/security/f/c;-><init>()V

    sput-object v0, Lcom/keniu/security/f/c;->f:Lcom/keniu/security/f/c;

    .line 48
    :cond_0
    sget-object v0, Lcom/keniu/security/f/c;->f:Lcom/keniu/security/f/c;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/f/c;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/keniu/security/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 82
    invoke-direct {p0}, Lcom/keniu/security/f/c;->b()Ljava/lang/String;

    move-result-object v2

    .line 84
    if-nez v2, :cond_0

    move v1, v6

    .line 152
    :goto_0
    return v1

    .line 94
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 97
    const/16 v3, 0x7530

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 98
    const/16 v3, 0x7530

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 100
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 102
    instance-of v3, v1, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    .line 104
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object p0, v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_1

    .line 106
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v1, v6

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 111
    :cond_1
    if-nez p2, :cond_2

    .line 114
    :try_start_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "db_version.ini"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 119
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 121
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v1

    .line 122
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 124
    const/16 v2, 0x200

    :try_start_4
    new-array v2, v2, [B

    .line 129
    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    .line 131
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v2, v1

    move-object v1, v3

    .line 141
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 146
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    move v1, v6

    .line 149
    goto :goto_0

    .line 117
    :cond_2
    :try_start_6
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v2, v3

    goto :goto_2

    .line 145
    :cond_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 146
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 152
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 147
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 144
    :catchall_0
    move-exception v1

    move-object v2, v5

    move-object v3, v5

    .line 145
    :goto_7
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 146
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 149
    :goto_8
    throw v1

    .line 147
    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 144
    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v7, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_7

    :catch_5
    move-exception v1

    move-object v1, v5

    move-object v2, v5

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_4
.end method

.method static synthetic b(Lcom/keniu/security/f/c;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/f/c;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/f/c;->c:Landroid/content/pm/PackageManager;

    const-string v1, "com.ijinshan.mguard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dbini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 172
    :cond_0
    invoke-static {v0}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/keniu/security/f/c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/keniu/security/f/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/f/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/f/c;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/f/c;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
