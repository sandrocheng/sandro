.class public final Lcom/tencent/feedback/eup/g;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/text/DecimalFormat;

.field private b:Ljava/io/FileReader;

.field private c:Ljava/io/BufferedReader;

.field private d:J

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/feedback/eup/g;->a:Ljava/text/DecimalFormat;

    .line 14
    iput-object v2, p0, Lcom/tencent/feedback/eup/g;->b:Ljava/io/FileReader;

    .line 15
    iput-object v2, p0, Lcom/tencent/feedback/eup/g;->c:Ljava/io/BufferedReader;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/eup/g;->g:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 19

    .prologue
    .line 33
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/stat"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/feedback/eup/g;->b:Ljava/io/FileReader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/io/BufferedReader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/feedback/eup/g;->b:Ljava/io/FileReader;

    const/16 v4, 0x1f4

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/feedback/eup/g;->c:Ljava/io/BufferedReader;

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/eup/g;->c:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "cpu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[ ]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x6

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const/4 v7, 0x7

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    add-long v7, v3, v5

    const/4 v9, 0x4

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    const/4 v9, 0x5

    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/tencent/feedback/eup/g;->f:J

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/tencent/feedback/eup/g;->f:J

    cmp-long v2, v7, v9

    if-ltz v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/tencent/feedback/eup/g;->d:J

    sub-long v9, v3, v9

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/tencent/feedback/eup/g;->e:J

    sub-long v11, v5, v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/tencent/feedback/eup/g;->f:J

    sub-long v13, v7, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/eup/g;->a:Ljava/text/DecimalFormat;

    add-long v15, v9, v11

    long-to-double v15, v15

    const-wide/high16 v17, 0x4059

    mul-double v15, v15, v17

    long-to-double v0, v13

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/feedback/eup/g;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/eup/g;->a:Ljava/text/DecimalFormat;

    long-to-double v9, v9

    const-wide/high16 v15, 0x4059

    mul-double/2addr v9, v15

    long-to-double v15, v13

    div-double/2addr v9, v15

    invoke-virtual {v2, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/eup/g;->a:Ljava/text/DecimalFormat;

    long-to-double v9, v11

    const-wide/high16 v11, 0x4059

    mul-double/2addr v9, v11

    long-to-double v11, v13

    div-double/2addr v9, v11

    invoke-virtual {v2, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/tencent/feedback/eup/g;->d:J

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/tencent/feedback/eup/g;->e:J

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/tencent/feedback/eup/g;->f:J

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/eup/g;->b:Ljava/io/FileReader;

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/eup/g;->c:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/eup/g;->g:Ljava/lang/String;

    return-object v2

    .line 33
    :catch_0
    move-exception v2

    const-string v2, "RP"

    const-string v3, "Could not read /proc/stat"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "RP"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
