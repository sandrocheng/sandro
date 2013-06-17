.class public Lcom/antivirus/ui/antitheft/AntiTheftActivity;
.super Lcom/antivirus/ui/a;

# interfaces
.implements Lcom/avg/ui/general/c/a;


# instance fields
.field private n:Lcom/avg/toolkit/ads/WebViewAdsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->n:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const-string v1, "antitheft"

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->a(Lcom/avg/toolkit/ads/WebViewAdsManager;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/antitheft/b;

    new-instance v1, Lcom/avg/ui/general/c/f;

    invoke-direct {v1, p0, p1}, Lcom/avg/ui/general/c/f;-><init>(Lcom/avg/ui/general/c/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/antitheft/b;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/avg/ui/general/c/f;->a()V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/antitheft/b;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/antitheft/b;->e(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected b(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->b(I)V

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/antitheft/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/antitheft/b;->b(I)Z

    :cond_0
    return-void
.end method

.method public h()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v4, v1, [Ljava/lang/String;

    const v0, 0x7f0901d8

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    new-array v6, v1, [I

    const/16 v0, 0x11

    aput v0, v6, v2

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/avg/ui/general/b/e;

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;IZ[Ljava/lang/String;Z)V

    new-instance v1, Lcom/antivirus/ui/antitheft/a;

    invoke-direct {v1, p0, v6}, Lcom/antivirus/ui/antitheft/a;-><init>(Lcom/antivirus/ui/antitheft/AntiTheftActivity;[I)V

    invoke-virtual {v7, v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->n:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {v0, p0, p1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->setContentView(I)V

    const v2, 0x7f020012

    const v3, 0x7f020015

    const v0, 0x7f0900e9

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->a(ZIILjava/lang/String;Z)V

    if-nez p1, :cond_0

    new-instance v0, Lcom/antivirus/ui/antitheft/b;

    invoke-direct {v0}, Lcom/antivirus/ui/antitheft/b;-><init>()V

    const v1, 0x7f0800d1

    const-string v2, "AntiTheftFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/ads/WebViewAdsManager;

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->n:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->p()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->n:Lcom/avg/toolkit/ads/WebViewAdsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->n:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {v0}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->q()V

    invoke-super {p0}, Lcom/antivirus/ui/a;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/antitheft/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/antivirus/ui/antitheft/b;->e(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/antitheft/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/antitheft/b;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    :cond_0
    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
