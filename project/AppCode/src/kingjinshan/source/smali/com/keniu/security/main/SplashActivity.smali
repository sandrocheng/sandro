.class public Lcom/keniu/security/main/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/service/MoSecurityService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/SplashActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/SplashActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/service/MoSecurityService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/SplashActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lcom/keniu/security/g;->a()Lcom/keniu/security/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/g;->a(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/keniu/security/main/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 27
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 28
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 30
    invoke-virtual {p0, v2}, Lcom/keniu/security/main/SplashActivity;->requestWindowFeature(I)Z

    .line 32
    invoke-static {}, Lcom/keniu/security/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, v2}, Lcom/keniu/security/main/SplashActivity;->setRequestedOrientation(I)V

    .line 38
    :cond_0
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/SplashActivity;->setContentView(I)V

    .line 40
    new-instance v0, Lcom/keniu/security/util/a;

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Lcom/keniu/security/util/a;->a(J)Lcom/keniu/security/util/b;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/main/cn;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/cn;-><init>(Lcom/keniu/security/main/SplashActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/keniu/security/util/a;-><init>(Lcom/keniu/security/util/b;Landroid/os/Handler;I)V

    invoke-virtual {v0}, Lcom/keniu/security/util/a;->start()V

    .line 55
    new-instance v0, Lcom/keniu/security/util/a;

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Lcom/keniu/security/util/a;->a(J)Lcom/keniu/security/util/b;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/main/co;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/co;-><init>(Lcom/keniu/security/main/SplashActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/keniu/security/util/a;-><init>(Lcom/keniu/security/util/b;Landroid/os/Handler;I)V

    invoke-virtual {v0}, Lcom/keniu/security/util/a;->start()V

    .line 62
    return-void
.end method
