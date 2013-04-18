.class final Lcom/jxphone/a/a/d;
.super Ljava/lang/Thread;
.source "HttpDataSender.java"


# instance fields
.field final synthetic a:Lcom/jxphone/a/a/a;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/jxphone/a/a/h;

.field private final d:Lcom/jxphone/a/a/g;


# direct methods
.method synthetic constructor <init>(Lcom/jxphone/a/a/a;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jxphone/a/a/d;-><init>(Lcom/jxphone/a/a/a;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Lcom/jxphone/a/a/a;Ljava/lang/String;B)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 175
    iput-object p1, p0, Lcom/jxphone/a/a/d;->a:Lcom/jxphone/a/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 176
    iput-object p2, p0, Lcom/jxphone/a/a/d;->b:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lcom/jxphone/a/a/d;->c:Lcom/jxphone/a/a/h;

    .line 178
    iput-object v0, p0, Lcom/jxphone/a/a/d;->d:Lcom/jxphone/a/a/g;

    .line 179
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 184
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/jxphone/a/a/d;->a:Lcom/jxphone/a/a/a;

    invoke-static {v2}, Lcom/jxphone/a/a/a;->a(Lcom/jxphone/a/a/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jxphone/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/jxphone/a/a/d;->d:Lcom/jxphone/a/a/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jxphone/a/a/d;->d:Lcom/jxphone/a/a/g;

    invoke-interface {v1}, Lcom/jxphone/a/a/g;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 198
    :cond_1
    :goto_1
    return-void

    .line 191
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/jxphone/a/a/d;->c:Lcom/jxphone/a/a/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jxphone/a/a/d;->c:Lcom/jxphone/a/a/h;

    invoke-interface {v1}, Lcom/jxphone/a/a/h;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 194
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 193
    :catch_1
    move-exception v0

    goto :goto_2
.end method
