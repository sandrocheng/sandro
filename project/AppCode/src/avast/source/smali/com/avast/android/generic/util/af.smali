.class public Lcom/avast/android/generic/util/af;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method public static varargs a([Ljava/io/Closeable;)V
    .locals 3
    .parameter

    .prologue
    .line 19
    if-nez p0, :cond_1

    .line 35
    :cond_0
    return-void

    .line 22
    :cond_1
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 24
    if-eqz v2, :cond_2

    .line 28
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static varargs a([Ljava/net/HttpURLConnection;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    if-nez p0, :cond_1

    .line 55
    :cond_0
    return-void

    .line 42
    :cond_1
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 44
    if-eqz v2, :cond_2

    .line 48
    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    goto :goto_1
.end method
