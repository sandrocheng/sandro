.class public Lcom/keniu/security/protection/ScreenLockService;
.super Landroid/app/Service;
.source "ScreenLockService.java"


# static fields
.field private static final g:I = 0x1

.field private static final h:I = 0x2


# instance fields
.field private a:Lcom/keniu/security/protection/u;

.field private b:Lcom/keniu/security/protection/a;

.field private c:Lcom/keniu/security/protection/y;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->a:Lcom/keniu/security/protection/u;

    .line 33
    iput-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->b:Lcom/keniu/security/protection/a;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/protection/ScreenLockService;->f:Z

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/protection/ScreenLockService;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/keniu/security/protection/ScreenLockService;->d:I

    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->c:Lcom/keniu/security/protection/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->c:Lcom/keniu/security/protection/y;

    invoke-virtual {v0}, Lcom/keniu/security/protection/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->c:Lcom/keniu/security/protection/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/protection/y;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/protection/ScreenLockService;)Lcom/keniu/security/protection/a;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->b:Lcom/keniu/security/protection/a;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->c:Lcom/keniu/security/protection/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->c:Lcom/keniu/security/protection/y;

    invoke-virtual {v0}, Lcom/keniu/security/protection/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->c:Lcom/keniu/security/protection/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/protection/y;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/keniu/security/protection/ScreenLockService;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/keniu/security/protection/ScreenLockService;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/keniu/security/protection/ScreenLockService;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/keniu/security/protection/ScreenLockService;->f:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 56
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v0, "type"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/protection/ScreenLockService;->d:I

    .line 59
    const-string v0, "preview"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keniu/security/protection/ScreenLockService;->e:Z

    .line 60
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "HTC A9188"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/keniu/security/protection/ScreenLockService;->f:Z

    .line 61
    new-instance v0, Lcom/keniu/security/protection/u;

    invoke-virtual {p0}, Lcom/keniu/security/protection/ScreenLockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/protection/u;-><init>(Lcom/keniu/security/protection/ScreenLockService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->a:Lcom/keniu/security/protection/u;

    .line 62
    iget-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->a:Lcom/keniu/security/protection/u;

    invoke-virtual {v0}, Lcom/keniu/security/protection/u;->d()V

    .line 63
    iget v0, p0, Lcom/keniu/security/protection/ScreenLockService;->d:I

    if-ne v0, v4, :cond_2

    .line 64
    new-instance v0, Lcom/keniu/security/protection/a;

    invoke-virtual {p0}, Lcom/keniu/security/protection/ScreenLockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keniu/security/protection/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->b:Lcom/keniu/security/protection/a;

    .line 65
    iget-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->b:Lcom/keniu/security/protection/a;

    invoke-virtual {v0}, Lcom/keniu/security/protection/a;->a()V

    .line 67
    :cond_2
    iget-boolean v0, p0, Lcom/keniu/security/protection/ScreenLockService;->e:Z

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/keniu/security/protection/y;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ScreenLockService;->c:Lcom/keniu/security/protection/y;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 60
    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/keniu/security/protection/e;->b()Landroid/hardware/Camera;

    invoke-static {}, Lcom/keniu/security/protection/e;->d()I

    move-result v0

    if-lt v0, v4, :cond_5

    move v0, v3

    :goto_3
    invoke-static {}, Lcom/keniu/security/protection/e;->c()V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method
