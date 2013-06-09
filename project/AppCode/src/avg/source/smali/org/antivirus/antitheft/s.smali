.class final Lorg/antivirus/antitheft/s;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lorg/antivirus/antitheft/q;


# direct methods
.method constructor <init>(Lorg/antivirus/antitheft/q;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/antitheft/s;->c:Lorg/antivirus/antitheft/q;

    iput-object p2, p0, Lorg/antivirus/antitheft/s;->a:Landroid/content/Context;

    iput-object p3, p0, Lorg/antivirus/antitheft/s;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lorg/antivirus/AVSettings;->getPermLock()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/antivirus/antitheft/LockScreen;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/antitheft/s;->a:Landroid/content/Context;

    iget-object v1, p0, Lorg/antivirus/antitheft/s;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/antivirus/antitheft/s;->cancel()Z

    iget-object v0, p0, Lorg/antivirus/antitheft/s;->c:Lorg/antivirus/antitheft/q;

    iget-object v0, v0, Lorg/antivirus/antitheft/q;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lorg/antivirus/antitheft/s;->c:Lorg/antivirus/antitheft/q;

    iget-object v0, v0, Lorg/antivirus/antitheft/q;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method
