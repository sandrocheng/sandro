.class public Lcom/antivirus/ui/scan/results/ScanResultsActivity;
.super Lcom/antivirus/ui/a;

# interfaces
.implements Lcom/avg/ui/general/c/a;


# instance fields
.field public n:Lcom/antivirus/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    return-void
.end method

.method private a(Lcom/avg/toolkit/e/a;)V
    .locals 6

    const/4 v1, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v2, 0x7f02003e

    const v3, 0x7f02003f

    const-string v4, ""

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->a(ZIILjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const v2, 0x7f020040

    const v3, 0x7f020041

    const-string v4, ""

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->a(ZIILjava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/results/ScanResultsActivity;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->e(I)Z

    move-result v0

    return v0
.end method

.method private e(I)Z
    .locals 1

    const-string v0, "ScanResultsFragment"

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/scan/results/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/scan/results/m;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6

    const v5, 0x7f090185

    const v1, 0x7f090184

    const/16 v4, 0x10

    const/16 v3, 0xf

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/view/ContextMenu;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ContextMenu;

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    check-cast p1, Landroid/view/ContextMenu;

    invoke-static {p0, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    check-cast p1, Landroid/view/Menu;

    invoke-static {p0, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/avg/ui/general/c/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    check-cast p1, Lcom/avg/ui/general/c/f;

    invoke-static {p0, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v4, v2, v0}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    check-cast p2, Lcom/antivirus/a;

    iput-object p2, p0, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->n:Lcom/antivirus/a;

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v1, "ScanResultsFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->F()V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->n:Lcom/antivirus/a;

    invoke-virtual {v0}, Lcom/antivirus/a;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->a(Lcom/avg/toolkit/e/a;)V

    return-void

    :cond_0
    new-instance v0, Lcom/antivirus/ui/scan/results/m;

    invoke-direct {v0}, Lcom/antivirus/ui/scan/results/m;-><init>()V

    const v1, 0x7f0800d1

    const-string v2, "ScanResultsFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/avg/ui/general/c/f;

    invoke-direct {v0, p0, p1}, Lcom/avg/ui/general/c/f;-><init>(Lcom/avg/ui/general/c/a;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/avg/ui/general/c/f;->a()V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->closeOptionsMenu()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->e(I)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const v0, 0x7f090184

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x1

    const v1, 0x7f090185

    invoke-static {p0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/avg/ui/general/b/e;

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;IZ[Ljava/lang/String;Z)V

    new-instance v1, Lcom/antivirus/ui/scan/results/j;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/scan/results/j;-><init>(Lcom/antivirus/ui/scan/results/ScanResultsActivity;)V

    invoke-virtual {v6, v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/ui/protection/ProtectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2442

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->p()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/antivirus/ui/a;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->q()V

    invoke-super {p0}, Lcom/antivirus/ui/a;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "ScanResultsFragment"

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/scan/results/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/scan/results/m;->b(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
