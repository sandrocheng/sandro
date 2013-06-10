.class final Lorg/antivirus/ui/license/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/license/LicenseEnteringActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/license/LicenseEnteringActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const v4, 0x7f09013e

    const/4 v3, 0x0

    const-string v0, ""

    iget-object v1, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v1}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->c(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->c(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lorg/antivirus/core/b/g;

    iget-object v2, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-virtual {v2}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/antivirus/core/b/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/antivirus/core/b/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    iget-object v1, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090151

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v6, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    iget-object v0, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    const v1, 0x7f09007c

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-virtual {v1}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    iget-object v2, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v2}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->c(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "__SAH"

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v3}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->d(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    iget-object v1, p0, Lorg/antivirus/ui/license/d;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09013f

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
