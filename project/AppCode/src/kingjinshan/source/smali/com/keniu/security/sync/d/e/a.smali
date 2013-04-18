.class public final Lcom/keniu/security/sync/d/e/a;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field private static final c:Ljava/lang/String; = "HttpRequest"


# instance fields
.field a:Ljava/net/HttpURLConnection;

.field b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/net/URL;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x2710

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    .line 41
    iput-object v0, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    .line 44
    iput-object p1, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    .line 45
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 46
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 47
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 48
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 49
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "mosecurity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    new-array v0, v4, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/keniu/security/sync/d/e/b;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/e/b;-><init>(Lcom/keniu/security/sync/d/e/a;)V

    aput-object v1, v0, v3

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljavax/net/ssl/KeyManager;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/keniu/security/sync/d/e/c;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/e/c;-><init>(Lcom/keniu/security/sync/d/e/a;)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    const-string v1, "HttpRequest"

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HttpRequest"

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private constructor <init>(Ljava/net/URL;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/net/HttpURLConnection;)V

    .line 66
    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .parameter

    .prologue
    const/16 v1, 0x4000

    .line 110
    monitor-enter p1

    .line 113
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 114
    if-le v1, v0, :cond_1

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    const-string v2, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 119
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    .line 120
    new-array v1, v0, [B

    .line 121
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 122
    iget-object v3, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 224
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 226
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/keniu/security/sync/d/e/b;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/e/b;-><init>(Lcom/keniu/security/sync/d/e/a;)V

    aput-object v1, v0, v2

    .line 238
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 239
    const/4 v2, 0x0

    new-array v2, v2, [Ljavax/net/ssl/KeyManager;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 240
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 241
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 242
    new-instance v0, Lcom/keniu/security/sync/d/e/c;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/e/c;-><init>(Lcom/keniu/security/sync/d/e/a;)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string v1, "HttpRequest"

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 259
    :catch_1
    move-exception v0

    .line 260
    const-string v1, "HttpRequest"

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    .line 105
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 106
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)V
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 221
    return-void
.end method

.method private e()V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/e/a;->d()V

    .line 187
    return-void
.end method

.method private f()Ljava/util/Map;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/File;)Ljava/io/InputStream;
    .locals 8
    .parameter

    .prologue
    .line 137
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "--"

    const-string v2, "\r\n"

    .line 139
    const-string v3, "multipart/form-data"

    .line 140
    const-string v4, "UTF-8"

    .line 142
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 143
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Disposition: form-data; name=\"myfile\"; filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v6, "Content-Type: application/octet-stream"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    const-string v6, "Charset"

    invoke-virtual {v2, v6, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ";boundary="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    array-length v3, v5

    int-to-long v3, v3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v3, v6

    array-length v6, v1

    int-to-long v6, v6

    add-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    const/16 v2, 0x4000

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 161
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 164
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 165
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 167
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 168
    iget-object v4, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 173
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 175
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "HttpRequest"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 212
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public final b()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 75
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final c()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 81
    const-string v0, "HttpRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 85
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/e/a;->b:Ljava/io/OutputStream;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 92
    const-string v2, "HttpRequest"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v1, "HttpRequest"

    iget-object v2, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    const-string v3, "User-Agent"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    new-instance v1, Lcom/keniu/security/sync/d/e/d;

    neg-int v0, v0

    iget-object v2, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/keniu/security/sync/d/e/d;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/e/a;->a:Ljava/net/HttpURLConnection;

    .line 183
    :cond_0
    return-void
.end method
