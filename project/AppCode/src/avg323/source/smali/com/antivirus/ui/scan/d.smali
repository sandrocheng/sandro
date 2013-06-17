.class Lcom/antivirus/ui/scan/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/scan/FileRemover;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/FileRemover;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/d;->a:Lcom/antivirus/ui/scan/FileRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/d;->a:Lcom/antivirus/ui/scan/FileRemover;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/FileRemover;->finish()V

    return-void
.end method
