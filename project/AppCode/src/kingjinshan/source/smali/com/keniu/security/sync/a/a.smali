.class public final Lcom/keniu/security/sync/a/a;
.super Ljava/lang/Object;
.source "Account.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 185
    sparse-switch p0, :sswitch_data_0

    .line 197
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :sswitch_0
    move v0, p0

    .line 190
    goto :goto_0

    .line 194
    :sswitch_1
    const/4 v0, -0x4

    .line 195
    goto :goto_0

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        -0xd -> :sswitch_0
        -0xa -> :sswitch_0
        -0x5 -> :sswitch_1
        -0x4 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jn;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jk;->J()Lcom/keniu/security/sync/d/d/a/jl;

    move-result-object v0

    .line 87
    const-string v1, "12004"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/jl;->d(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jl;

    .line 88
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/jl;->a(I)Lcom/keniu/security/sync/d/d/a/jl;

    .line 89
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jl;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jl;

    .line 90
    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/jl;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jl;

    .line 91
    invoke-virtual {v0, p2}, Lcom/keniu/security/sync/d/d/a/jl;->c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jl;

    .line 92
    invoke-virtual {v0, p3}, Lcom/keniu/security/sync/d/d/a/jl;->e(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jl;

    .line 97
    :try_start_0
    const-string v1, "http://login.cloud2.1tpan.com/3/login"

    invoke-static {v1}, Lcom/keniu/security/sync/a/a;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 98
    if-nez v1, :cond_0

    move-object v0, v3

    .line 113
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jl;->i()Lcom/keniu/security/sync/d/d/a/jk;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keniu/security/sync/d/d/a/jk;->a(Ljava/io/OutputStream;)V

    .line 103
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 104
    const/16 v2, 0xc8

    if-ne v2, v0, :cond_1

    .line 105
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jn;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 4
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jq;->l()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jr;

    .line 60
    const/4 v1, 0x0

    .line 61
    const-string v2, "http://login.cloud2.1tpan.com/3/logout"

    invoke-static {v2}, Lcom/keniu/security/sync/a/a;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 64
    :try_start_0
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jr;->i()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/keniu/security/sync/d/d/a/jq;->a(Ljava/io/OutputStream;)V

    .line 66
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 67
    const/16 v3, 0xc8

    if-ne v3, v0, :cond_0

    .line 68
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jt;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, v1

    .line 78
    :goto_1
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 120
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 124
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 125
    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, p0

    .line 137
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    .line 135
    goto :goto_0

    .line 132
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, p0

    goto :goto_2

    .line 129
    :catch_3
    move-exception v0

    move-object v1, p0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> verify #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    .line 31
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "passport"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "code"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://i.ijinshan.com/register/mobile/verify?ajax=1&source=mweishi"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 37
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 39
    invoke-static {v1}, Lcom/keniu/security/sync/l;->a(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>> HTTP_OK ERRORNO = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "errno"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const-string v1, ">>>>> VERIFY SUCCESS"

    invoke-static {p0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    .line 45
    :cond_0
    const-string v1, ">>>>> VERIFY FAIL"

    invoke-static {p0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 48
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>> RESPONSE_CODE ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> registe #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "mobile"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "repassword"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "http://i.ijinshan.com/register/mobile?ajax=1&source=mweishi"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 156
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 157
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 159
    invoke-static {v0}, Lcom/keniu/security/sync/l;->a(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v0

    .line 160
    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> HTTP_OK ERRORNO = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x1

    .line 171
    :goto_0
    :sswitch_0
    return v0

    .line 162
    :sswitch_1
    const/4 v0, -0x4

    goto :goto_0

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> RESPONSE_CODE ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/16 v0, 0x3fe

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const/16 v1, 0x3ff

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 162
    nop

    :sswitch_data_0
    .sparse-switch
        -0xd -> :sswitch_0
        -0xa -> :sswitch_0
        -0x5 -> :sswitch_1
        -0x4 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
