.class final Lorg/antivirus/ui/protection/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/FileScannerActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/d;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/ui/protection/d;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->a(Lorg/antivirus/ui/protection/FileScannerActivity;)Lorg/antivirus/ui/protection/l;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/antivirus/ui/protection/l;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
