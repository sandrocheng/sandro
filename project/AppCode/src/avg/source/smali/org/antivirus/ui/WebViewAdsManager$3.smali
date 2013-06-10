.class Lorg/antivirus/ui/WebViewAdsManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lorg/antivirus/ui/WebViewAdsManager;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/WebViewAdsManager;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/WebViewAdsManager$3;->c:Lorg/antivirus/ui/WebViewAdsManager;

    iput-object p2, p0, Lorg/antivirus/ui/WebViewAdsManager$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/antivirus/ui/WebViewAdsManager$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/antivirus/ui/WebViewAdsManager$3;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    :try_start_1
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Cache-Control"

    const-string v3, "no-cache"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Pragma"

    const-string v3, "no-cache"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v5

    const/16 v1, 0x400

    :try_start_3
    new-array v1, v1, [C

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    :try_start_4
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    :goto_1
    :try_start_5
    iget-object v2, p0, Lorg/antivirus/ui/WebViewAdsManager$3;->c:Lorg/antivirus/ui/WebViewAdsManager;

    invoke-static {v2}, Lorg/antivirus/ui/WebViewAdsManager;->e(Lorg/antivirus/ui/WebViewAdsManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_2
    :try_start_6
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_5
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :cond_5
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/antivirus/ui/WebViewAdsManager$3;->b:Landroid/app/Activity;

    new-instance v6, Lorg/antivirus/ui/WebViewAdsManager$3$1;

    invoke-direct {v6, p0, v1}, Lorg/antivirus/ui/WebViewAdsManager$3$1;-><init>(Lorg/antivirus/ui/WebViewAdsManager$3;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :goto_6
    if-eqz v5, :cond_6

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    :cond_6
    :goto_7
    :try_start_d
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :goto_8
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_6

    :catch_2
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_7

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_4

    :catch_6
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    :goto_9
    if-eqz v3, :cond_7

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    :cond_7
    :goto_a
    if-eqz v5, :cond_8

    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    :cond_8
    :goto_b
    if-eqz v4, :cond_9

    :try_start_10
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    :cond_9
    :goto_c
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v0

    :catch_7
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_a

    :catch_8
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_b

    :catch_9
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_c

    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    :catchall_3
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    :catchall_4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_2

    :catch_b
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_2

    :catch_c
    move-exception v1

    move-object v3, v2

    move-object v4, v5

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_2

    :catch_d
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_2
.end method
