.class public Lcom/antivirus/ui/main/ActivationActivity;
.super Lcom/antivirus/ui/a;


# instance fields
.field private n:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/main/ActivationActivity;->n:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-virtual {p0}, Lcom/antivirus/ui/main/ActivationActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v1, "ActivationFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/antivirus/ui/main/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/main/a;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/antivirus/ui/main/a;

    invoke-direct {v0}, Lcom/antivirus/ui/main/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/main/ActivationActivity;->n:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/antivirus/ui/main/ActivationActivity;->n:Landroid/support/v4/app/Fragment;

    const v1, 0x7f0800d1

    const-string v2, "ActivationFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/main/ActivationActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/ActivationActivity;->setResult(I)V

    invoke-super {p0}, Lcom/antivirus/ui/a;->g()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/ActivationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/antivirus/ui/main/ActivationActivity;->p()V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/ActivationActivity;->setContentView(I)V

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/antivirus/ui/main/ActivationActivity;->q()V

    invoke-super {p0}, Lcom/antivirus/ui/a;->onDestroy()V

    return-void
.end method
