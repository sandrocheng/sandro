.class public final Lcom/jxphone/b/a/b;
.super Ljava/lang/Object;
.source "HttpsUrlFeedBack.java"

# interfaces
.implements Lcom/jxphone/b/a/c;


# instance fields
.field private final a:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jxphone/b/a/b;->a:Ljava/net/URL;

    .line 21
    return-void
.end method


# virtual methods
.method public final a([[Ljava/lang/String;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 25
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    array-length v1, p1

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 31
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 32
    aget-object v4, v3, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    aget-object v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 36
    sub-int v2, v1, v6

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/jxphone/b/a/b;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 41
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 45
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 46
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    move v2, v6

    .line 48
    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 49
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 50
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_2
    return v2

    :cond_3
    move v2, v7

    .line 46
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    move-object v3, v8

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 49
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 50
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    throw v0

    .line 48
    :catchall_1
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    move-object v3, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v8

    move-object v3, p0

    goto :goto_2

    :catchall_3
    move-exception v2

    move-object v3, p0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    goto :goto_2
.end method
