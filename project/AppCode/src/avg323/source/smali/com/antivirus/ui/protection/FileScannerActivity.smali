.class public Lcom/antivirus/ui/protection/FileScannerActivity;
.super Lcom/antivirus/ui/a;


# instance fields
.field public n:Lcom/antivirus/a;

.field private o:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/protection/FileScannerActivity;->o:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    check-cast p2, Lcom/antivirus/a;

    iput-object p2, p0, Lcom/antivirus/ui/protection/FileScannerActivity;->n:Lcom/antivirus/a;

    new-instance v0, Lcom/antivirus/ui/protection/a;

    invoke-direct {v0}, Lcom/antivirus/ui/protection/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/protection/FileScannerActivity;->o:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/antivirus/ui/protection/FileScannerActivity;->o:Landroid/support/v4/app/Fragment;

    const v1, 0x7f0800d1

    const-string v2, "FileScannerFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/protection/FileScannerActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/protection/FileScannerActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/ui/protection/ProtectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2442

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/FileScannerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/protection/FileScannerActivity;->p()V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/FileScannerActivity;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f020018

    const v3, 0x7f020019

    const v0, 0x7f09010c

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f080031

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/antivirus/ui/protection/FileScannerActivity;->a(ZIILjava/lang/String;ZI)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/antivirus/ui/a;->onDestroy()V

    invoke-virtual {p0}, Lcom/antivirus/ui/protection/FileScannerActivity;->q()V

    return-void
.end method
