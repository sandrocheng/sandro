.class Lcom/antivirus/ui/scan/results/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/scan/results/ScanResultsActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/results/ScanResultsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/j;->a:Lcom/antivirus/ui/scan/results/ScanResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/j;->a:Lcom/antivirus/ui/scan/results/ScanResultsActivity;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->a(Lcom/antivirus/ui/scan/results/ScanResultsActivity;I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/j;->a:Lcom/antivirus/ui/scan/results/ScanResultsActivity;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->a(Lcom/antivirus/ui/scan/results/ScanResultsActivity;I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
