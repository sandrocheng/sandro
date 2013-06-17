.class Lcom/antivirus/ui/protection/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/antivirus/ui/protection/w;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/w;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iput-object p2, p0, Lcom/antivirus/ui/protection/x;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->j(Lcom/antivirus/ui/protection/r;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iget-object v0, p0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/high16 v3, 0x4010

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v0, v3

    add-int/lit8 v0, v0, 0x5

    int-to-double v3, v1

    const-wide v5, 0x3fa999999999999aL

    mul-double/2addr v3, v5

    int-to-double v5, v0

    div-double/2addr v3, v5

    double-to-int v0, v3

    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v3, v3, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v3}, Lcom/antivirus/ui/protection/r;->k(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v3

    new-instance v4, Lcom/antivirus/ui/protection/y;

    invoke-direct {v4, p0, v0}, Lcom/antivirus/ui/protection/y;-><init>(Lcom/antivirus/ui/protection/x;I)V

    invoke-virtual {v3, v4}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->u(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/protection/z;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/protection/z;-><init>(Lcom/antivirus/ui/protection/x;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->v(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const/16 v1, 0x61a8

    const/16 v2, 0x8

    invoke-static {}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method
