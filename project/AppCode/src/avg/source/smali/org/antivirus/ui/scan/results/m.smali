.class final Lorg/antivirus/ui/scan/results/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/results/m;->b:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iput-object p2, p0, Lorg/antivirus/ui/scan/results/m;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/m;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
