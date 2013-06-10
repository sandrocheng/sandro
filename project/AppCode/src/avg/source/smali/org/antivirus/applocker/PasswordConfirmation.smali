.class public Lorg/antivirus/applocker/PasswordConfirmation;
.super Lorg/antivirus/ui/BaseToolActivity;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/antivirus/applocker/PasswordConfirmation;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/applocker/PasswordConfirmation;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/applocker/PasswordConfirmation;->a:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic b(Lorg/antivirus/applocker/PasswordConfirmation;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lorg/antivirus/applocker/PasswordConfirmation;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/applocker/PasswordConfirmation;->b:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic c(Lorg/antivirus/applocker/PasswordConfirmation;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->c:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected final onBack()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/PasswordConfirmation;->setResult(I)V

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onBack()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x7f0800b8

    const v8, 0x7f0800b6

    const v7, 0x40000081

    const/4 v6, 0x5

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/PasswordConfirmation;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f02004c

    const v3, 0x7f02004b

    const v0, 0x7f090046

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/applocker/PasswordConfirmation;->a(ZIILjava/lang/String;Z)V

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/PasswordConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lorg/antivirus/applocker/PasswordConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080073

    invoke-virtual {p0, v2}, Lorg/antivirus/applocker/PasswordConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0800b7

    invoke-virtual {p0, v3}, Lorg/antivirus/applocker/PasswordConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090044

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/antivirus/applocker/PasswordConfirmation;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "password_change"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f090060

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f090047

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090045

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090051

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/PasswordConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    iget-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {p0, v8}, Lorg/antivirus/applocker/PasswordConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    iget-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    invoke-static {p0}, Lorg/antivirus/AVSettings;->getAppLockerPassRecoveryMailAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v9}, Lorg/antivirus/applocker/PasswordConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/applocker/PasswordConfirmation;->c:Landroid/widget/EditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/PasswordConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090059

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/antivirus/applocker/l;

    invoke-direct {v1, p0}, Lorg/antivirus/applocker/l;-><init>(Lorg/antivirus/applocker/PasswordConfirmation;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/applocker/PasswordConfirmation;->onBack()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
