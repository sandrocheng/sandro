.class public final Lcom/avast/android/mobilesecurity/vps/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "test"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/a;->a:Landroid/net/Uri;

    const-string v0, "http://ip.ff.avast.com/ip"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/a;->b:Landroid/net/Uri;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    sget-object v3, Lcom/avast/android/mobilesecurity/vps/a;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v2

    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/vps/c/d;->a(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/vps/c/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1
    :goto_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/c/d;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/c/d;->c()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    :cond_2
    :goto_4
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_3
    :goto_6
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_4

    :try_start_6
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_8
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_9
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_5

    :try_start_7
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_a
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_6
    throw v0

    :cond_7
    const-string v0, ""

    goto/16 :goto_2

    :catch_3
    move-exception v2

    goto :goto_a

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_9

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_9

    :catch_4
    move-exception v2

    goto :goto_8

    :catch_5
    move-exception v2

    move-object v2, v1

    goto :goto_7

    :catch_6
    move-exception v3

    goto :goto_7

    :catch_7
    move-exception v2

    goto :goto_6

    :catch_8
    move-exception v2

    move-object v2, v1

    goto :goto_5

    :catch_9
    move-exception v3

    goto :goto_5

    :catch_a
    move-exception v2

    goto/16 :goto_4

    :catch_b
    move-exception v2

    move-object v2, v1

    goto/16 :goto_3

    :catch_c
    move-exception v3

    goto/16 :goto_3

    :catch_d
    move-exception v2

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v1, "dinf"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v1, v3

    if-eqz v1, :cond_0

    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_0

    aget-object v4, v3, v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lcom/avast/android/mobilesecurity/vps/c/b;->a(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/vps/c/b;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/vps/c/b;->a(Lcom/avast/android/mobilesecurity/vps/c/b;)Lcom/avast/android/mobilesecurity/vps/c/c;

    move-result-object v2

    invoke-static {}, Lcom/avast/android/mobilesecurity/vps/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/avast/android/mobilesecurity/vps/c/c;->t(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/vps/c/c;->a()Lcom/avast/android/mobilesecurity/vps/c/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_2

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/u;->j:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/u;->a()I

    move-result v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/d/c;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/u;->a()I

    move-result v0

    if-eq v1, v0, :cond_0

    :cond_2
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/vps/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_3

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/u;->j:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/u;->a()I

    move-result v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/d/c;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/vps/d/c;->a:Lcom/avast/android/mobilesecurity/vps/b/u;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/u;->a()I

    move-result v0

    if-eq v4, v0, :cond_0

    :cond_3
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/Interface;->b:Ljava/util/HashSet;

    sget-object v4, Lcom/avast/android/mobilesecurity/vps/Interface;->a:Ljava/util/HashSet;

    invoke-static {v1, v0, v4, v5}, Lcom/avast/android/mobilesecurity/vps/e;->a(Ljava/util/List;Ljava/util/HashSet;Ljava/util/HashSet;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avast.android.mobilesecurity"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v0, "2.0.2787"

    const-string v6, "\\."

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v1

    array-length v7, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_c

    if-ne v0, v7, :cond_0

    move v0, v2

    :goto_1
    :try_start_1
    array-length v7, v1

    if-ge v0, v7, :cond_4

    aget-object v7, v1, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v8, v6, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_c

    move-result v8

    if-lt v7, v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/avast/android/mobilesecurity/vps/c/b;->ah()Lcom/avast/android/mobilesecurity/vps/c/c;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/d/c;

    if-eqz v0, :cond_5

    iget-object v7, v0, Lcom/avast/android/mobilesecurity/vps/d/c;->b:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/vps/d/c;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->b(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/l;->b:Lcom/avast/android/mobilesecurity/vps/b/l;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/l;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1d

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    :goto_3
    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    :cond_7
    if-eqz v1, :cond_18

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->e(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_8
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/avast/android/mobilesecurity/vps/c/c;->f(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_9
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v4}, Lcom/avast/android/mobilesecurity/vps/c/c;->a(I)Lcom/avast/android/mobilesecurity/vps/c/c;

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/avast/android/mobilesecurity/vps/c/c;->j(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    :cond_a
    :goto_4
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_d

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/avast/android/mobilesecurity/vps/c/c;->g(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_b
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/avast/android/mobilesecurity/vps/c/c;->h(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_c
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v6, v4}, Lcom/avast/android/mobilesecurity/vps/c/c;->b(I)Lcom/avast/android/mobilesecurity/vps/c/c;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v6, v1}, Lcom/avast/android/mobilesecurity/vps/c/c;->c(I)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_d
    :goto_5
    if-eqz v0, :cond_e

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->i(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    :cond_e
    :goto_6
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/l;->e:Lcom/avast/android/mobilesecurity/vps/b/l;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/l;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/avast/android/mobilesecurity/vps/c/c;->d(J)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->d(I)Lcom/avast/android/mobilesecurity/vps/c/c;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->l(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_10
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->m(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_11
    if-eqz p4, :cond_12

    invoke-virtual {v6, p4}, Lcom/avast/android/mobilesecurity/vps/c/c;->k(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->n(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/avast/android/mobilesecurity/vps/c/c;->c(J)Lcom/avast/android/mobilesecurity/vps/c/c;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->c(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/avast/android/mobilesecurity/vps/c/c;->a(J)Lcom/avast/android/mobilesecurity/vps/c/c;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/avast/android/mobilesecurity/vps/c/c;->b(J)Lcom/avast/android/mobilesecurity/vps/c/c;

    :try_start_5
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/vps/a;->a(Ljava/io/File;)[B

    move-result-object v7

    if-nez v7, :cond_19

    move-object v0, v3

    :goto_7
    if-eqz v0, :cond_13

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->d(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_9

    :cond_13
    :goto_8
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/l;->f:Lcom/avast/android/mobilesecurity/vps/b/l;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/l;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, "system"

    :cond_14
    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->p(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_15
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/l;->g:Lcom/avast/android/mobilesecurity/vps/b/l;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/l;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->a(Z)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_16
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/l;->h:Lcom/avast/android/mobilesecurity/vps/b/l;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/b/l;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->q(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    :cond_17
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->r(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->o(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->c:Lcom/avast/android/mobilesecurity/vps/c/f;

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->a(Lcom/avast/android/mobilesecurity/vps/c/f;)Lcom/avast/android/mobilesecurity/vps/c/c;

    invoke-static {}, Lcom/avast/android/mobilesecurity/vps/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->s(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dinf"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_6
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    invoke-virtual {v6}, Lcom/avast/android/mobilesecurity/vps/c/c;->a()Lcom/avast/android/mobilesecurity/vps/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/c/b;->ai()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v1, v3

    goto/16 :goto_3

    :cond_18
    if-eqz v0, :cond_d

    invoke-virtual {v6, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->e(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;

    goto/16 :goto_5

    :cond_19
    if-nez v7, :cond_1b

    move-object v0, v3

    :cond_1a
    :try_start_9
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_1b
    const-string v0, ""

    move v1, v2

    :goto_9
    array-length v4, v7

    if-ge v1, v4, :cond_1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v4, v7, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v8, 0x10

    invoke-static {v4, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v4

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v0, v3

    :goto_a
    if-eqz v0, :cond_0

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v0, v3

    :goto_b
    if-eqz v0, :cond_0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_c
    if-eqz v3, :cond_1c

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_1c
    :goto_d
    throw v0

    :catch_6
    move-exception v1

    goto :goto_d

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_c

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v0

    goto/16 :goto_8

    :catch_a
    move-exception v0

    goto/16 :goto_6

    :catch_b
    move-exception v4

    goto/16 :goto_4

    :catch_c
    move-exception v0

    goto/16 :goto_0

    :catch_d
    move-exception v0

    goto/16 :goto_0

    :cond_1d
    move-object v1, v3

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/vps/b/a;)V
    .locals 12

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "dinf"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    array-length v0, v6

    if-ge v1, v0, :cond_0

    aget-object v4, v6, v1

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    :try_start_1
    invoke-static {v5}, Lcom/avast/android/mobilesecurity/vps/c/b;->a(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/vps/c/b;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/c/b;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/vps/c/b;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    :try_start_3
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/vps/c/b;->a(Lcom/avast/android/mobilesecurity/vps/c/b;)Lcom/avast/android/mobilesecurity/vps/c/c;

    move-result-object v7

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b;->a:[I

    invoke-virtual {p3}, Lcom/avast/android/mobilesecurity/vps/b/a;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    sget-object v8, Lcom/avast/android/mobilesecurity/vps/c/f;->c:Lcom/avast/android/mobilesecurity/vps/c/f;

    invoke-virtual {v7, v8}, Lcom/avast/android/mobilesecurity/vps/c/c;->a(Lcom/avast/android/mobilesecurity/vps/c/f;)Lcom/avast/android/mobilesecurity/vps/c/c;

    :goto_3
    new-instance v8, Ljava/util/LinkedList;

    invoke-virtual {v7}, Lcom/avast/android/mobilesecurity/vps/c/c;->b()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    if-nez v0, :cond_7

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/c/f;

    sget-object v10, Lcom/avast/android/mobilesecurity/vps/c/f;->c:Lcom/avast/android/mobilesecurity/vps/c/f;

    invoke-virtual {v10, v0}, Lcom/avast/android/mobilesecurity/vps/c/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v0, v5

    :goto_5
    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :pswitch_0
    :try_start_5
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->d:Lcom/avast/android/mobilesecurity/vps/c/f;

    invoke-virtual {v7, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->a(Lcom/avast/android/mobilesecurity/vps/c/f;)Lcom/avast/android/mobilesecurity/vps/c/c;

    move v0, v2

    goto :goto_3

    :pswitch_1
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->a:Lcom/avast/android/mobilesecurity/vps/c/f;

    invoke-virtual {v7, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->a(Lcom/avast/android/mobilesecurity/vps/c/f;)Lcom/avast/android/mobilesecurity/vps/c/c;

    move v0, v2

    goto :goto_3

    :pswitch_2
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->b:Lcom/avast/android/mobilesecurity/vps/c/f;

    invoke-virtual {v7, v0}, Lcom/avast/android/mobilesecurity/vps/c/c;->a(Lcom/avast/android/mobilesecurity/vps/c/f;)Lcom/avast/android/mobilesecurity/vps/c/c;

    move v0, v2

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Lcom/avast/android/mobilesecurity/vps/c/c;->c()Lcom/avast/android/mobilesecurity/vps/c/c;

    invoke-virtual {v7, v8}, Lcom/avast/android/mobilesecurity/vps/c/c;->a(Ljava/lang/Iterable;)Lcom/avast/android/mobilesecurity/vps/c/c;

    invoke-virtual {v7}, Lcom/avast/android/mobilesecurity/vps/c/c;->a()Lcom/avast/android/mobilesecurity/vps/c/b;

    move-result-object v7

    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-old"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v0

    if-nez v0, :cond_8

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_8
    :try_start_7
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    invoke-virtual {v7}, Lcom/avast/android/mobilesecurity/vps/c/b;->ai()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/FileOutputStream;->write([B)V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-old"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_9
    :goto_6
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object v0, v3

    :goto_7
    :try_start_b
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-old"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v0, :cond_9

    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_8
    if-eqz v4, :cond_a

    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_a
    :goto_9
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catchall_1
    move-exception v0

    :goto_a
    if-eqz v5, :cond_b

    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_b
    :goto_b
    throw v0

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v4

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v5, v3

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v0, v3

    goto/16 :goto_5

    :catchall_3
    move-exception v4

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_8

    :catch_b
    move-exception v7

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/io/File;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "SHA256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
