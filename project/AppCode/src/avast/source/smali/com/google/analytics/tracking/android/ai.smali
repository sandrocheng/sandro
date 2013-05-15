.class Lcom/google/analytics/tracking/android/ai;
.super Ljava/lang/Thread;
.source "GAThread.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/l;


# static fields
.field private static i:Lcom/google/analytics/tracking/android/ai;


# instance fields
.field private final a:Ljava/util/concurrent/LinkedBlockingQueue;

.field private volatile b:Z

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Ljava/util/List;

.field private volatile f:Lcom/google/analytics/tracking/android/az;

.field private volatile g:Ljava/lang/String;

.field private volatile h:Ljava/lang/String;

.field private final j:Lcom/google/analytics/tracking/android/bl;

.field private final k:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 71
    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ai;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 50
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/ai;->b:Z

    .line 51
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/ai;->c:Z

    .line 72
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/google/analytics/tracking/android/z;

    invoke-direct {v0, p1, p0}, Lcom/google/analytics/tracking/android/z;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/l;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ai;->j:Lcom/google/analytics/tracking/android/bl;

    .line 74
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ai;->f()V

    .line 75
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/ai;
    .locals 1
    .parameter

    .prologue
    .line 63
    sget-object v0, Lcom/google/analytics/tracking/android/ai;->i:Lcom/google/analytics/tracking/android/ai;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/google/analytics/tracking/android/ai;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/ai;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/ai;->i:Lcom/google/analytics/tracking/android/ai;

    .line 66
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/ai;->i:Lcom/google/analytics/tracking/android/ai;

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/ai;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ai;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 453
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 454
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 455
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 456
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 457
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 315
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/ai;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/ai;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/ai;->d(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    const-string v2, "gaClientId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 336
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    const-string v1, "Error creating clientId file."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :catch_1
    move-exception v1

    .line 342
    const-string v1, "Error writing to clientId file."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 414
    :try_start_0
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 419
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 420
    const/4 v3, 0x0

    const/16 v4, 0x2000

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 421
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-lez v4, :cond_0

    .line 424
    const-string v2, "Too much campaign data, ignoring it."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 425
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 426
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 448
    :goto_0
    return-object v0

    .line 429
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 430
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 431
    if-gtz v3, :cond_1

    .line 432
    const-string v1, "Campaign file is empty."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ay;->h(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 441
    const-string v1, "No campaign data found."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ay;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 435
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Campaign found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/ay;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 437
    goto :goto_0

    .line 443
    :catch_1
    move-exception v1

    .line 446
    const-string v1, "Error reading campaign data."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 447
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/ai;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 131
    const-string v0, "internalHitUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    if-nez v0, :cond_0

    .line 133
    const-string v0, "useSecure"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/bq;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://ssl.google-analytics.com/collect"

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    const-string v0, "http://www.google-analytics.com/collect"

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/ai;->e(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/ai;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/ai;->f(Ljava/util/Map;)V

    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 4
    .parameter

    .prologue
    .line 144
    const-string v0, "rawException"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v1, "rawException"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {v0}, Lcom/google/analytics/tracking/android/bq;->e(Ljava/lang/String;)[B

    move-result-object v0

    .line 150
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 153
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 154
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 155
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 156
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 157
    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v2, Lcom/google/analytics/tracking/android/bn;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/analytics/tracking/android/bn;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    .line 172
    const-string v3, "exDescription"

    const-string v1, "exceptionThreadName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/google/analytics/tracking/android/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v0, "IOException reading exception"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->h(Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    const-string v0, "ClassNotFoundException reading exception"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->h(Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/ai;)Lcom/google/analytics/tracking/android/az;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->f:Lcom/google/analytics/tracking/android/az;

    return-object v0
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/ai;->c(Ljava/util/Map;)V

    return-void
.end method

.method private d(Ljava/util/Map;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v6, 0x4059

    .line 179
    const-string v0, "sampleRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "sampleRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/bq;->b(Ljava/lang/String;)D

    move-result-wide v2

    .line 181
    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    move v0, v1

    .line 192
    :goto_0
    return v0

    .line 184
    :cond_0
    cmpg-double v0, v2, v6

    if-gez v0, :cond_1

    .line 185
    const-string v0, "clientId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit16 v0, v0, 0x2710

    int-to-double v4, v0

    mul-double/2addr v2, v6

    cmpl-double v0, v4, v2

    if-ltz v0, :cond_1

    move v0, v1

    .line 188
    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/ai;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/analytics/tracking/android/ai;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->e:Ljava/util/List;

    return-object v0
.end method

.method private e(Ljava/util/Map;)V
    .locals 6
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 198
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    const/4 v0, 0x0

    .line 204
    :try_start_0
    iget-object v4, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 205
    if-eqz v4, :cond_0

    .line 206
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    :try_start_1
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :goto_0
    const-string v4, "appName"

    invoke-direct {p0, p1, v4, v1}, Lcom/google/analytics/tracking/android/ai;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "appVersion"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/analytics/tracking/android/ai;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "appId"

    invoke-direct {p0, p1, v0, v2}, Lcom/google/analytics/tracking/android/ai;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "appInstallerId"

    invoke-direct {p0, p1, v0, v3}, Lcom/google/analytics/tracking/android/ai;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "apiVersion"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void

    .line 209
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 210
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error retrieving package info: appName set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :catch_1
    move-exception v4

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic f(Lcom/google/analytics/tracking/android/ai;)Lcom/google/analytics/tracking/android/bl;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->j:Lcom/google/analytics/tracking/android/bl;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->j:Lcom/google/analytics/tracking/android/bl;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/bl;->e()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ai;->e:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->e:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendVersion"

    const-string v3, "_v"

    const-string v4, "ma1b3"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->e:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendQueueTime"

    const-string v3, "qt"

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->e:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendCacheBuster"

    const-string v3, "z"

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Lcom/google/analytics/tracking/android/az;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/az;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ai;->f:Lcom/google/analytics/tracking/android/az;

    .line 94
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->f:Lcom/google/analytics/tracking/android/az;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/bc;->a(Lcom/google/analytics/tracking/android/az;)V

    .line 96
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/ai;->start()V

    .line 97
    return-void
.end method

.method private f(Ljava/util/Map;)V
    .locals 3
    .parameter

    .prologue
    .line 226
    const-string v0, "campaign"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/bq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-static {v0}, Lcom/google/analytics/tracking/android/bq;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 237
    const-string v1, "campaignContent"

    const-string v2, "utm_content"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "campaignMedium"

    const-string v2, "utm_medium"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "campaignName"

    const-string v2, "utm_campaign"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "campaignSource"

    const-string v2, "utm_source"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "campaignKeyword"

    const-string v2, "utm_term"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "campaignId"

    const-string v2, "utm_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "gclid"

    const-string v2, "gclid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "dclid"

    const-string v2, "dclid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v1, "gmob_t"

    const-string v2, "gmob_t"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    const-string v1, "gaOptOut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/google/analytics/tracking/android/ak;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/ak;-><init>(Lcom/google/analytics/tracking/android/ai;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ai;->a(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method public a(Lcom/google/analytics/tracking/android/d;)V
    .locals 1
    .parameter

    .prologue
    .line 291
    new-instance v0, Lcom/google/analytics/tracking/android/al;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/al;-><init>(Lcom/google/analytics/tracking/android/ai;Lcom/google/analytics/tracking/android/d;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ai;->a(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public a(Lcom/google/analytics/tracking/android/m;)V
    .locals 1
    .parameter

    .prologue
    .line 303
    new-instance v0, Lcom/google/analytics/tracking/android/am;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/am;-><init>(Lcom/google/analytics/tracking/android/ai;Lcom/google/analytics/tracking/android/m;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ai;->a(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .parameter

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 103
    new-instance v3, Lcom/google/analytics/tracking/android/aj;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/analytics/tracking/android/aj;-><init>(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;J)V

    invoke-direct {p0, v3}, Lcom/google/analytics/tracking/android/ai;->a(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public b()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public c()Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 520
    return-object p0
.end method

.method d()Ljava/lang/String;
    .locals 4

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 361
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    and-long/2addr v0, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 362
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    :cond_0
    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 6

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    const-string v2, "gaClientId"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 373
    const/16 v1, 0x80

    new-array v3, v1, [B

    .line 374
    const/4 v1, 0x0

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 375
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 378
    const-string v1, "clientId file seems corrupted, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 379
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 380
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    const-string v5, "gaInstallData"

    invoke-virtual {v1, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 382
    :cond_0
    if-gtz v4, :cond_2

    .line 383
    const-string v1, "clientId file seems empty, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 384
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 385
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 400
    :goto_0
    if-nez v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/ai;->d()Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_1
    return-object v0

    .line 387
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    :goto_1
    const-string v1, "Error reading clientId file, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 395
    :catch_1
    move-exception v1

    .line 396
    :goto_2
    const-string v1, "cliendId file doesn\'t have long value, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 395
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 392
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 390
    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 468
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 480
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ai;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/ai;->d:Z

    .line 481
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/ai;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ai;->h:Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ai;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ai;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 490
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/ai;->c:Z

    if-nez v0, :cond_1

    .line 496
    :try_start_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ai;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 497
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/ai;->b:Z

    if-nez v1, :cond_0

    .line 498
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 500
    :catch_0
    move-exception v0

    .line 501
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->d(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 503
    :catch_1
    move-exception v0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on GAThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ai;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 507
    const-string v0, "Google Analytics is shutting down."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 508
    iput-boolean v3, p0, Lcom/google/analytics/tracking/android/ai;->b:Z

    goto :goto_1

    .line 469
    :catch_2
    move-exception v0

    .line 471
    const-string v0, "sleep interrupted in GAThread initialize"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->h(Ljava/lang/String;)I

    goto :goto_0

    .line 483
    :catch_3
    move-exception v0

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error initializing the GAThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ai;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 487
    const-string v0, "Google Analytics will not start up."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 488
    iput-boolean v3, p0, Lcom/google/analytics/tracking/android/ai;->b:Z

    goto :goto_1

    .line 511
    :cond_1
    return-void
.end method
