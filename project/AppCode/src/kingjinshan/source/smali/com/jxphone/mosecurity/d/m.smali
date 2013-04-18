.class public final Lcom/jxphone/mosecurity/d/m;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Landroid/app/ActivityManager;

.field private f:Lcom/keniu/security/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "ap.jar"

    iput-object v0, p0, Lcom/jxphone/mosecurity/d/m;->d:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/d/m;->a:Landroid/content/Context;

    .line 24
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jxphone/mosecurity/d/m;->b:I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jxphone/mosecurity/d/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ap.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/d/m;->c:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/m;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/jxphone/mosecurity/d/m;->e:Landroid/app/ActivityManager;

    .line 27
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/d/m;->f:Lcom/keniu/security/a;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 34
    :cond_0
    iget v0, p0, Lcom/jxphone/mosecurity/d/m;->b:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/m;->e:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/d/m;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/keniu/security/malware/bz;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/m;->e:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/m;->e:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/jxphone/mosecurity/d/m;->b:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/m;->e:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/d/m;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/keniu/security/malware/bz;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/m;->e:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/m;->e:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 79
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/m;->f:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->G()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v5

    .line 88
    :goto_0
    return v0

    .line 82
    :cond_0
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 83
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 84
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v5

    .line 88
    goto :goto_0
.end method
