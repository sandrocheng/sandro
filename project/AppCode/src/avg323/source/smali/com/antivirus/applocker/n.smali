.class public Lcom/antivirus/applocker/n;
.super Lcom/antivirus/ui/a/a/a;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/view/View;

.field private c:Lcom/avg/toolkit/UID/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/applocker/n;->b:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/antivirus/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/applocker/n;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/applocker/n;->c:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v3}, Lcom/avg/toolkit/UID/a;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_0
    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->setResult(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "blocked_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    const-class v3, Lcom/antivirus/applocker/AppBlockService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAD"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Lcom/antivirus/applocker/c;

    invoke-direct {v0}, Lcom/antivirus/applocker/c;-><init>()V

    invoke-static {}, Lcom/antivirus/c;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/c;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/antivirus/applocker/c;->a(JLandroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->l()V

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/applocker/g;

    invoke-direct {v1}, Lcom/antivirus/applocker/g;-><init>()V

    const v2, 0x7f0800be

    const-string v3, "AppLockerFragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "privacy"

    const-string v2, "app_locker"

    const-string v3, "permitted"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/antivirus/applocker/n;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/applocker/AppLockerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/n;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->setResult(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090118

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method static synthetic b(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/antivirus/applocker/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/applocker/n;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v5, 0x7f090121

    const/4 v4, 0x0

    const v0, 0x7f030013

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/applocker/n;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090110

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/applocker/n;->b:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/applocker/n;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/applocker/n;->b:Landroid/view/View;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/antivirus/applocker/n;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/antivirus/applocker/n;->a:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    const v0, 0x400000ff

    iget-object v1, p0, Lcom/antivirus/applocker/n;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/n;->b:Landroid/view/View;

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/antivirus/c;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/n;->b:Landroid/view/View;

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/antivirus/applocker/p;

    invoke-direct {v1, p0}, Lcom/antivirus/applocker/p;-><init>(Lcom/antivirus/applocker/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/antivirus/applocker/n;->b:Landroid/view/View;

    return-object v0

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v2, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    new-instance v3, Lcom/antivirus/applocker/o;

    invoke-direct {v3, p0, v2}, Lcom/antivirus/applocker/o;-><init>(Lcom/antivirus/applocker/n;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v2, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/avg/toolkit/UID/a;

    invoke-virtual {p0}, Lcom/antivirus/applocker/n;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avg/toolkit/UID/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/applocker/n;->c:Lcom/avg/toolkit/UID/a;

    return-void
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->e()V

    iget-object v0, p0, Lcom/antivirus/applocker/n;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/n;->a(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public r()V
    .locals 2

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->r()V

    iget-object v0, p0, Lcom/antivirus/applocker/n;->a:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/antivirus/applocker/n;->a:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public s()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/applocker/n;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/antivirus/applocker/n;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->s()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
