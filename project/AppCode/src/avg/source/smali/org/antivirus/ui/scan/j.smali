.class final Lorg/antivirus/ui/scan/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/scan/UnInstall;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/UnInstall;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/j;->a:Lorg/antivirus/ui/scan/UnInstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/scan/j;->a:Lorg/antivirus/ui/scan/UnInstall;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/UnInstall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "suspicious"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/scan/j;->a:Lorg/antivirus/ui/scan/UnInstall;

    invoke-static {v1, v0}, Lorg/antivirus/ui/scan/UnInstall;->a(Lorg/antivirus/ui/scan/UnInstall;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/j;->a:Lorg/antivirus/ui/scan/UnInstall;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/UnInstall;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/scan/j;->a:Lorg/antivirus/ui/scan/UnInstall;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/scan/UnInstall;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
