.class public Lcom/a/a/a/a/a;
.super Landroid/os/AsyncTask;
.source "HttpAsyncClient.java"


# static fields
.field private static final a:Ljava/lang/String; = null

.field private static final b:Z = true

.field private static e:Ljava/lang/String;


# instance fields
.field private c:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private d:Lorg/apache/http/client/methods/HttpUriRequest;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/HashMap;

.field private h:Lcom/a/a/a/a/d;

.field private i:Lcom/a/a/a/a/e;

.field private j:Lcom/a/a/a/a/f;

.field private k:Lcom/a/a/a/a/c;

.field private l:Lcom/a/a/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/a/a/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 101
    return-void
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 136
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 137
    aget-object v1, p1, v8

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/a/a/a/a/a;->f:Ljava/lang/String;

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/a/a/a/a/a;->f:Ljava/lang/String;

    .line 140
    if-nez v1, :cond_1

    .line 141
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "the url must not be mull!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_1
    sget-object v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin execute http request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/a/a/a/a/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v3, 0x7fffffff

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/a/a/a/a/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 150
    iget-object v4, p0, Lcom/a/a/a/a/a;->g:Ljava/util/HashMap;

    .line 154
    if-eqz v4, :cond_3

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/a/a/a/a/a;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 157
    iget-object v3, p0, Lcom/a/a/a/a/a;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 158
    sget-object v1, Lcom/a/a/a/a/a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    const-string v1, "User-Agent"

    sget-object v2, Lcom/a/a/a/a/a;->e:Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    if-eqz v4, :cond_5

    instance-of v1, v3, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_5

    .line 163
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 176
    :catch_0
    move-exception v1

    .line 177
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v8

    invoke-virtual {p0, v2}, Lcom/a/a/a/a/a;->publishProgress([Ljava/lang/Object;)V

    .line 179
    sget-object v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    return-object v1

    .line 154
    :cond_3
    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 168
    :cond_4
    move-object v0, v3

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v2, v5, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 171
    :cond_5
    iget-object v1, p0, Lcom/a/a/a/a/a;->i:Lcom/a/a/a/a/e;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/a/a/a/a/a;->i:Lcom/a/a/a/a/e;

    .line 172
    :cond_6
    iget-object v1, p0, Lcom/a/a/a/a/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 173
    iget-object v1, p0, Lcom/a/a/a/a/a;->j:Lcom/a/a/a/a/f;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/a/a/a/a/a;->j:Lcom/a/a/a/a/f;

    invoke-interface {v1}, Lcom/a/a/a/a/f;->a()Z

    move-result v1

    .line 175
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    :cond_7
    move v1, v8

    goto :goto_3
.end method

.method private static a()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method private a(Lcom/a/a/a/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/a/b;

    .line 77
    return-void
.end method

.method private a(Lcom/a/a/a/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/a/a/a/a/a;->k:Lcom/a/a/a/a/c;

    .line 73
    return-void
.end method

.method private a(Lcom/a/a/a/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/a/a/a/a/a;->h:Lcom/a/a/a/a/d;

    .line 61
    return-void
.end method

.method private a(Lcom/a/a/a/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/a/a/a/a/a;->i:Lcom/a/a/a/a/e;

    .line 65
    return-void
.end method

.method private a(Lcom/a/a/a/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/a/a/a/a/a;->j:Lcom/a/a/a/a/f;

    .line 69
    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 211
    invoke-direct {p0}, Lcom/a/a/a/a/a;->d()V

    .line 212
    iget-object v0, p0, Lcom/a/a/a/a/a;->k:Lcom/a/a/a/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/a;->k:Lcom/a/a/a/a/c;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 213
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/a/a/a/a/a;->f:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/a/a/a/a/a;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/a;->g:Ljava/util/HashMap;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/a/a/a/a/a;->g:Ljava/util/HashMap;

    .line 91
    return-void
.end method

.method private a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/a/a/a/a/a;->j:Lcom/a/a/a/a/f;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/a/a/a/a/a;->j:Lcom/a/a/a/a/f;

    invoke-interface {v0}, Lcom/a/a/a/a/f;->a()Z

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/a/b;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/a/b;

    .line 131
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Boolean;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/a/a/a/a/a;->k:Lcom/a/a/a/a/c;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/a/a/a/a/a;->k:Lcom/a/a/a/a/c;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 222
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sput-object p0, Lcom/a/a/a/a/a;->e:Ljava/lang/String;

    .line 87
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/a/a/a/a/a;->i:Lcom/a/a/a/a/e;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/a/a/a/a/a;->i:Lcom/a/a/a/a/e;

    .line 206
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    sget-object v0, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "Close the http connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/a/a/a/a/a;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/a/a/a/a/a;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 235
    iput-object v2, p0, Lcom/a/a/a/a/a;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/a/a/a/a/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 239
    iput-object v2, p0, Lcom/a/a/a/a/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 241
    :cond_1
    iput-object v2, p0, Lcom/a/a/a/a/a;->f:Ljava/lang/String;

    .line 242
    iput-object v2, p0, Lcom/a/a/a/a/a;->g:Ljava/util/HashMap;

    .line 243
    return-void
.end method

.method private static e()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 248
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 249
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 251
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 252
    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 253
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 254
    return-object v1
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/a/a/a/a/a;->a([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 227
    invoke-direct {p0}, Lcom/a/a/a/a/a;->d()V

    .line 228
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/a/a/a/a/a;->d()V

    iget-object v0, p0, Lcom/a/a/a/a/a;->k:Lcom/a/a/a/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/a;->k:Lcom/a/a/a/a/c;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 110
    iget-object v0, p0, Lcom/a/a/a/a/a;->h:Lcom/a/a/a/a/d;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/a/a/a/a/a;->h:Lcom/a/a/a/a/d;

    .line 113
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 118
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 119
    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/a/b;

    .line 122
    :cond_0
    return-void
.end method
