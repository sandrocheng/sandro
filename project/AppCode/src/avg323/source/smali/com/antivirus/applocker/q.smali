.class public Lcom/antivirus/applocker/q;
.super Lcom/antivirus/ui/a/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    return-void
.end method

.method private a()V
    .locals 9

    const v8, 0x7f0800f7

    const v7, 0x7f0800f5

    const/4 v6, 0x5

    iget-object v0, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    const v2, 0x7f0800f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    const v3, 0x7f0800f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    const v4, 0x7f0800f6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const v5, 0x7f090114

    invoke-static {v4, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v4}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

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

    iget-object v4, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const v5, 0x7f09012d

    invoke-static {v4, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f090116

    invoke-static {v0, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090026

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090120

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/antivirus/applocker/q;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/antivirus/applocker/q;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    const v1, 0x40000081

    iget-object v0, p0, Lcom/antivirus/applocker/q;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/antivirus/applocker/q;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/antivirus/applocker/q;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/antivirus/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/antivirus/applocker/q;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/antivirus/applocker/q;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->d:Landroid/widget/EditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    const v1, 0x7f0800f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090128

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03002e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090110

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/applocker/q;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/antivirus/applocker/q;->a()V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x11

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/antivirus/applocker/q;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/antivirus/applocker/q;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/antivirus/applocker/q;->a:Landroid/view/View;

    const v2, 0x7f0800f5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/antivirus/applocker/q;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/antivirus/applocker/q;->c:Landroid/widget/EditText;

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

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->setResult(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09011a

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v5, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

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
    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->setResult(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090119

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v5, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->setResult(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090117

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v5, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/antivirus/applocker/q;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/antivirus/c/b;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->setResult(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090122

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v5, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v4}, Lcom/antivirus/c;->e(Z)V

    invoke-static {}, Lcom/antivirus/c;->n()V

    :goto_1
    invoke-static {v0}, Lcom/antivirus/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->setResult(I)V

    sput-boolean v3, Lcom/antivirus/c;->b:Z

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/applocker/g;

    invoke-direct {v1}, Lcom/antivirus/applocker/g;-><init>()V

    const v2, 0x7f0800be

    const-string v3, "AppLockerFragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "privacy"

    const-string v2, "app_locker"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v1}, Lcom/antivirus/c;->d(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/antivirus/c;->e(Z)V

    invoke-static {}, Lcom/antivirus/c;->n()V

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/applocker/AppLockerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/q;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    goto :goto_2
.end method

.method public s()V
    .locals 3

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->s()V

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/applocker/q;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/antivirus/applocker/q;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/antivirus/applocker/q;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/antivirus/applocker/q;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
