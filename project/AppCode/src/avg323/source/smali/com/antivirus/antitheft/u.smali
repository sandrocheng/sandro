.class Lcom/antivirus/antitheft/u;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/antivirus/antitheft/s;


# direct methods
.method constructor <init>(Lcom/antivirus/antitheft/s;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/antitheft/u;->c:Lcom/antivirus/antitheft/s;

    iput-object p2, p0, Lcom/antivirus/antitheft/u;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/antivirus/antitheft/u;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/antivirus/c;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/antivirus/antitheft/LockScreen;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/antitheft/u;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/antivirus/antitheft/u;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/antivirus/antitheft/u;->cancel()Z

    iget-object v0, p0, Lcom/antivirus/antitheft/u;->c:Lcom/antivirus/antitheft/s;

    invoke-static {v0}, Lcom/antivirus/antitheft/s;->a(Lcom/antivirus/antitheft/s;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/antivirus/antitheft/u;->c:Lcom/antivirus/antitheft/s;

    invoke-static {v0}, Lcom/antivirus/antitheft/s;->a(Lcom/antivirus/antitheft/s;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method
