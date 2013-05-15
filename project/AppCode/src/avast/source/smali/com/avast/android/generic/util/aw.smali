.class public Lcom/avast/android/generic/util/aw;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# static fields
.field private static e:Lcom/avast/android/generic/util/aw;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v1, p0, Lcom/avast/android/generic/util/aw;->a:I

    .line 12
    iput v0, p0, Lcom/avast/android/generic/util/aw;->b:I

    .line 13
    iput v0, p0, Lcom/avast/android/generic/util/aw;->c:I

    .line 14
    iput-boolean v0, p0, Lcom/avast/android/generic/util/aw;->d:Z

    .line 69
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 82
    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 84
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/avast/android/generic/util/aw;->a:I

    .line 85
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/avast/android/generic/util/aw;->b:I

    .line 86
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/avast/android/generic/util/aw;->c:I

    .line 87
    const/4 v2, 0x3

    aget-object v1, v1, v2

    const-string v2, "BETA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/avast/android/generic/util/aw;->d:Z

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 101
    :goto_1
    return-void

    .line 88
    :cond_1
    array-length v2, v1

    if-ne v2, v4, :cond_0

    .line 90
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/avast/android/generic/util/aw;->a:I

    .line 91
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/avast/android/generic/util/aw;->b:I

    .line 92
    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/avast/android/generic/util/aw;->c:I

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/avast/android/generic/util/aw;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;I)Lcom/avast/android/generic/util/aw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    sget-object v0, Lcom/avast/android/generic/util/aw;->e:Lcom/avast/android/generic/util/aw;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/avast/android/generic/util/aw;->e:Lcom/avast/android/generic/util/aw;

    .line 60
    :goto_0
    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/avast/android/generic/util/aw;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/generic/util/aw;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/avast/android/generic/util/aw;->e:Lcom/avast/android/generic/util/aw;

    .line 60
    sget-object v0, Lcom/avast/android/generic/util/aw;->e:Lcom/avast/android/generic/util/aw;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/avast/android/generic/util/aw;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/avast/android/generic/util/aw;->a:I

    add-int/lit8 v0, v0, -0x2

    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/avast/android/generic/util/aw;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/avast/android/generic/util/aw;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/avast/android/generic/util/aw;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/avast/android/generic/util/aw;->d:Z

    if-eqz v0, :cond_0

    const-string v0, " BETA"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
