.class final Lorg/antivirus/ui/main/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/main/AntivirusMainScreen;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/main/b;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v1, p0, Lorg/antivirus/ui/main/b;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    move-object v0, p2

    check-cast v0, Lorg/antivirus/AVService$LocalBinder;

    iput-object v0, v1, Lorg/antivirus/ui/main/AntivirusMainScreen;->e:Lorg/antivirus/AVService$LocalBinder;

    iget-object v1, p0, Lorg/antivirus/ui/main/b;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    move-object v0, p2

    check-cast v0, Lorg/antivirus/AVService$LocalBinder;

    invoke-virtual {v0}, Lorg/antivirus/AVService$LocalBinder;->getFeatures()Lorg/antivirus/core/b/a;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Lorg/antivirus/ui/main/AntivirusMainScreen;Lorg/antivirus/core/b/a;)Lorg/antivirus/core/b/a;

    iget-object v0, p0, Lorg/antivirus/ui/main/b;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    check-cast p2, Lorg/antivirus/AVService$LocalBinder;

    sget-object v1, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {p2, v1}, Lorg/antivirus/AVService$LocalBinder;->getScanResults(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/ui/main/AntivirusMainScreen;->d:Lorg/antivirus/core/scanners/g;

    iget-object v0, p0, Lorg/antivirus/ui/main/b;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Lorg/antivirus/ui/main/AntivirusMainScreen;Z)Z

    iget-object v0, p0, Lorg/antivirus/ui/main/b;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-static {v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->d(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/b;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-static {v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Lorg/antivirus/ui/main/AntivirusMainScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/main/b;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-static {v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->e(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "Disconnected"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/b;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Lorg/antivirus/ui/main/AntivirusMainScreen;Z)Z

    return-void
.end method
