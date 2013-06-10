.class final Lorg/antivirus/ui/protection/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/FileScannerActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/e;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/ui/protection/e;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->b(Lorg/antivirus/ui/protection/FileScannerActivity;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/e;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    const-string v1, "file_scanner"

    const-string v2, "scan"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
