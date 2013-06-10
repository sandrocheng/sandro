.class final Lorg/antivirus/ui/protection/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/FileScannerActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/h;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/protection/h;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    sget-object v2, Lorg/antivirus/core/scanners/c;->b:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/protection/h;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/protection/h;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->c(Lorg/antivirus/ui/protection/FileScannerActivity;)Z

    return-void
.end method
