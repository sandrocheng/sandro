.class Lcom/antivirus/antitheft/z;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/widget/Toast;

.field final synthetic c:Lcom/antivirus/antitheft/LockScreen;


# direct methods
.method constructor <init>(Lcom/antivirus/antitheft/LockScreen;Landroid/os/Handler;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/antitheft/z;->c:Lcom/antivirus/antitheft/LockScreen;

    iput-object p2, p0, Lcom/antivirus/antitheft/z;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/antivirus/antitheft/z;->b:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/antivirus/antitheft/LockScreen;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/antivirus/c;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/antitheft/z;->a:Landroid/os/Handler;

    new-instance v1, Lcom/antivirus/antitheft/aa;

    invoke-direct {v1, p0}, Lcom/antivirus/antitheft/aa;-><init>(Lcom/antivirus/antitheft/z;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/antivirus/antitheft/z;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    sget-object v0, Lcom/antivirus/antitheft/LockScreen;->b:Ljava/lang/Integer;

    sget-object v0, Lcom/antivirus/antitheft/LockScreen;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/antivirus/antitheft/LockScreen;->b:Ljava/lang/Integer;

    invoke-static {}, Lcom/antivirus/antitheft/LockScreen;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/antivirus/antitheft/LockScreen;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    invoke-static {}, Lcom/antivirus/c;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/antivirus/antitheft/LockScreen;->b:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/antivirus/antitheft/z;->c:Lcom/antivirus/antitheft/LockScreen;

    const/16 v1, 0x2328

    const/16 v2, 0x232a

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/antivirus/antitheft/z;->cancel()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/antivirus/antitheft/z;->cancel()Z

    sget-object v0, Lcom/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/antivirus/antitheft/z;->c:Lcom/antivirus/antitheft/LockScreen;

    invoke-virtual {v0}, Lcom/antivirus/antitheft/LockScreen;->finish()V

    goto :goto_1
.end method
