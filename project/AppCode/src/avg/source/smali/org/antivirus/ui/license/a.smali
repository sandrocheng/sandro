.class final Lorg/antivirus/ui/license/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/license/LicenseEnteringActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/license/LicenseEnteringActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/license/a;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, p0, Lorg/antivirus/ui/license/a;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/license/a;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lorg/antivirus/ui/license/a;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/antivirus/ui/license/a;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f09007e

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0200b9

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_1

    const v0, 0x7f09007d

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090003

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/antivirus/ui/license/b;

    invoke-direct {v3, p0, v1}, Lorg/antivirus/ui/license/b;-><init>(Lorg/antivirus/ui/license/a;Z)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/antivirus/ui/license/a;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/license/a;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->b(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/antivirus/ui/license/a;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->b(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const v0, 0x7f09013e

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
