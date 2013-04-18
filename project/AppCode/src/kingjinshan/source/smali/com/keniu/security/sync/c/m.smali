.class public final Lcom/keniu/security/sync/c/m;
.super Lcom/keniu/security/sync/c/g;
.source "UploadTask.java"


# instance fields
.field private a:[Z

.field private d:Lcom/keniu/security/sync/d/c/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[I


# direct methods
.method public constructor <init>(Landroid/os/Handler;[ZLandroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const v0, 0x7f0b0898

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p1}, Lcom/keniu/security/sync/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/keniu/security/sync/c/m;->g:[I

    .line 37
    const-string v0, "firewall_user_rules.db"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/c/m;->e:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/keniu/security/sync/d/c/a;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/c/a;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/c/m;->d:Lcom/keniu/security/sync/d/c/a;

    .line 39
    iput-object p2, p0, Lcom/keniu/security/sync/c/m;->a:[Z

    .line 40
    return-void

    .line 33
    :array_0
    .array-data 0x4
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x2712

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->d:Lcom/keniu/security/sync/d/c/a;

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    const-string v2, "/ks_program/mosecurity"

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    move v0, v5

    .line 122
    :goto_0
    return v0

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->d:Lcom/keniu/security/sync/d/c/a;

    invoke-static {v0, p1}, Lcom/keniu/security/sync/d/c/a;->a(Lcom/keniu/security/sync/d/d/a/cf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->d:Lcom/keniu/security/sync/d/c/a;

    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/keniu/security/sync/c/m;->d:Lcom/keniu/security/sync/d/c/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/cf;->n()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gj;->k()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0, p1}, Lcom/keniu/security/sync/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 113
    :cond_1
    if-nez v1, :cond_3

    const/16 v0, -0x2723

    goto :goto_0

    .line 112
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->d:Lcom/keniu/security/sync/d/c/a;

    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/keniu/security/sync/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    .line 115
    if-nez v0, :cond_4

    const/16 v0, 0x2714

    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/cf;->p()Ljava/util/List;

    move-result-object v0

    .line 117
    if-nez v0, :cond_5

    const/16 v0, -0x2725

    goto :goto_0

    .line 118
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_6

    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->d:Lcom/keniu/security/sync/d/c/a;

    iget-object v3, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gj;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/keniu/security/sync/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->d:Lcom/keniu/security/sync/d/c/a;

    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3, p3}, Lcom/keniu/security/sync/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v5

    .line 122
    goto :goto_0
.end method

.method private c(I)Z
    .locals 4
    .parameter

    .prologue
    const/16 v3, -0xb

    const/4 v2, 0x0

    .line 88
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->g:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 89
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->g:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    move v0, v2

    .line 92
    :goto_1
    return v0

    .line 90
    :cond_0
    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->g:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_1

    move v0, v2

    goto :goto_1

    .line 88
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    .line 49
    aget-object v0, p1, v6

    iput-object v0, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    .line 50
    aget-object v0, p1, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    aget-object v1, p1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 53
    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    const-string v3, "login"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    :try_start_0
    new-instance v2, Lcom/keniu/security/sync/a/a;

    invoke-direct {v2}, Lcom/keniu/security/sync/a/a;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/sync/c/m;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/keniu/security/sync/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0.0.0.001"

    invoke-static {v2, v3, v4, v5}, Lcom/keniu/security/sync/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/d/a/jn;->n()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/keniu/security/sync/c/m;->c:Landroid/os/Handler;

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->f:Ljava/lang/String;

    const-string v3, "login"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v0, 0x2711

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const/16 v0, 0x2712

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/c/m;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->a:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_3

    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->g:[I

    const-string v3, "contact"

    sget-object v4, Lcom/keniu/security/sync/r;->aC:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v0}, Lcom/keniu/security/sync/c/m;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    aput v0, v2, v6

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->a:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_4

    if-lez v1, :cond_4

    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->g:[I

    const-string v2, "sms"

    sget-object v3, Lcom/keniu/security/sync/r;->aI:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lcom/keniu/security/sync/c/m;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v7

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->a:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_6

    .line 71
    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->g:[I

    const-string v1, "mos"

    iget-object v2, p0, Lcom/keniu/security/sync/c/m;->e:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v6}, Lcom/keniu/security/sync/c/m;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v8

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/../"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shared_prefs/com.ijinshan.mguard_preferences.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/keniu/security/sync/b/a;

    invoke-direct {v1, v0, v7}, Lcom/keniu/security/sync/b/a;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/keniu/security/sync/b/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/l;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/keniu/security/sync/r;->aF:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keniu/security/sync/r;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    .line 74
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->g:[I

    const/16 v1, -0x2722

    aput v1, v0, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->g:[I

    const-string v1, "mss"

    sget-object v2, Lcom/keniu/security/sync/r;->aF:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v6}, Lcom/keniu/security/sync/c/m;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    .line 77
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected final a(Ljava/lang/Integer;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x2712

    const/16 v4, 0x2711

    const/4 v3, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a(Ljava/lang/Integer;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->g:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->g:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->g:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->g:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const/16 v0, -0xb

    invoke-direct {p0, v0}, Lcom/keniu/security/sync/c/m;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->c:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->g:[I

    aget v0, v0, v3

    if-eq v0, v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->b:Landroid/content/Context;

    const-string v1, "synco"

    const-string v2, "5"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->c:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 103
    :cond_2
    invoke-direct {p0, v3}, Lcom/keniu/security/sync/c/m;->c(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->c:Landroid/os/Handler;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/keniu/security/sync/c/m;->g:[I

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/c/m;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/m;->c:Landroid/os/Handler;

    const/16 v2, -0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/m;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/m;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/keniu/security/sync/c/g;->onPreExecute()V

    .line 44
    return-void
.end method
