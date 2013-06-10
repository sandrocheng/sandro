.class final Lorg/antivirus/ui/protection/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/antivirus/ui/protection/FileScannerActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/FileScannerActivity;I)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/j;->b:Lorg/antivirus/ui/protection/FileScannerActivity;

    iput p2, p0, Lorg/antivirus/ui/protection/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/protection/j;->b:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->f(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/j;->b:Lorg/antivirus/ui/protection/FileScannerActivity;

    iget v1, p0, Lorg/antivirus/ui/protection/j;->a:I

    invoke-static {v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->g(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    return-void
.end method
