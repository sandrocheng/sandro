.class public Lcom/antivirus/wipe/ab;
.super Lcom/antivirus/ui/a/a/a;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/widget/Button;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/wipe/ab;->c:Landroid/widget/Button;

    iput-object v0, p0, Lcom/antivirus/wipe/ab;->e:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/wipe/ab;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/antivirus/wipe/ab;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/antivirus/wipe/ab;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/ab;->b:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, ""

    iget-object v2, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f09020b

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/antivirus/wipe/ag;

    invoke-direct {v2, p0, v0}, Lcom/antivirus/wipe/ag;-><init>(Lcom/antivirus/wipe/ab;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/wipe/ab;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/antivirus/wipe/ab;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/antivirus/wipe/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/wipe/ab;->a()V

    return-void
.end method

.method static synthetic h(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic i(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic j(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic m(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic n(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic o(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic p(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic q(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic r(Lcom/antivirus/wipe/ab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/wipe/ab;->d:Z

    return v0
.end method

.method static synthetic s(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic t(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic u(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic v(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic w(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v4, 0x7f09000d

    const/4 v3, 0x0

    const v0, 0x7f03004b

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/wipe/ab;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09015e

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/wipe/ab;->e:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/wipe/ab;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/antivirus/wipe/ab;->f:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09016c

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090133

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/wipe/ac;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/ac;-><init>(Lcom/antivirus/wipe/ab;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/antivirus/wipe/ad;

    invoke-direct {v1, p0}, Lcom/antivirus/wipe/ad;-><init>(Lcom/antivirus/wipe/ab;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/wipe/ab;->b:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->e:Landroid/view/View;

    return-object v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/wipe/ab;->f:Z

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->e:Landroid/view/View;

    const v1, 0x7f080179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090164

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->e:Landroid/view/View;

    const v1, 0x7f08017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090165

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->e:Landroid/view/View;

    const v1, 0x7f08017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/antivirus/wipe/ab;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->e:Landroid/view/View;

    const v1, 0x7f08017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/wipe/ab;->e:Landroid/view/View;

    const v1, 0x7f08017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/antivirus/wipe/ab;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->c:Landroid/widget/Button;

    new-instance v1, Lcom/antivirus/wipe/af;

    invoke-direct {v1, p0}, Lcom/antivirus/wipe/af;-><init>(Lcom/antivirus/wipe/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelected(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09000e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/antivirus/wipe/ae;

    invoke-direct {v1, p0}, Lcom/antivirus/wipe/ae;-><init>(Lcom/antivirus/wipe/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->e()V

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/antivirus/wipe/ab;->a(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public r()V
    .locals 1

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/wipe/ab;->d:Z

    return-void
.end method

.method public s()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/antivirus/wipe/ab;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/antivirus/wipe/ab;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->s()V

    iget-boolean v0, p0, Lcom/antivirus/wipe/ab;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/wipe/ab;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    :cond_1
    iput-boolean v3, p0, Lcom/antivirus/wipe/ab;->d:Z

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
