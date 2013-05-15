.class public La/a/a/a/a/a;
.super Ljava/lang/Object;
.source "ErrorHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:La/a/a/a/a/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:La/a/a/a/a/c;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, La/a/a/a/a/a;

    invoke-direct {v0}, La/a/a/a/a/a;-><init>()V

    sput-object v0, La/a/a/a/a/a;->a:La/a/a/a/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, La/a/a/a/a/a;->e:Ljava/lang/String;

    .line 59
    iput-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a;->g:Z

    .line 63
    return-void
.end method

.method public static a()La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 66
    sget-object v0, La/a/a/a/a/a;->a:La/a/a/a/a/a;

    return-object v0
.end method

.method static synthetic a(La/a/a/a/a/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, La/a/a/a/a/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized b()La/a/a/a/a/c;
    .locals 5

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    if-nez v0, :cond_3

    .line 210
    new-instance v0, La/a/a/a/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/a/c;-><init>(La/a/a/a/a/b;)V

    iput-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    .line 211
    invoke-direct {p0}, La/a/a/a/a/a;->d()Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 215
    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a;->b:Landroid/content/Context;

    const-class v2, Lcom/avast/android/generic/ae;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 216
    if-eqz v0, :cond_4

    .line 219
    iget-object v2, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, La/a/a/a/a/c;->a:Ljava/lang/String;

    .line 220
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    iget-object v0, v0, La/a/a/a/a/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v2, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    iget-object v2, v2, La/a/a/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    const-string v2, "N/A"

    iput-object v2, v0, La/a/a/a/a/c;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, La/a/a/a/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.avast.android.vps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.avast.android.mobilesecurity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    :cond_2
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v0, La/a/a/a/a/c;->d:Ljava/lang/String;

    .line 241
    :goto_1
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, La/a/a/a/a/c;->b:Ljava/lang/String;

    .line 242
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v0, La/a/a/a/a/c;->c:I

    .line 243
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    invoke-direct {p0}, La/a/a/a/a/a;->c()J

    move-result-wide v1

    iput-wide v1, v0, La/a/a/a/a/c;->o:J

    .line 245
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, La/a/a/a/a/c;->e:Ljava/lang/String;

    .line 246
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v1, v0, La/a/a/a/a/c;->f:Ljava/lang/String;

    .line 247
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, La/a/a/a/a/c;->g:Ljava/lang/String;

    .line 248
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, v0, La/a/a/a/a/c;->h:Ljava/lang/String;

    .line 249
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    sget-wide v1, Landroid/os/Build;->TIME:J

    iput-wide v1, v0, La/a/a/a/a/c;->i:J

    .line 250
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v1, v0, La/a/a/a/a/c;->j:Ljava/lang/String;

    .line 251
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    iput-object v1, v0, La/a/a/a/a/c;->k:Ljava/lang/String;

    .line 252
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v1, v0, La/a/a/a/a/c;->l:Ljava/lang/String;

    .line 253
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, La/a/a/a/a/c;->m:Ljava/lang/String;

    .line 254
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, La/a/a/a/a/c;->n:Ljava/lang/String;

    .line 257
    :cond_3
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 224
    :cond_4
    :try_start_3
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    const-string v2, "N/A"

    iput-object v2, v0, La/a/a/a/a/c;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 228
    :try_start_4
    iget-object v0, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    const-string v2, "N/A"

    iput-object v2, v0, La/a/a/a/a/c;->a:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 237
    :cond_5
    :try_start_5
    iget-object v0, p0, La/a/a/a/a/a;->b:Landroid/content/Context;

    sget v2, Lcom/avast/android/generic/y;->c:I

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/aw;->a(Landroid/content/Context;I)Lcom/avast/android/generic/util/aw;

    move-result-object v0

    .line 238
    iget-object v2, p0, La/a/a/a/a/a;->f:La/a/a/a/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/avast/android/generic/util/aw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avast/android/generic/util/aw;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avast/android/generic/util/aw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, La/a/a/a/a/c;->d:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method static synthetic b(La/a/a/a/a/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, La/a/a/a/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 188
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 189
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 195
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 199
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 200
    :goto_0
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 205
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()J
    .locals 4

    .prologue
    .line 261
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 262
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 264
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 265
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic c(La/a/a/a/a/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, La/a/a/a/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 149
    new-instance v0, La/a/a/a/a/b;

    invoke-direct {v0, p0, p1}, La/a/a/a/a/b;-><init>(La/a/a/a/a/a;Ljava/lang/String;)V

    .line 184
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 185
    return-void
.end method

.method private d()Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, La/a/a/a/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 272
    :try_start_0
    iget-object v1, p0, La/a/a/a/a/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 277
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)La/a/a/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, La/a/a/a/a/a;->b:Landroid/content/Context;

    .line 93
    iget-boolean v0, p0, La/a/a/a/a/a;->g:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 96
    :cond_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 97
    return-object p0
.end method

.method public a(Ljava/lang/String;)La/a/a/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, La/a/a/a/a/a;->d:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 121
    :try_start_0
    invoke-direct {p0}, La/a/a/a/a/a;->b()La/a/a/a/a/c;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, La/a/a/a/a/c;->a()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 125
    :try_start_1
    const-string v0, "exception"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v2, "message"

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v0, "stacktrace"

    invoke-direct {p0, p2}, La/a/a/a/a/a;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/a/a/a/a;->c(Ljava/lang/String;)V

    .line 130
    const-string v0, "AvastGeneric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handled uncaught exception ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    :goto_1
    return-void

    .line 126
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 134
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)La/a/a/a/a/a;
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, La/a/a/a/a/a;->e:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-virtual {p0, p2}, La/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 145
    iget-object v0, p0, La/a/a/a/a/a;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method
