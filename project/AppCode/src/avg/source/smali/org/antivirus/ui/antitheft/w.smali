.class public final Lorg/antivirus/ui/antitheft/w;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private N:Landroid/app/AlertDialog;

.field private O:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/antitheft/w;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/w;->O:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/ui/antitheft/w;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/antitheft/w;->O:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/f;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/ui/antitheft/y;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/antitheft/y;-><init>(Lorg/antivirus/ui/antitheft/w;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/w;->N:Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/w;->N:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/f;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/w;->N:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/antitheft/w;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/antivirus/ui/antitheft/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030003

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/f;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->finish()V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f09017f

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900d3

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/antivirus/ui/antitheft/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090037

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/antivirus/ui/antitheft/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/f;

    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/f;

    const-string v3, "XX8R"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/f;

    invoke-static {v1}, Lorg/antivirus/AVSettings;->getFindRUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/f;

    invoke-static {v1}, Lorg/antivirus/tools/MailUtils;->getMainMailAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    const-string v3, "XX8R"

    invoke-virtual {v2, v3, v1}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/f;

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lorg/antivirus/ui/antitheft/x;

    invoke-direct {v2, p0, v0}, Lorg/antivirus/ui/antitheft/x;-><init>(Lorg/antivirus/ui/antitheft/w;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/w;->N:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/w;->N:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/w;->N:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->n()V

    return-void
.end method
