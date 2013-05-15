.class public Lcom/avast/android/mobilesecurity/app/manager/a/q;
.super Lcom/avast/android/mobilesecurity/app/manager/a/a;
.source "ProcStatCpuProcessesInfoProvider.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:J

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "cpu\\s+((\\d+ )+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/manager/a/q;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a;-><init>()V

    .line 35
    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/q;->b:J

    .line 36
    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/q;->c:J

    .line 37
    return-void
.end method


# virtual methods
.method protected b()F
    .locals 12

    .prologue
    .line 41
    const/high16 v1, -0x4080

    .line 43
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/proc/stat"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48
    sget-object v2, Lcom/avast/android/mobilesecurity/app/manager/a/q;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 51
    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    .line 52
    const-wide/16 v2, 0x0

    .line 53
    array-length v8, v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_1

    aget-object v9, v5, v0

    .line 54
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v2, v9

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    iget-wide v8, p0, Lcom/avast/android/mobilesecurity/app/manager/a/q;->c:J

    sub-long v8, v6, v8

    .line 57
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/q;->b:J

    sub-long v0, v2, v0

    .line 58
    sub-long v8, v0, v8

    long-to-double v8, v8

    long-to-double v0, v0

    div-double v0, v8, v0

    double-to-float v1, v0

    .line 59
    iput-wide v6, p0, Lcom/avast/android/mobilesecurity/app/manager/a/q;->c:J

    .line 60
    iput-wide v2, p0, Lcom/avast/android/mobilesecurity/app/manager/a/q;->b:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 64
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_2
    return v0

    .line 65
    :catch_0
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    .line 66
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to retrieve \'/proc/stat\' info."

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 65
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_1
.end method
