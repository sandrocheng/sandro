.class Lcom/antivirus/ui/protection/w;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/r;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/r;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v3, 0x7f0800fa

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "droidsec.com.update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/antivirus/ui/protection/r;->a(Z)Z

    const-string v0, "result"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "progress"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->j(Lcom/antivirus/ui/protection/r;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->j(Lcom/antivirus/ui/protection/r;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    const-string v0, "size"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->j(Lcom/antivirus/ui/protection/r;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_3
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/antivirus/ui/protection/x;

    invoke-direct {v2, p0, v0}, Lcom/antivirus/ui/protection/x;-><init>(Lcom/antivirus/ui/protection/w;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->x(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avg/ui/general/a/a;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0, v5}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0, v5}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;Landroid/view/View;)Landroid/view/View;

    :cond_6
    iget-object v0, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    iget-object v1, p0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v1}, Lcom/antivirus/ui/protection/r;->w(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f090156

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;Ljava/lang/String;)V

    goto :goto_1
.end method
