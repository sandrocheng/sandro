.class public final Lcom/keniu/security/sync/c/d;
.super Lcom/keniu/security/sync/c/g;
.source "DownloadTask.java"


# instance fields
.field a:[I

.field private d:[Z

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 38
    const v0, 0x7f0b0899

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Lcom/keniu/security/sync/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/keniu/security/sync/c/d;->d:[Z

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/keniu/security/sync/c/d;->a:[I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/sync/c/d;->f:I

    .line 39
    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->d:[Z

    const-string v1, "contact"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    aput-boolean v1, v0, v3

    .line 40
    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->d:[Z

    const/4 v1, 0x1

    const-string v2, "sms"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 41
    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->d:[Z

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 42
    iput p4, p0, Lcom/keniu/security/sync/c/d;->f:I

    .line 43
    return-void

    .line 26
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 28
    :array_1
    .array-data 0x4
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;[ZLandroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    const v0, 0x7f0b0899

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p1}, Lcom/keniu/security/sync/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/keniu/security/sync/c/d;->d:[Z

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/keniu/security/sync/c/d;->a:[I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/sync/c/d;->f:I

    .line 33
    iput-object p2, p0, Lcom/keniu/security/sync/c/d;->d:[Z

    .line 34
    const-string v0, "firewall_user_rules.db"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/c/d;->e:Ljava/lang/String;

    .line 35
    return-void

    .line 26
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 28
    :array_1
    .array-data 0x4
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private c(I)Z
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x2713

    const/16 v4, -0xb

    const/4 v3, 0x0

    .line 98
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 100
    if-ne p1, v5, :cond_0

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    aget v1, v1, v0

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    aget v1, v1, v0

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    aget v1, v1, v0

    const/16 v2, 0x2715

    if-eq v1, v2, :cond_0

    move v0, v3

    .line 107
    :goto_1
    return v0

    .line 104
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    move v0, v3

    goto :goto_1

    .line 105
    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    aget v1, v1, v0

    if-eq v1, v4, :cond_2

    move v0, v3

    goto :goto_1

    .line 98
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x2712

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    .line 48
    aget-object v0, p1, v5

    .line 49
    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :try_start_0
    new-instance v1, Lcom/keniu/security/sync/a/a;

    invoke-direct {v1}, Lcom/keniu/security/sync/a/a;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/sync/c/d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/keniu/security/sync/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0.0.0.001"

    invoke-static {v1, v0, v2, v3}, Lcom/keniu/security/sync/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jn;->n()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v0, 0x2711

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->d:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    const-string v2, "contact"

    sget-object v3, Lcom/keniu/security/sync/r;->aC:Ljava/lang/String;

    iget-object v4, p0, Lcom/keniu/security/sync/c/d;->b:Landroid/content/Context;

    iget v4, p0, Lcom/keniu/security/sync/c/d;->f:I

    invoke-static {v2, v3, v0, v4}, Lcom/keniu/security/sync/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    aget v1, v1, v5

    if-ne v1, v8, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->d:[Z

    aget-boolean v1, v1, v9

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    const-string v2, "sms"

    sget-object v3, Lcom/keniu/security/sync/r;->aI:Ljava/lang/String;

    iget-object v4, p0, Lcom/keniu/security/sync/c/d;->b:Landroid/content/Context;

    iget v4, p0, Lcom/keniu/security/sync/c/d;->f:I

    invoke-static {v2, v3, v0, v4}, Lcom/keniu/security/sync/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v9

    .line 66
    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->d:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_a

    .line 67
    const-string v1, ">>>>> restore the setttings"

    invoke-static {p0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    const-string v2, "mos"

    iget-object v3, p0, Lcom/keniu/security/sync/c/d;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/keniu/security/sync/c/d;->b:Landroid/content/Context;

    iget v4, p0, Lcom/keniu/security/sync/c/d;->f:I

    invoke-static {v2, v3, v0, v4}, Lcom/keniu/security/sync/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v7

    .line 71
    :try_start_1
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-nez v1, :cond_5

    .line 72
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    const-string v2, "mss"

    sget-object v3, Lcom/keniu/security/sync/r;->aF:Ljava/lang/String;

    iget-object v4, p0, Lcom/keniu/security/sync/c/d;->b:Landroid/content/Context;

    iget v4, p0, Lcom/keniu/security/sync/c/d;->f:I

    invoke-static {v2, v3, v0, v4}, Lcom/keniu/security/sync/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    aput v0, v1, v6

    .line 79
    new-instance v0, Lcom/keniu/security/sync/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/sync/c/d;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shared_prefs/com.ijinshan.mguard_preferences.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/keniu/security/sync/b/a;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/keniu/security/sync/b/a;->a()Ljava/util/List;

    move-result-object v0

    .line 80
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->a:[I

    const/16 v1, 0x2716

    aput v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 74
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 81
    :cond_6
    sget-object v1, Lcom/keniu/security/sync/r;->aF:Ljava/lang/String;

    invoke-static {v1}, Lcom/keniu/security/sync/l;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/sync/l;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->a:[I

    const/16 v1, 0x2715

    aput v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 83
    :cond_8
    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/keniu/security/sync/l;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/sync/c/d;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shared_prefs/com.ijinshan.mguard_preferences.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    if-eqz v0, :cond_9

    move v0, v5

    :goto_2
    aput v0, v1, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x2718

    goto :goto_2

    .line 87
    :cond_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected final a(Ljava/lang/Integer;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x2712

    const/16 v5, 0x2711

    const/16 v4, -0xb

    const/4 v3, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a(Ljava/lang/Integer;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->a:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v4}, Lcom/keniu/security/sync/c/d;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->a:[I

    aget v0, v0, v3

    if-eq v0, v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->b:Landroid/content/Context;

    const-string v1, "synco"

    const-string v2, "6"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 119
    :cond_2
    invoke-direct {p0, v4}, Lcom/keniu/security/sync/c/d;->c(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x2713

    invoke-direct {p0, v0}, Lcom/keniu/security/sync/c/d;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 120
    :cond_3
    invoke-direct {p0, v3}, Lcom/keniu/security/sync/c/d;->c(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/keniu/security/sync/c/d;->a:[I

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/d;->c:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/d;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/d;->a(Ljava/lang/Integer;)V

    return-void
.end method
