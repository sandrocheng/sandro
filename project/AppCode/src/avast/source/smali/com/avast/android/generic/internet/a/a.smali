.class public Lcom/avast/android/generic/internet/a/a;
.super Ljava/lang/Object;
.source "CommunityIqManager.java"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avast/android/generic/internet/a/a;->a:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x7t
    .end array-data
.end method

.method public static a(Lcom/avast/android/generic/g/e;Landroid/content/Context;Landroid/os/Bundle;)Lcom/avast/android/generic/g/c;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {p1, p2}, Lcom/avast/android/generic/internet/a/a;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/avast/android/generic/g/d;

    move-result-object v0

    .line 92
    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {v0, p0}, Lcom/avast/android/generic/g/d;->a(Lcom/avast/android/generic/g/e;)Lcom/avast/android/generic/g/d;

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/avast/android/generic/internet/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-static {v0, p1}, Lcom/avast/android/generic/internet/a/a;->a(Lcom/avast/android/generic/g/d;Landroid/content/Context;)V

    .line 98
    :cond_1
    invoke-virtual {v0}, Lcom/avast/android/generic/g/d;->c()Lcom/avast/android/generic/g/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/avast/android/generic/g/d;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 189
    invoke-static {}, Lcom/avast/android/generic/g/c;->H()Lcom/avast/android/generic/g/d;

    move-result-object v1

    .line 191
    if-eqz p0, :cond_2

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_1

    .line 195
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_0

    .line 198
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 199
    invoke-static {v2}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/g/d;->b(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 206
    :cond_0
    :goto_0
    :try_start_1
    const-string v2, "com.avast.android.antitheft"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_1

    .line 209
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 210
    invoke-static {v2}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/g/d;->c(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :cond_1
    :goto_1
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/g/d;->a(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;

    .line 233
    :cond_2
    if-eqz p1, :cond_5

    .line 234
    const-string v0, "vps_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_3

    .line 236
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/g/d;->d(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;

    .line 240
    :cond_3
    const-string v0, "update_result"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 241
    if-eq v0, v4, :cond_4

    .line 242
    invoke-static {v0}, Lcom/avast/android/generic/g/i;->a(I)Lcom/avast/android/generic/g/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/g/d;->a(Lcom/avast/android/generic/g/i;)Lcom/avast/android/generic/g/d;

    .line 246
    :cond_4
    const-string v0, "update_check_result"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 248
    if-eq v0, v4, :cond_5

    .line 249
    invoke-static {v0}, Lcom/avast/android/generic/g/g;->a(I)Lcom/avast/android/generic/g/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/g/d;->a(Lcom/avast/android/generic/g/g;)Lcom/avast/android/generic/g/d;

    .line 253
    :cond_5
    return-object v1

    .line 213
    :catch_0
    move-exception v2

    .line 215
    :try_start_2
    const-string v2, "com.avast.android.at_play"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_1

    .line 218
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 219
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/g/d;->c(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 222
    :catch_1
    move-exception v0

    goto :goto_1

    .line 202
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method private static a(Lcom/avast/android/generic/g/d;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 267
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/d;->e(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;

    .line 269
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/d;->f(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;

    .line 270
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/d;->i(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;

    .line 271
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/d;->k(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;

    .line 272
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/d;->j(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;

    .line 274
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/d;->g(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;

    .line 275
    if-eqz p1, :cond_0

    .line 276
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 278
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/d;->h(Lcom/google/a/c;)Lcom/avast/android/generic/g/d;

    .line 284
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 294
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->p()Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Lcom/avast/android/generic/g/c;Ljava/net/URI;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 311
    const-string v1, "sendIqToServer"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 312
    const-string v1, "avdroid"

    invoke-static {v1}, Landroid/b/a/a;->a(Ljava/lang/String;)Landroid/b/a/a;

    move-result-object v2

    .line 313
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 314
    const/4 v3, 0x0

    .line 316
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p1}, Lcom/avast/android/generic/g/c;->bo()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 318
    const-string v5, "binary/octet-stream"

    invoke-virtual {v4, v5}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 322
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executing request to uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 323
    invoke-virtual {v2, v1}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    .line 333
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 337
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 338
    invoke-virtual {v2}, Landroid/b/a/a;->a()V

    .line 340
    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    if-eqz v3, :cond_3

    .line 333
    :try_start_3
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 337
    :cond_3
    :goto_2
    if-eqz v2, :cond_2

    .line 338
    :goto_3
    invoke-virtual {v2}, Landroid/b/a/a;->a()V

    goto :goto_1

    .line 327
    :catch_1
    move-exception v1

    .line 328
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 331
    if-eqz v3, :cond_4

    .line 333
    :try_start_5
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 337
    :cond_4
    :goto_4
    if-eqz v2, :cond_2

    goto :goto_3

    .line 331
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_5

    .line 333
    :try_start_6
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 337
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    .line 338
    invoke-virtual {v2}, Landroid/b/a/a;->a()V

    .line 331
    :cond_6
    throw v0

    .line 334
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_5
.end method

.method public static b(Lcom/avast/android/generic/g/e;Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 118
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " context = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " data = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/avast/android/generic/internet/a/a;->a(Lcom/avast/android/generic/g/e;Landroid/content/Context;Landroid/os/Bundle;)Lcom/avast/android/generic/g/c;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/avast/android/generic/g/c;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v2}, Lcom/avast/android/generic/g/c;->u()Lcom/avast/android/generic/g/g;

    move-result-object v0

    .line 126
    sget-object v3, Lcom/avast/android/generic/g/g;->b:Lcom/avast/android/generic/g/g;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/g/g;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/avast/android/generic/g/g;->a:Lcom/avast/android/generic/g/g;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/g/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    :cond_2
    const-string v0, "Skipping VPS up-to-date or update available event"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :cond_3
    const-string v0, "communityiq_server_uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    if-nez v3, :cond_4

    .line 139
    const-string v0, "no stringServerUri"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    move v0, v1

    .line 140
    goto :goto_0

    .line 143
    :cond_4
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {p1}, Lcom/avast/android/generic/util/l;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 146
    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 149
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "guid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 150
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 154
    :try_start_0
    sget-object v4, Lcom/avast/android/generic/internet/a/a;->a:[B

    invoke-static {v4, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/generic/c/b;->a([B)[C

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    .line 162
    const/16 v0, 0x2b

    const/16 v5, 0x2d

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 163
    const/16 v4, 0x2f

    const/16 v5, 0x5f

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 167
    :try_start_1
    new-instance v4, Ljava/net/URI;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    invoke-static {p1, v2, v4}, Lcom/avast/android/generic/internet/a/a;->a(Landroid/content/Context;Lcom/avast/android/generic/g/c;Ljava/net/URI;)Z

    move-result v0

    goto/16 :goto_0

    .line 156
    :catch_0
    move-exception v0

    move v0, v1

    .line 157
    goto/16 :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    const-string v0, "invalid stringServerUri"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    move v0, v1

    .line 170
    goto/16 :goto_0
.end method
