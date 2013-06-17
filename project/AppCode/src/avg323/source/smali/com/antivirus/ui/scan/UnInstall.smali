.class public Lcom/antivirus/ui/scan/UnInstall;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/avg/toolkit/e/a;

.field private b:Z

.field private c:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/antivirus/ui/scan/h;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/scan/h;-><init>(Lcom/antivirus/ui/scan/UnInstall;)V

    iput-object v0, p0, Lcom/antivirus/ui/scan/UnInstall;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/UnInstall;Lcom/avg/toolkit/e/a;)Lcom/avg/toolkit/e/a;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/UnInstall;->a:Lcom/avg/toolkit/e/a;

    return-object p1
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/UnInstall;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/scan/UnInstall;->b()V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/UnInstall;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/scan/UnInstall;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;-><init>()V

    iget-object v1, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "__SAD"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ScannerResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v0, 0x7d0

    const/4 v2, 0x4

    invoke-static {p0, v0, v2, v1}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/UnInstall;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/ui/scan/UnInstall;->b:Z

    return p1
.end method

.method private b()V
    .locals 6

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/UnInstall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "suspicious"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/UnInstall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "categtory"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/UnInstall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "appName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    const-string v0, "null package!?"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/UnInstall;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/UnInstall;->a:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090233

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v5, 0x7f0900d9

    invoke-static {p0, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090235

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "[appname]"

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[category]"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f090236

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0200da

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f09017c

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/antivirus/ui/scan/i;

    invoke-direct {v2, p0, v1}, Lcom/antivirus/ui/scan/i;-><init>(Lcom/antivirus/ui/scan/UnInstall;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f09017d

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/scan/j;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/scan/j;-><init>(Lcom/antivirus/ui/scan/UnInstall;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/antivirus/ui/scan/k;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/scan/k;-><init>(Lcom/antivirus/ui/scan/UnInstall;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f090234

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method


# virtual methods
.method a()V
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/scan/UnInstall;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/UnInstall;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/UnInstall;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/scan/UnInstall;->b:Z

    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/UnInstall;->c:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/scan/UnInstall;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p0}, Lcom/antivirus/ui/scan/UnInstall;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/UnInstall;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
