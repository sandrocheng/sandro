.class public Lcom/antivirus/ui/antitheft/z;
.super Lcom/antivirus/ui/a/a/a;

# interfaces
.implements Lcom/antivirus/ui/antitheft/x;


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Lcom/antivirus/ui/antitheft/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/z;->c:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/antitheft/z;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/antivirus/ui/antitheft/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/z;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/antivirus/ui/antitheft/z;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/antivirus/ui/antitheft/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/z;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09000d

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/ui/antitheft/ab;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/antitheft/ab;-><init>(Lcom/antivirus/ui/antitheft/z;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/z;->a:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->a:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/antivirus/ui/antitheft/z;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/antivirus/ui/antitheft/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/antivirus/ui/antitheft/z;)Lcom/antivirus/ui/antitheft/r;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->d:Lcom/antivirus/ui/antitheft/r;

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/ui/antitheft/z;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/antivirus/ui/antitheft/z;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/z;->c:Landroid/view/View;

    new-instance v0, Lcom/antivirus/ui/antitheft/r;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1, p0}, Lcom/antivirus/ui/antitheft/r;-><init>(Lcom/avg/ui/general/a/a;Lcom/antivirus/ui/antitheft/x;)V

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/z;->d:Lcom/antivirus/ui/antitheft/r;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->c:Landroid/view/View;

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->m()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "register"

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/antivirus/ui/antitheft/b;

    invoke-direct {v1}, Lcom/antivirus/ui/antitheft/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/antitheft/b;->g(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0800bc

    const-string v3, "AntiTheftFragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/z;->h()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lcom/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "register"

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/antitheft/z;->a(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/z;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    goto :goto_0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f080029

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/z;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/z;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/antivirus/ui/antitheft/z;->ag:Lcom/avg/ui/general/a/a;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/avg/ui/general/c/i;->a(Landroid/content/Context;I)I

    move-result v3

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/z;->h()Landroid/support/v4/app/i;

    move-result-object v1

    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Landroid/support/v4/app/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/z;->d:Lcom/antivirus/ui/antitheft/r;

    invoke-virtual {v2}, Lcom/antivirus/ui/antitheft/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/antivirus/ui/antitheft/aa;

    invoke-direct {v2, p0, v1}, Lcom/antivirus/ui/antitheft/aa;-><init>(Lcom/antivirus/ui/antitheft/z;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/z;->a:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->e()V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/z;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/z;->a(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method
