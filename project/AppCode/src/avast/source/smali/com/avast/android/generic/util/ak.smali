.class public Lcom/avast/android/generic/util/ak;
.super Ljava/lang/Object;
.source "Tools.java"


# direct methods
.method public static a()I
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 27
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(II)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/32 v6, 0xea60

    const/4 v2, -0x1

    .line 39
    invoke-static {}, Lcom/avast/android/generic/d;->a()I

    move-result v1

    .line 40
    invoke-static {}, Lcom/avast/android/generic/util/ak;->a()I

    move-result v4

    .line 43
    if-lt v4, p1, :cond_0

    add-int/lit8 v0, v1, 0x1

    .line 45
    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x7

    if-ge v3, v5, :cond_3

    .line 46
    add-int v5, v0, v3

    rem-int/lit8 v5, v5, 0x7

    invoke-static {v5}, Lcom/avast/android/generic/d;->a(I)I

    move-result v5

    and-int/2addr v5, p0

    if-lez v5, :cond_1

    .line 47
    add-int/2addr v0, v3

    .line 52
    :goto_2
    if-ne v0, v2, :cond_2

    .line 53
    const-wide/16 v0, -0x1

    .line 60
    :goto_3
    return-wide v0

    :cond_0
    move v0, v1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    div-long/2addr v2, v6

    .line 58
    mul-long/2addr v2, v6

    .line 59
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x18

    sub-int v1, p1, v4

    mul-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 60
    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 67
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 70
    :cond_0
    const-string v1, "package"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find application info for uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
