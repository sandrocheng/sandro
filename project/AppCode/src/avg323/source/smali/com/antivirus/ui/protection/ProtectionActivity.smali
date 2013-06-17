.class public Lcom/antivirus/ui/protection/ProtectionActivity;
.super Lcom/antivirus/ui/a;


# instance fields
.field public n:Lcom/antivirus/a;

.field private o:Landroid/support/v4/app/Fragment;

.field private p:Lcom/avg/toolkit/ads/WebViewAdsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/protection/ProtectionActivity;->o:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    new-instance v0, Lcom/antivirus/ui/protection/r;

    invoke-direct {v0}, Lcom/antivirus/ui/protection/r;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/protection/ProtectionActivity;->o:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/antivirus/ui/protection/ProtectionActivity;->o:Landroid/support/v4/app/Fragment;

    const v1, 0x7f0800d1

    const-string v2, "Protection"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/protection/ProtectionActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    check-cast p2, Lcom/antivirus/a;

    iput-object p2, p0, Lcom/antivirus/ui/protection/ProtectionActivity;->n:Lcom/antivirus/a;

    iget-object v0, p0, Lcom/antivirus/ui/protection/ProtectionActivity;->p:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const-string v1, "protection"

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/protection/ProtectionActivity;->a(Lcom/avg/toolkit/ads/WebViewAdsManager;Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/protection/ProtectionActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/ui/main/HandheldMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2442

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/ProtectionActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/ProtectionActivity;->p:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {v0, p0, p1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/ProtectionActivity;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f020030

    const v3, 0x7f020031

    const v0, 0x7f09020f

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/protection/ProtectionActivity;->a(ZIILjava/lang/String;Z)V

    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/protection/ProtectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/ads/WebViewAdsManager;

    iput-object v0, p0, Lcom/antivirus/ui/protection/ProtectionActivity;->p:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {p0}, Lcom/antivirus/ui/protection/ProtectionActivity;->p()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/ProtectionActivity;->p:Lcom/avg/toolkit/ads/WebViewAdsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/ProtectionActivity;->p:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {v0}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/protection/ProtectionActivity;->q()V

    invoke-super {p0}, Lcom/antivirus/ui/a;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/antivirus/ui/a;->onResume()V

    return-void
.end method
