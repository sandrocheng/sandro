.class public Lcom/avg/ui/license/EnterLicenseActivity;
.super Lcom/avg/ui/general/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/ui/general/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method protected j()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/avg/ui/general/a/a;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/avg/ui/general/e;->fragment_activity:I

    invoke-virtual {p0, v0}, Lcom/avg/ui/license/EnterLicenseActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/avg/ui/license/EnterLicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, ""

    if-eqz v0, :cond_0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const/4 v1, 0x1

    sget v2, Lcom/avg/ui/general/c;->ab_ic_license:I

    sget v3, Lcom/avg/ui/general/c;->ab_ic_license_p:I

    const/4 v5, 0x0

    sget v6, Lcom/avg/ui/general/d;->header:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/avg/ui/license/EnterLicenseActivity;->a(ZIILjava/lang/String;ZI)V

    if-nez p1, :cond_1

    new-instance v0, Lcom/avg/ui/license/a;

    invoke-direct {v0}, Lcom/avg/ui/license/a;-><init>()V

    sget v1, Lcom/avg/ui/general/d;->middle_part:I

    const-string v2, "EnterLicenseFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/avg/ui/license/EnterLicenseActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_1
    return-void
.end method
