.class public final Lcom/keniu/security/commumgr/a/b;
.super Lcom/keniu/security/commumgr/a/d;
.source "RpActReport.java"


# static fields
.field private static a:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/keniu/security/commumgr/a/b;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/keniu/security/commumgr/a/d;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/keniu/security/commumgr/a/t;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 136
    :try_start_0
    invoke-static {p0, p1}, Lcom/keniu/security/commumgr/a/b;->c(Landroid/content/Context;Lcom/keniu/security/commumgr/a/t;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/keniu/security/commumgr/a/t;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 66
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->C:Ljava/lang/String;

    .line 68
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {p1, p0}, Lcom/keniu/security/commumgr/a/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v9

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 78
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v6, v11, :cond_0

    .line 79
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "="

    invoke-virtual {v5, v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    const-string v8, "="

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v10

    invoke-direct {v6, v7, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :cond_1
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 87
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 91
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_2
    new-instance v1, Lcom/keniu/security/commumgr/a/p;

    sget-object v2, Lcom/keniu/security/commumgr/a/q;->b:Lcom/keniu/security/commumgr/a/q;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error Response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/commumgr/a/p;-><init>(Lcom/keniu/security/commumgr/a/q;[Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Lcom/keniu/security/commumgr/a/p;

    sget-object v2, Lcom/keniu/security/commumgr/a/q;->b:Lcom/keniu/security/commumgr/a/q;

    new-array v3, v10, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/commumgr/a/p;-><init>(Lcom/keniu/security/commumgr/a/q;[Ljava/lang/String;)V

    throw v1

    .line 97
    :catch_1
    move-exception v0

    .line 98
    new-instance v1, Lcom/keniu/security/commumgr/a/p;

    sget-object v2, Lcom/keniu/security/commumgr/a/q;->b:Lcom/keniu/security/commumgr/a/q;

    new-array v3, v10, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/commumgr/a/p;-><init>(Lcom/keniu/security/commumgr/a/q;[Ljava/lang/String;)V

    throw v1

    .line 99
    :catch_2
    move-exception v0

    .line 100
    new-instance v1, Lcom/keniu/security/commumgr/a/p;

    sget-object v2, Lcom/keniu/security/commumgr/a/q;->b:Lcom/keniu/security/commumgr/a/q;

    new-array v3, v10, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/commumgr/a/p;-><init>(Lcom/keniu/security/commumgr/a/q;[Ljava/lang/String;)V

    throw v1
.end method

.method private static c(Landroid/content/Context;Lcom/keniu/security/commumgr/a/t;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x1388

    const/4 v6, 0x0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p0}, Lcom/keniu/security/commumgr/a/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keniu/security/commumgr/a/e;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 116
    invoke-virtual {p0, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 118
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 119
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 121
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 122
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 123
    new-instance v1, Lcom/keniu/security/commumgr/a/p;

    sget-object v2, Lcom/keniu/security/commumgr/a/q;->b:Lcom/keniu/security/commumgr/a/q;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/commumgr/a/p;-><init>(Lcom/keniu/security/commumgr/a/q;[Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 127
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 129
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 130
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    .line 131
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 34
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/commumgr/a/t;

    .line 36
    const-string v1, ""

    .line 40
    :try_start_0
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    sget-object v2, Lcom/keniu/security/commumgr/a/e;->z:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/keniu/security/commumgr/a/b;->c(Landroid/content/Context;Lcom/keniu/security/commumgr/a/t;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/keniu/security/commumgr/a/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 52
    :cond_1
    :goto_0
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const-string v0, "retfile"

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_2

    .line 56
    new-instance v2, Lcom/keniu/security/commumgr/a/p;

    sget-object v3, Lcom/keniu/security/commumgr/a/q;->b:Lcom/keniu/security/commumgr/a/q;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/keniu/security/commumgr/a/p;-><init>(Lcom/keniu/security/commumgr/a/q;[Ljava/lang/String;)V

    throw v2

    .line 42
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 44
    :catch_1
    move-exception v0

    throw v0

    .line 46
    :catch_2
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/keniu/security/commumgr/a/p;

    sget-object v2, Lcom/keniu/security/commumgr/a/q;->b:Lcom/keniu/security/commumgr/a/q;

    new-array v3, v5, [Ljava/lang/String;

    array-length v4, v0

    sub-int/2addr v4, v5

    aget-object v0, v0, v4

    aput-object v0, v3, v6

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/commumgr/a/p;-><init>(Lcom/keniu/security/commumgr/a/q;[Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_2
    new-instance v2, Lcom/keniu/security/commumgr/a/p;

    sget-object v3, Lcom/keniu/security/commumgr/a/q;->b:Lcom/keniu/security/commumgr/a/q;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/keniu/security/commumgr/a/p;-><init>(Lcom/keniu/security/commumgr/a/q;[Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_3
    sput-boolean v5, Lcom/keniu/security/commumgr/a/e;->w:Z

    .line 62
    return-void
.end method
