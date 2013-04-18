.class public final Lcom/keniu/security/f/g;
.super Ljava/lang/Object;
.source "IniReader.java"


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/f/g;->a:Ljava/util/Map;

    .line 23
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 25
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 26
    new-array v1, v1, [B

    .line 27
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 29
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v2, v1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 31
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "utf-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 33
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 38
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/keniu/security/f/g;->a:Ljava/util/Map;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    .line 52
    :goto_1
    if-eqz v2, :cond_0

    .line 53
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 56
    :cond_0
    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 60
    :cond_1
    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 65
    :cond_2
    :goto_2
    return-void

    .line 52
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 56
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 60
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 65
    :catch_1
    move-exception v0

    goto :goto_2

    .line 50
    :catchall_0
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    .line 52
    :goto_3
    if-eqz v3, :cond_4

    .line 53
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 56
    :cond_4
    if-eqz v2, :cond_5

    .line 57
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 60
    :cond_5
    if-eqz v1, :cond_6

    .line 61
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 63
    :cond_6
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_4

    .line 50
    :catchall_1
    move-exception v1

    move-object v2, v5

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :catchall_3
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_3

    .line 63
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v0, v5

    move-object v1, v5

    move-object v2, v5

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v1, v5

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :catch_6
    move-exception v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/keniu/security/f/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
