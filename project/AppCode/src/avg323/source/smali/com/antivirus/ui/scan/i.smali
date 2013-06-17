.class Lcom/antivirus/ui/scan/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/antivirus/ui/scan/UnInstall;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/UnInstall;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/i;->b:Lcom/antivirus/ui/scan/UnInstall;

    iput-object p2, p0, Lcom/antivirus/ui/scan/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/antivirus/core/b;

    iget-object v1, p0, Lcom/antivirus/ui/scan/i;->b:Lcom/antivirus/ui/scan/UnInstall;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/UnInstall;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/i;->b:Lcom/antivirus/ui/scan/UnInstall;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/UnInstall;->finish()V

    return-void
.end method
