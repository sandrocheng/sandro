.class Lcom/antivirus/ui/protection/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/r;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/r;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/s;->a:Lcom/antivirus/ui/protection/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/antivirus/ui/protection/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/s;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/s;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/s;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0, v1}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/ui/protection/s;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0, v1}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/ui/protection/s;->a:Lcom/antivirus/ui/protection/r;

    iget-object v1, p0, Lcom/antivirus/ui/protection/s;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v1}, Lcom/antivirus/ui/protection/r;->b(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f090156

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/s;->a:Lcom/antivirus/ui/protection/r;

    iget-object v0, v0, Lcom/antivirus/ui/protection/r;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/s;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->c(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/protection/s;->a:Lcom/antivirus/ui/protection/r;

    iget-object v1, v1, Lcom/antivirus/ui/protection/r;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0
.end method
