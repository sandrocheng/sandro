.class Lcom/antivirus/ui/protection/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/a;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/a;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/k;->a:Lcom/antivirus/ui/protection/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    sget-object v2, Lcom/antivirus/core/scanners/c;->b:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/k;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v1}, Lcom/antivirus/ui/protection/a;->h(Lcom/antivirus/ui/protection/a;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const/16 v2, 0x7d0

    const/16 v3, 0x9

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/k;->a:Lcom/antivirus/ui/protection/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/antivirus/ui/protection/a;->a(Lcom/antivirus/ui/protection/a;Z)Z

    return-void
.end method
