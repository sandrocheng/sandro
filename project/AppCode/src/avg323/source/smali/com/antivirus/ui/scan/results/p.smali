.class Lcom/antivirus/ui/scan/results/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/antivirus/ui/scan/results/m;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/results/m;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/p;->b:Lcom/antivirus/ui/scan/results/m;

    iput-object p2, p0, Lcom/antivirus/ui/scan/results/p;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/p;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
