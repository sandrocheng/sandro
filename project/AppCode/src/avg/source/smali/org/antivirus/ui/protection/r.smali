.class final Lorg/antivirus/ui/protection/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/antivirus/ui/protection/q;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/q;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iput-object p2, p0, Lorg/antivirus/ui/protection/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->d(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iget-object v0, p0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/app/AlertDialog;

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

    iget-object v3, p0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v3, v3, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    new-instance v4, Lorg/antivirus/ui/protection/s;

    invoke-direct {v4, p0, v0}, Lorg/antivirus/ui/protection/s;-><init>(Lorg/antivirus/ui/protection/r;I)V

    invoke-virtual {v3, v4}, Lorg/antivirus/ui/protection/ProtectionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    new-instance v1, Lorg/antivirus/ui/protection/t;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/protection/t;-><init>(Lorg/antivirus/ui/protection/r;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/protection/ProtectionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/widget/a/k;->d()Z

    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method
