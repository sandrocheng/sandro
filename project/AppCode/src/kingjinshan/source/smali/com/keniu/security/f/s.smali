.class public final Lcom/keniu/security/f/s;
.super Ljava/lang/Object;
.source "UpdateCache.java"


# static fields
.field private static final b:Ljava/lang/String; = ".tmp"

.field private static final c:J = 0xa4cb800L

.field private static d:Lcom/keniu/security/f/s;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/keniu/security/f/s;
    .locals 2

    .prologue
    .line 10
    const-class v0, Lcom/keniu/security/f/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/f/s;->d:Lcom/keniu/security/f/s;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/keniu/security/f/s;

    invoke-direct {v1}, Lcom/keniu/security/f/s;-><init>()V

    sput-object v1, Lcom/keniu/security/f/s;->d:Lcom/keniu/security/f/s;

    .line 14
    :cond_0
    sget-object v1, Lcom/keniu/security/f/s;->d:Lcom/keniu/security/f/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 106
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 107
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 109
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 114
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x1000

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 115
    if-lez v3, :cond_0

    .line 117
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 126
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/f/k;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 47
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 48
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 49
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/f/k;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    .line 19
    invoke-static {p1}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/s;->a:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keniu/security/f/s;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 24
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    sub-long/2addr v0, v2

    .line 25
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/keniu/security/f/s;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 27
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 29
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 25
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gez v6, :cond_0

    .line 35
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/f/s;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 71
    invoke-static {p3}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-static {v1}, Lcom/keniu/security/f/s;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v2}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 89
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 94
    :cond_1
    return v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keniu/security/f/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
