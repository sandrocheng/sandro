.class final Lvf;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lve;


# direct methods
.method constructor <init>(Lve;)V
    .locals 0

    iput-object p1, p0, Lvf;->a:Lve;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvf;->a:Lve;

    invoke-static {v0}, Lve;->a(Lve;)Ljava/lang/String;

    iget-object v0, p0, Lvf;->a:Lve;

    invoke-static {}, Lve;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvf;->a:Lve;

    invoke-static {v0}, Lve;->b(Lve;)Lit;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit;->f(Z)V

    iget-object v0, p0, Lvf;->a:Lve;

    invoke-static {v0}, Lve;->c(Lve;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvf;->a:Lve;

    invoke-static {v0}, Lve;->d(Lve;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvf;->a:Lve;

    invoke-static {v0}, Lve;->c(Lve;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lvf;->a:Lve;

    invoke-static {v1}, Lve;->d(Lve;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lvf;->a:Lve;

    invoke-static {v1}, Lve;->e(Lve;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "switch_suspession_window"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lvf;->a:Lve;

    invoke-static {v1}, Lve;->e(Lve;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lve;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvf;->a:Lve;

    invoke-static {v0}, Lve;->b(Lve;)Lit;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit;->f(Z)V

    iget-object v0, p0, Lvf;->a:Lve;

    invoke-virtual {v0}, Lve;->b()V

    goto :goto_0
.end method
