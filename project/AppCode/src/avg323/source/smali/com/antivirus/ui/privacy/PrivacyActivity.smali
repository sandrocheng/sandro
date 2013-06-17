.class public Lcom/antivirus/ui/privacy/PrivacyActivity;
.super Lcom/antivirus/ui/a;


# instance fields
.field private n:Landroid/support/v4/app/Fragment;

.field private o:Landroid/support/v4/app/Fragment;

.field private p:Lcom/avg/toolkit/ads/WebViewAdsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/privacy/PrivacyActivity;->n:Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/antivirus/ui/privacy/PrivacyActivity;->o:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-virtual {p0}, Lcom/antivirus/ui/privacy/PrivacyActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v1, "Privacy"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/antivirus/ui/privacy/b;

    invoke-virtual {v0}, Lcom/antivirus/ui/privacy/b;->a()V

    :goto_0
    invoke-virtual {p0}, Lcom/antivirus/ui/privacy/PrivacyActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v1, "FooterFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/antivirus/ui/privacy/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/privacy/a;->a()V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/privacy/PrivacyActivity;->p:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const-string v1, "privacy"

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/privacy/PrivacyActivity;->a(Lcom/avg/toolkit/ads/WebViewAdsManager;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/antivirus/ui/privacy/b;

    invoke-direct {v0}, Lcom/antivirus/ui/privacy/b;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/privacy/PrivacyActivity;->n:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/antivirus/ui/privacy/PrivacyActivity;->n:Landroid/support/v4/app/Fragment;

    const v1, 0x7f0800d1

    const-string v2, "Privacy"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/privacy/PrivacyActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/antivirus/ui/privacy/a;

    invoke-direct {v0}, Lcom/antivirus/ui/privacy/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/privacy/PrivacyActivity;->o:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/antivirus/ui/privacy/PrivacyActivity;->o:Landroid/support/v4/app/Fragment;

    const v1, 0x7f0800d2

    const-string v2, "FooterFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/privacy/PrivacyActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/privacy/PrivacyActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/ui/main/HandheldMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2442

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/privacy/PrivacyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/PrivacyActivity;->p:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {v0, p0, p1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/privacy/PrivacyActivity;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f02002e

    const v3, 0x7f02002f

    const v0, 0x7f090210

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/privacy/PrivacyActivity;->a(ZIILjava/lang/String;Z)V

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/privacy/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/privacy/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/ads/WebViewAdsManager;

    iput-object v0, p0, Lcom/antivirus/ui/privacy/PrivacyActivity;->p:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {p0}, Lcom/antivirus/ui/privacy/PrivacyActivity;->p()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/PrivacyActivity;->p:Lcom/avg/toolkit/ads/WebViewAdsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/privacy/PrivacyActivity;->p:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {v0}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/privacy/PrivacyActivity;->q()V

    invoke-super {p0}, Lcom/antivirus/ui/a;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/antivirus/ui/a;->onResume()V

    return-void
.end method
