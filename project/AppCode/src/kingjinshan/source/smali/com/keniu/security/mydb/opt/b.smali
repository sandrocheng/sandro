.class public final Lcom/keniu/security/mydb/opt/b;
.super Ljava/lang/Object;
.source "DBHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/keniu/security/mydb/opt/b;


# instance fields
.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    const-string v1, "telnum2.locate"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/mydb/opt/b;->a:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/mydb/opt/b;->b:Lcom/keniu/security/mydb/opt/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/keniu/security/mydb/opt/b;->c:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/keniu/security/mydb/opt/b;->d:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/keniu/security/mydb/opt/b;->f:Ljava/util/List;

    .line 23
    return-void
.end method

.method public static a(II)I
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, -0x1

    .line 87
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/mydb/opt/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v10

    .line 115
    :goto_0
    return v0

    .line 92
    :cond_1
    const/4 v1, 0x0

    .line 93
    new-instance v2, Lcom/keniu/security/mydb/opt/c;

    invoke-direct {v2}, Lcom/keniu/security/mydb/opt/c;-><init>()V

    .line 95
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    const-wide/16 v0, 0x4

    :try_start_1
    invoke-virtual {v3, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 97
    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;

    move-result-object v0

    .line 98
    iget v0, v0, Lcom/keniu/security/mydb/opt/e;->d:I

    mul-int/lit8 v0, v0, 0x5

    int-to-long v0, v0

    invoke-static {v3, v0, v1}, Lcom/keniu/security/mydb/opt/g;->b(Ljava/io/InputStream;J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 100
    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;

    move-result-object v0

    .line 101
    iget-wide v4, v0, Lcom/keniu/security/mydb/opt/e;->e:J

    long-to-int v1, v4

    sub-int v1, p0, v1

    iget v4, v0, Lcom/keniu/security/mydb/opt/e;->d:I

    mul-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Lcom/keniu/security/mydb/opt/g;->b(Ljava/io/InputStream;J)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/keniu/security/mydb/opt/e;->c:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    int-to-long v8, p0

    sub-long/2addr v6, v8

    iget-wide v8, v0, Lcom/keniu/security/mydb/opt/e;->e:J

    long-to-int v1, v8

    int-to-long v8, v1

    add-long/2addr v6, v8

    iget v0, v0, Lcom/keniu/security/mydb/opt/e;->d:I

    int-to-long v0, v0

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 103
    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;

    .line 104
    mul-int/lit8 v0, p1, 0x2

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 106
    invoke-static {v3}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    .line 111
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    if-eqz v1, :cond_2

    .line 113
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move v0, v10

    .line 115
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    .line 113
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 115
    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 111
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_3

    .line 107
    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_1
.end method

.method public static a(J)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x7

    .line 78
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    .line 83
    :goto_0
    return v0

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 83
    invoke-static {v1, v0}, Lcom/keniu/security/mydb/opt/b;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method public static a()Lcom/keniu/security/mydb/opt/b;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/keniu/security/mydb/opt/g;->h:[B

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/keniu/security/mydb/opt/b;->b:Lcom/keniu/security/mydb/opt/b;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/keniu/security/mydb/opt/b;

    invoke-direct {v1}, Lcom/keniu/security/mydb/opt/b;-><init>()V

    .line 29
    sput-object v1, Lcom/keniu/security/mydb/opt/b;->b:Lcom/keniu/security/mydb/opt/b;

    invoke-direct {v1}, Lcom/keniu/security/mydb/opt/b;->e()Z

    .line 31
    :cond_0
    sget-object v1, Lcom/keniu/security/mydb/opt/b;->b:Lcom/keniu/security/mydb/opt/b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e(I)I
    .locals 2
    .parameter

    .prologue
    .line 160
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 161
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/mydb/opt/d;

    iget v0, p0, Lcom/keniu/security/mydb/opt/d;->c:I

    goto :goto_0
.end method

.method private e()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 36
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/mydb/opt/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v6

    .line 73
    :goto_0
    return v0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    new-instance v2, Lcom/keniu/security/mydb/opt/c;

    invoke-direct {v2}, Lcom/keniu/security/mydb/opt/c;-><init>()V

    .line 44
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const-wide/16 v0, 0x4

    :try_start_1
    invoke-virtual {v3, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 46
    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;

    move-result-object v0

    .line 47
    iget-wide v4, v0, Lcom/keniu/security/mydb/opt/e;->c:J

    iget v0, v0, Lcom/keniu/security/mydb/opt/e;->d:I

    int-to-long v0, v0

    mul-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 49
    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;

    move-result-object v0

    .line 50
    iget-wide v4, v0, Lcom/keniu/security/mydb/opt/e;->c:J

    iget v0, v0, Lcom/keniu/security/mydb/opt/e;->d:I

    invoke-static {v3, v4, v5, v0}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;JI)[[B

    move-result-object v0

    invoke-static {v0, v2}, Lcom/keniu/security/mydb/opt/g;->a([[BLcom/keniu/security/mydb/opt/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/mydb/opt/b;->f:Ljava/util/List;

    .line 53
    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;

    move-result-object v0

    .line 54
    iget-wide v0, v0, Lcom/keniu/security/mydb/opt/e;->c:J

    invoke-static {v3, v0, v1}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/mydb/opt/b;->d:Ljava/util/List;

    .line 56
    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;

    move-result-object v0

    .line 57
    iget-wide v0, v0, Lcom/keniu/security/mydb/opt/e;->c:J

    invoke-static {v3, v0, v1}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/mydb/opt/b;->c:Ljava/util/List;

    .line 59
    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;

    move-result-object v0

    .line 60
    iget-wide v4, v0, Lcom/keniu/security/mydb/opt/e;->c:J

    iget v0, v0, Lcom/keniu/security/mydb/opt/e;->d:I

    int-to-long v0, v0

    mul-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 62
    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;

    move-result-object v0

    .line 63
    iget-wide v4, v0, Lcom/keniu/security/mydb/opt/e;->c:J

    iget v0, v0, Lcom/keniu/security/mydb/opt/e;->d:I

    invoke-static {v3, v4, v5, v0, v2}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;JILcom/keniu/security/mydb/opt/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 64
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 73
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    if-eqz v1, :cond_2

    .line 71
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    move v0, v6

    .line 73
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    .line 71
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 73
    :cond_3
    :goto_5
    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    .line 69
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_4

    .line 65
    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_2
.end method

.method private f()V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/keniu/security/mydb/opt/g;->h:[B

    monitor-enter v0

    .line 177
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/keniu/security/mydb/opt/b;->b:Lcom/keniu/security/mydb/opt/b;

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/keniu/security/mydb/opt/b;->c:Ljava/util/List;

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/keniu/security/mydb/opt/b;->d:Ljava/util/List;

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/keniu/security/mydb/opt/b;->f:Ljava/util/List;

    .line 182
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 136
    if-gtz p1, :cond_0

    const-string v0, "unkown_str"

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->c:Ljava/util/List;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/keniu/security/mydb/opt/d;
    .locals 2
    .parameter

    .prologue
    .line 145
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/mydb/opt/d;

    move-object v0, p0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 165
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->f:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v5

    .line 172
    :goto_0
    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v5

    .line 167
    :goto_1
    if-ge v2, v1, :cond_2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/mydb/opt/f;

    iget-object v0, v0, Lcom/keniu/security/mydb/opt/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/mydb/opt/f;

    iget v0, p0, Lcom/keniu/security/mydb/opt/f;->b:I

    goto :goto_0

    .line 167
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v5

    .line 172
    goto :goto_0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 150
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "unkown_str"

    .line 151
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    sub-int v2, p1, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/mydb/opt/d;

    iget v0, v0, Lcom/keniu/security/mydb/opt/d;->d:I

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/keniu/security/mydb/opt/b;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    sub-int v3, p1, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/mydb/opt/d;

    iget v0, v0, Lcom/keniu/security/mydb/opt/d;->c:I

    sub-int/2addr v0, v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/mydb/opt/b;->c:Ljava/util/List;

    sub-int v2, p1, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d(I)I
    .locals 2
    .parameter

    .prologue
    .line 155
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 156
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/mydb/opt/d;

    iget v0, p0, Lcom/keniu/security/mydb/opt/d;->a:I

    goto :goto_0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/b;->e:Ljava/util/List;

    return-object v0
.end method
