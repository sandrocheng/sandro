.class public Lcom/antivirus/applocker/AppLockerActivity;
.super Lcom/antivirus/ui/a;

# interfaces
.implements Lcom/avg/ui/general/c/a;


# instance fields
.field private n:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/applocker/AppLockerActivity;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/antivirus/applocker/g;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/avg/ui/general/c/f;

    invoke-direct {v1, p0, p1}, Lcom/avg/ui/general/c/f;-><init>(Lcom/avg/ui/general/c/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/antivirus/applocker/g;

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/g;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/avg/ui/general/c/f;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/antivirus/applocker/AppLockerActivity;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/antivirus/applocker/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/antivirus/applocker/g;

    invoke-virtual {v0, p1}, Lcom/antivirus/applocker/g;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/antivirus/applocker/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/antivirus/applocker/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/g;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/applocker/AppLockerActivity;->finish()V

    return-void
.end method

.method public h()V
    .locals 8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->s:[Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->s:[Ljava/lang/String;

    const v1, 0x7f09011b

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/antivirus/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->s:[Ljava/lang/String;

    const v1, 0x7f09011c

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :goto_0
    new-array v6, v4, [I

    const/16 v0, 0xd

    aput v0, v6, v2

    const/16 v0, 0xe

    aput v0, v6, v3

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/avg/ui/general/b/e;

    iget-object v4, p0, Lcom/antivirus/applocker/AppLockerActivity;->s:[Ljava/lang/String;

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;IZ[Ljava/lang/String;Z)V

    new-instance v1, Lcom/antivirus/applocker/d;

    invoke-direct {v1, p0, v6}, Lcom/antivirus/applocker/d;-><init>(Lcom/antivirus/applocker/AppLockerActivity;[I)V

    invoke-virtual {v7, v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->s:[Ljava/lang/String;

    const v1, 0x7f09011d

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/applocker/AppLockerActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/ui/privacy/PrivacyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2442

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/AppLockerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/AppLockerActivity;->setContentView(I)V

    const v2, 0x7f020064

    const v3, 0x7f020063

    const v0, 0x7f090110

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f080031

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/antivirus/applocker/AppLockerActivity;->a(ZIILjava/lang/String;ZI)V

    new-instance v0, Lcom/antivirus/applocker/g;

    invoke-direct {v0}, Lcom/antivirus/applocker/g;-><init>()V

    iput-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    const v1, 0x7f0800d1

    const-string v2, "AppLockerFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/applocker/AppLockerActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/antivirus/ui/a;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/antivirus/applocker/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/antivirus/applocker/g;

    invoke-virtual {v0, p2}, Lcom/antivirus/applocker/g;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/antivirus/applocker/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/AppLockerActivity;->n:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/antivirus/applocker/g;

    invoke-virtual {v0, p1}, Lcom/antivirus/applocker/g;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    :goto_0
    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/antivirus/applocker/AppLockerActivity;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    goto :goto_0
.end method
