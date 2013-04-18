.class final Lcom/keniu/security/main/bk;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/main/bk;-><init>(Lcom/keniu/security/main/MainActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/main/MainActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/keniu/security/main/bk;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 454
    const-string v0, "checkStatus"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/keniu/security/main/bk;->a:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/main/MainActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/keniu/security/main/bk;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->e(Lcom/keniu/security/main/MainActivity;)Lcom/keniu/security/main/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->c()V

    .line 457
    iget-object v0, p0, Lcom/keniu/security/main/bk;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->g(Lcom/keniu/security/main/MainActivity;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    const-string v0, "notify_enter_root"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    const-string v0, "notify_enter_root_value"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 462
    iget-object v1, p0, Lcom/keniu/security/main/bk;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/main/MainActivity;->e(Lcom/keniu/security/main/MainActivity;)Lcom/keniu/security/main/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/main/bi;->a(Z)V

    .line 463
    iget-object v0, p0, Lcom/keniu/security/main/bk;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->g(Lcom/keniu/security/main/MainActivity;)V

    goto :goto_0

    .line 465
    :cond_2
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->b()V

    .line 467
    iget-object v0, p0, Lcom/keniu/security/main/bk;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->n(Lcom/keniu/security/main/MainActivity;)Z

    .line 468
    iget-object v0, p0, Lcom/keniu/security/main/bk;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->o(Lcom/keniu/security/main/MainActivity;)V

    goto :goto_0
.end method
