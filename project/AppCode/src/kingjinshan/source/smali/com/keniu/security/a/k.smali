.class public final Lcom/keniu/security/a/k;
.super Ljava/lang/Object;
.source "DexDecoder.java"


# instance fields
.field private a:Ljava/util/zip/ZipEntry;

.field private b:Ljava/util/zip/ZipFile;


# direct methods
.method private constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/keniu/security/a/k;->a:Ljava/util/zip/ZipEntry;

    .line 18
    iput-object v0, p0, Lcom/keniu/security/a/k;->b:Ljava/util/zip/ZipFile;

    .line 20
    iput-object p2, p0, Lcom/keniu/security/a/k;->a:Ljava/util/zip/ZipEntry;

    .line 21
    iput-object p1, p0, Lcom/keniu/security/a/k;->b:Ljava/util/zip/ZipFile;

    .line 22
    return-void
.end method

.method private static a(Ljava/io/InputStream;)J
    .locals 9
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 25
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 28
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    .line 29
    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-long v3, v3

    .line 30
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    .line 31
    const/4 v7, 0x3

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    int-to-long v7, v0

    .line 33
    or-long v0, v1, v3

    or-long/2addr v0, v5

    or-long/2addr v0, v7

    .line 35
    return-wide v0
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;)Ljava/util/ArrayList;
    .locals 15
    .parameter

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 50
    const-string v1, "classes.dex"

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 51
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->mark(I)V

    .line 53
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 54
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 55
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 56
    const-wide/16 v5, 0x38

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    .line 57
    invoke-static {v4}, Lcom/keniu/security/a/k;->a(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 58
    invoke-static {v4}, Lcom/keniu/security/a/k;->a(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 59
    const-wide/16 v9, 0x0

    :goto_0
    cmp-long v1, v9, v5

    if-gez v1, :cond_1

    .line 61
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 62
    const-wide/16 v11, 0x4

    mul-long/2addr v11, v9

    add-long/2addr v11, v7

    invoke-virtual {v4, v11, v12}, Ljava/io/InputStream;->skip(J)J

    .line 63
    invoke-static {v4}, Lcom/keniu/security/a/k;->a(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 64
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 65
    invoke-virtual {v4, v11, v12}, Ljava/io/InputStream;->skip(J)J

    .line 66
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 67
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 68
    const/4 v3, 0x0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 69
    new-array v1, v1, [B

    .line 70
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 71
    array-length v3, v1

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v11, 0x4c

    if-ne v3, v11, :cond_0

    .line 74
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v14

    invoke-virtual {v1, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move v1, v13

    .line 82
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 83
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/keniu/security/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    :cond_2
    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 14
    .parameter

    .prologue
    const/4 v12, 0x0

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    const/4 v1, 0x0

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 97
    const-string v4, "classes.dex"

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 98
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->mark(I)V

    .line 100
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 101
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 102
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    .line 103
    const-wide/16 v3, 0x38

    invoke-virtual {v5, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 104
    invoke-static {v5}, Lcom/keniu/security/a/k;->a(Ljava/io/InputStream;)J

    move-result-wide v3

    .line 105
    invoke-static {v5}, Lcom/keniu/security/a/k;->a(Ljava/io/InputStream;)J

    move-result-wide v6

    .line 106
    const-wide/16 v8, 0x0

    :goto_0
    cmp-long v1, v8, v3

    if-gez v1, :cond_1

    .line 110
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    .line 111
    const-wide/16 v10, 0x4

    mul-long/2addr v10, v8

    add-long/2addr v10, v6

    invoke-virtual {v5, v10, v11}, Ljava/io/InputStream;->skip(J)J

    .line 112
    invoke-static {v5}, Lcom/keniu/security/a/k;->a(Ljava/io/InputStream;)J

    move-result-wide v10

    .line 113
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    .line 114
    invoke-virtual {v5, v10, v11}, Ljava/io/InputStream;->skip(J)J

    .line 115
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 116
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 117
    const/4 v10, 0x0

    aget-byte v1, v1, v10

    and-int/lit16 v1, v1, 0xff

    .line 118
    new-array v1, v1, [B

    .line 119
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 120
    array-length v10, v1

    if-lez v10, :cond_0

    const/4 v10, 0x0

    aget-byte v10, v1, v10

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_0

    .line 123
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>([B)V

    .line 124
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 108
    :cond_0
    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    .line 134
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move v1, v12

    .line 140
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 141
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 135
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 127
    :catch_1
    move-exception v3

    move-object v13, v3

    move-object v3, v1

    move-object v1, v13

    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 134
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 135
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 138
    :goto_5
    throw v0

    .line 135
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 143
    :cond_2
    return-object v0

    .line 133
    :catchall_1
    move-exception v0

    move-object v1, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_4

    .line 127
    :catch_4
    move-exception v1

    move-object v3, v5

    goto :goto_3
.end method

.method private b(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .parameter

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/a/k;->b:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/keniu/security/a/k;->a:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
