.class final Lorg/antivirus/ui/scan/results/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/results/l;->a:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/l;->a:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    invoke-static {v0, p2}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
