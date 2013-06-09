.class final Lorg/antivirus/ui/license/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/license/LicenseEnteringActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/license/LicenseEnteringActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/license/e;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/license/e;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->e(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lorg/antivirus/ui/license/e;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->c(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/license/e;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->e(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
