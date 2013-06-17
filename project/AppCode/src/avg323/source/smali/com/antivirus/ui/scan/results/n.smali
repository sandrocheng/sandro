.class Lcom/antivirus/ui/scan/results/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/antivirus/ui/scan/results/m;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/results/m;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/n;->b:Lcom/antivirus/ui/scan/results/m;

    iput-object p2, p0, Lcom/antivirus/ui/scan/results/n;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    sget-object v2, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/n;->a:Landroid/content/Context;

    const/16 v2, 0x7d0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/n;->b:Lcom/antivirus/ui/scan/results/m;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/m;->a(Lcom/antivirus/ui/scan/results/m;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    return-void
.end method
