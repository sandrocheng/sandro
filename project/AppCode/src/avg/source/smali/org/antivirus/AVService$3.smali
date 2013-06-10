.class Lorg/antivirus/AVService$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/antivirus/core/scanners/i;


# instance fields
.field final synthetic a:Lorg/antivirus/AVService;


# direct methods
.method constructor <init>(Lorg/antivirus/AVService;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/AVService$3;->a:Lorg/antivirus/AVService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanDone(Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/c;)V
    .locals 6

    iget-object v0, p0, Lorg/antivirus/AVService$3;->a:Lorg/antivirus/AVService;

    invoke-static {v0, p1, p2}, Lorg/antivirus/AVService;->a(Lorg/antivirus/AVService;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/c;)V

    iget-object v0, p1, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget-boolean v0, v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/antivirus/AVService$3;->a:Lorg/antivirus/AVService;

    invoke-static {v1, v0}, Lorg/antivirus/ui/Tools;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lorg/antivirus/ui/Tools;->getPackageCategory(Lorg/antivirus/core/scanners/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lorg/antivirus/AVService$3;->a:Lorg/antivirus/AVService;

    const-class v5, Lorg/antivirus/ui/scan/UnInstall;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "categtory"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appName"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1800

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "suspicious"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/antivirus/AVService$3;->a:Lorg/antivirus/AVService;

    invoke-virtual {v0, v3}, Lorg/antivirus/AVService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
