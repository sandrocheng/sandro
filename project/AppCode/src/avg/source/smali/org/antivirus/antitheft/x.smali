.class final Lorg/antivirus/antitheft/x;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/widget/Toast;

.field final synthetic c:Lorg/antivirus/antitheft/LockScreen;


# direct methods
.method constructor <init>(Lorg/antivirus/antitheft/LockScreen;Landroid/os/Handler;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/antitheft/x;->c:Lorg/antivirus/antitheft/LockScreen;

    iput-object p2, p0, Lorg/antivirus/antitheft/x;->a:Landroid/os/Handler;

    iput-object p3, p0, Lorg/antivirus/antitheft/x;->b:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lorg/antivirus/antitheft/LockScreen;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/antivirus/AVSettings;->getPermLock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/antitheft/x;->a:Landroid/os/Handler;

    new-instance v1, Lorg/antivirus/antitheft/y;

    invoke-direct {v1, p0}, Lorg/antivirus/antitheft/y;-><init>(Lorg/antivirus/antitheft/x;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/antivirus/antitheft/x;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->b:Ljava/lang/Integer;

    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/antivirus/antitheft/LockScreen;->b:Ljava/lang/Integer;

    invoke-static {}, Lorg/antivirus/antitheft/LockScreen;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    invoke-static {}, Lorg/antivirus/AVSettings;->getPermLock()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/antivirus/antitheft/LockScreen;->b:Ljava/lang/Integer;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/antitheft/x;->c:Lorg/antivirus/antitheft/LockScreen;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/antitheft/x;->c:Lorg/antivirus/antitheft/LockScreen;

    invoke-virtual {v1, v0}, Lorg/antivirus/antitheft/LockScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/antivirus/antitheft/x;->cancel()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/antivirus/antitheft/x;->cancel()Z

    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lorg/antivirus/antitheft/x;->c:Lorg/antivirus/antitheft/LockScreen;

    invoke-virtual {v0}, Lorg/antivirus/antitheft/LockScreen;->finish()V

    goto :goto_1
.end method
