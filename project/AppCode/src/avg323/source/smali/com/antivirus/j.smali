.class Lcom/antivirus/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/antivirus/core/scanners/j;


# instance fields
.field final synthetic a:Lcom/antivirus/g;


# direct methods
.method constructor <init>(Lcom/antivirus/g;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/j;->a:Lcom/antivirus/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/c;)V
    .locals 6

    iget-object v0, p0, Lcom/antivirus/j;->a:Lcom/antivirus/g;

    invoke-virtual {v0, p1, p2}, Lcom/antivirus/g;->a(Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/c;)V

    iget-object v0, p1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-boolean v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/antivirus/j;->a:Lcom/antivirus/g;

    invoke-static {v1}, Lcom/antivirus/g;->a(Lcom/antivirus/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iget-object v2, p1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v3, p0, Lcom/antivirus/j;->a:Lcom/antivirus/g;

    invoke-static {v3}, Lcom/antivirus/g;->b(Lcom/antivirus/g;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/antivirus/g;->a(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/antivirus/j;->a:Lcom/antivirus/g;

    invoke-static {v4}, Lcom/antivirus/g;->c(Lcom/antivirus/g;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/antivirus/ui/scan/UnInstall;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "categtory"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appName"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1800

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "suspicious"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/antivirus/j;->a:Lcom/antivirus/g;

    invoke-static {v0}, Lcom/antivirus/g;->d(Lcom/antivirus/g;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    move-object v2, v1

    const-string v1, ""

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
