.class Lcom/antivirus/ui/scan/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/scan/UnInstall;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/UnInstall;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/h;->a:Lcom/antivirus/ui/scan/UnInstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/scan/h;->a:Lcom/antivirus/ui/scan/UnInstall;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/UnInstall;->a(Lcom/antivirus/ui/scan/UnInstall;Z)Z

    iget-object v0, p0, Lcom/antivirus/ui/scan/h;->a:Lcom/antivirus/ui/scan/UnInstall;

    check-cast p2, Lcom/antivirus/a;

    invoke-virtual {p2}, Lcom/antivirus/a;->a()Lcom/avg/toolkit/e/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/UnInstall;->a(Lcom/antivirus/ui/scan/UnInstall;Lcom/avg/toolkit/e/a;)Lcom/avg/toolkit/e/a;

    iget-object v0, p0, Lcom/antivirus/ui/scan/h;->a:Lcom/antivirus/ui/scan/UnInstall;

    invoke-static {v0}, Lcom/antivirus/ui/scan/UnInstall;->a(Lcom/antivirus/ui/scan/UnInstall;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/scan/h;->a:Lcom/antivirus/ui/scan/UnInstall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/UnInstall;->a(Lcom/antivirus/ui/scan/UnInstall;Z)Z

    const-string v0, "Disconnected"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    return-void
.end method
