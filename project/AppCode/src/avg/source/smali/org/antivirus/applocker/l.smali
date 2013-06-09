.class final Lorg/antivirus/applocker/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/applocker/PasswordConfirmation;


# direct methods
.method constructor <init>(Lorg/antivirus/applocker/PasswordConfirmation;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    const v2, 0x7f080038

    invoke-virtual {v0, v2}, Lorg/antivirus/applocker/PasswordConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lorg/antivirus/applocker/PasswordConfirmation;->a(Lorg/antivirus/applocker/PasswordConfirmation;Landroid/widget/EditText;)Landroid/widget/EditText;

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-static {v0}, Lorg/antivirus/applocker/PasswordConfirmation;->a(Lorg/antivirus/applocker/PasswordConfirmation;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    const v3, 0x7f0800b6

    invoke-virtual {v0, v3}, Lorg/antivirus/applocker/PasswordConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v2, v0}, Lorg/antivirus/applocker/PasswordConfirmation;->b(Lorg/antivirus/applocker/PasswordConfirmation;Landroid/widget/EditText;)Landroid/widget/EditText;

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-static {v0}, Lorg/antivirus/applocker/PasswordConfirmation;->b(Lorg/antivirus/applocker/PasswordConfirmation;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-virtual {v0, v5}, Lorg/antivirus/applocker/PasswordConfirmation;->setResult(I)V

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    const v1, 0x7f09004b

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-virtual {v0, v5}, Lorg/antivirus/applocker/PasswordConfirmation;->setResult(I)V

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    const v1, 0x7f09004a

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-virtual {v0, v5}, Lorg/antivirus/applocker/PasswordConfirmation;->setResult(I)V

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    const v1, 0x7f090048

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-static {v1}, Lorg/antivirus/applocker/PasswordConfirmation;->c(Lorg/antivirus/applocker/PasswordConfirmation;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lorg/antivirus/tools/MailUtils;->isValidMailAddress(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-virtual {v0, v5}, Lorg/antivirus/applocker/PasswordConfirmation;->setResult(I)V

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    const v1, 0x7f090053

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v4}, Lorg/antivirus/AVSettings;->setApplockerEmailEntered(Z)V

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    :goto_1
    invoke-static {v0}, Lorg/antivirus/AVSettings;->setApplockerUserPassword(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/antivirus/applocker/PasswordConfirmation;->setResult(I)V

    iget-object v0, p0, Lorg/antivirus/applocker/l;->a:Lorg/antivirus/applocker/PasswordConfirmation;

    invoke-virtual {v0}, Lorg/antivirus/applocker/PasswordConfirmation;->finish()V

    goto/16 :goto_0

    :cond_5
    invoke-static {v1}, Lorg/antivirus/AVSettings;->setAppLockerPassRecoveryMailAddr(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/antivirus/AVSettings;->setApplockerEmailEntered(Z)V

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    goto :goto_1
.end method
