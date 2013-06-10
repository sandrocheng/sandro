.class final Lorg/antivirus/ui/protection/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/antivirus/ui/protection/r;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/r;I)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/s;->b:Lorg/antivirus/ui/protection/r;

    iput p2, p0, Lorg/antivirus/ui/protection/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/protection/s;->b:Lorg/antivirus/ui/protection/r;

    iget-object v0, v0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/protection/s;->b:Lorg/antivirus/ui/protection/r;

    iget-object v0, v0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->d(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget v2, p0, Lorg/antivirus/ui/protection/s;->a:I

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
    iget v1, p0, Lorg/antivirus/ui/protection/s;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    goto :goto_0
.end method
