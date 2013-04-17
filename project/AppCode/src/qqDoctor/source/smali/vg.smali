.class final Lvg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lve;


# direct methods
.method constructor <init>(Lve;)V
    .locals 0

    iput-object p1, p0, Lvg;->a:Lve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvg;->a:Lve;

    invoke-static {}, Lve;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvg;->a:Lve;

    invoke-static {v0}, Lve;->b(Lve;)Lit;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit;->f(Z)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lvg;->a:Lve;

    invoke-static {v1}, Lve;->e(Lve;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "switch_suspession_window"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lvg;->a:Lve;

    invoke-static {v1}, Lve;->e(Lve;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
