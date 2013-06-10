.class final Lorg/antivirus/ui/protection/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/FileScannerActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/i;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/i;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->d(Lorg/antivirus/ui/protection/FileScannerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/protection/i;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->e(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    :cond_0
    return-void
.end method
