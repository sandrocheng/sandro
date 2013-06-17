.class Lcom/antivirus/ui/protection/u;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/r;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/r;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/u;->a:Lcom/antivirus/ui/protection/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SCAN_STATUS_BROADCAST_EXTRA"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/u;->a:Lcom/antivirus/ui/protection/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;Z)Z

    iget-object v0, p0, Lcom/antivirus/ui/protection/u;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->d(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SCAN_STATUS_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/u;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->e(Lcom/antivirus/ui/protection/r;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/u;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->f(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/ui/protection/ai;

    move-result-object v0

    sget-object v1, Lcom/antivirus/ui/protection/ah;->b:Lcom/antivirus/ui/protection/ah;

    invoke-static {v1}, Lcom/antivirus/ui/protection/ah;->a(Lcom/antivirus/ui/protection/ah;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/protection/ai;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/b/c;

    iget-object v1, p0, Lcom/antivirus/ui/protection/u;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v1}, Lcom/antivirus/ui/protection/r;->g(Lcom/antivirus/ui/protection/r;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avg/ui/general/b/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/antivirus/ui/protection/u;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v1}, Lcom/antivirus/ui/protection/r;->h(Lcom/antivirus/ui/protection/r;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avg/ui/general/b/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/antivirus/ui/protection/u;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v1}, Lcom/antivirus/ui/protection/r;->i(Lcom/antivirus/ui/protection/r;)I

    move-result v1

    iput v1, v0, Lcom/avg/ui/general/b/c;->f:I

    iget-object v0, p0, Lcom/antivirus/ui/protection/u;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->f(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/ui/protection/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/ai;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
