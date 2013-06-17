.class Lcom/antivirus/ui/scan/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/e;->a:Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/e;->a:Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;

    check-cast p2, Lcom/antivirus/a;

    iput-object p2, v0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->b:Lcom/antivirus/a;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "Disconnected"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/e;->a:Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->finish()V

    return-void
.end method
