.class final Lorg/antivirus/ui/scan/results/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/results/k;->a:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/k;->a:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;Z)Z

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/k;->a:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-object v0, p2

    check-cast v0, Lorg/antivirus/AVService$LocalBinder;

    iput-object v0, v1, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->f:Lorg/antivirus/AVService$LocalBinder;

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/k;->a:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/k;->a:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    check-cast p2, Lorg/antivirus/AVService$LocalBinder;

    invoke-virtual {p2}, Lorg/antivirus/AVService$LocalBinder;->getFeatures()Lorg/antivirus/core/b/a;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;Lorg/antivirus/core/b/a;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/k;->a:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;Z)Z

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/k;->a:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->finish()V

    return-void
.end method
