.class public Lcom/avast/android/mobilesecurity/app/manager/a/n;
.super Ljava/lang/Object;
.source "MemoryInfoProviderImpl.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/manager/a/l;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "MemTotal:\\s+(\\d+) kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/n;->a:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "MemFree:\\s*(\\d+) kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/n;->b:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "Cached:\\s*(\\d+) kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/n;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public c()Lcom/avast/android/mobilesecurity/app/manager/a/m;
    .locals 7

    .prologue
    .line 55
    new-instance v1, Lcom/avast/android/mobilesecurity/app/manager/a/p;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/a/p;-><init>(Lcom/avast/android/mobilesecurity/app/manager/a/n;Lcom/avast/android/mobilesecurity/app/manager/a/o;)V

    .line 57
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/meminfo"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 60
    const/4 v0, 0x0

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 63
    sget-object v4, Lcom/avast/android/mobilesecurity/app/manager/a/n;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 64
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/avast/android/mobilesecurity/app/manager/a/p;->b:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to retrieve meminfo."

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :goto_1
    return-object v1

    .line 68
    :cond_1
    :try_start_1
    sget-object v4, Lcom/avast/android/mobilesecurity/app/manager/a/n;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    sget-object v4, Lcom/avast/android/mobilesecurity/app/manager/a/n;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 76
    goto :goto_0

    .line 79
    :cond_3
    int-to-long v3, v0

    iput-wide v3, v1, Lcom/avast/android/mobilesecurity/app/manager/a/p;->c:J

    .line 80
    iget-wide v3, v1, Lcom/avast/android/mobilesecurity/app/manager/a/p;->b:J

    iget-wide v5, v1, Lcom/avast/android/mobilesecurity/app/manager/a/p;->c:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    iget-wide v3, v1, Lcom/avast/android/mobilesecurity/app/manager/a/p;->b:J

    long-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, v1, Lcom/avast/android/mobilesecurity/app/manager/a/p;->a:F

    .line 81
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public d()Lcom/avast/android/mobilesecurity/app/manager/a/m;
    .locals 10

    .prologue
    const-wide/16 v8, 0x400

    .line 90
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/p;-><init>(Lcom/avast/android/mobilesecurity/app/manager/a/n;Lcom/avast/android/mobilesecurity/app/manager/a/o;)V

    .line 91
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 95
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    .line 96
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v6, v1

    mul-long v1, v6, v2

    .line 97
    div-long v3, v4, v8

    iput-wide v3, v0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->b:J

    .line 98
    div-long/2addr v1, v8

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->c:J

    .line 99
    iget-wide v1, v0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->b:J

    iget-wide v3, v0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->c:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    iget-wide v3, v0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->b:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/avast/android/mobilesecurity/app/manager/a/p;->a:F

    .line 101
    :cond_0
    return-object v0
.end method
