.class Lcom/antivirus/ui/scan/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/scan/UnInstall;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/UnInstall;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/k;->a:Lcom/antivirus/ui/scan/UnInstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/k;->a:Lcom/antivirus/ui/scan/UnInstall;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/UnInstall;->finish()V

    return-void
.end method
