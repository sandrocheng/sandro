.class Lcom/antivirus/ui/protection/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/antivirus/ui/protection/x;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/x;I)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/y;->b:Lcom/antivirus/ui/protection/x;

    iput p2, p0, Lcom/antivirus/ui/protection/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/protection/y;->b:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/y;->b:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->j(Lcom/antivirus/ui/protection/r;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/antivirus/ui/protection/y;->a:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/antivirus/ui/protection/y;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    goto :goto_0
.end method
