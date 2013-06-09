.class public Lorg/antivirus/wipe/WipeSd;
.super Lorg/antivirus/ui/BaseToolActivity;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/widget/Button;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/wipe/WipeSd;->c:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/wipe/WipeSd;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeSd;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/wipe/WipeSd;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/WipeSd;->b:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic b(Lorg/antivirus/wipe/WipeSd;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeSd;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lorg/antivirus/wipe/WipeSd;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeSd;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lorg/antivirus/wipe/WipeSd;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, ""

    const v1, 0x7f090194

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/antivirus/wipe/ae;

    invoke-direct {v2, p0, v0}, Lorg/antivirus/wipe/ae;-><init>(Lorg/antivirus/wipe/WipeSd;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic e(Lorg/antivirus/wipe/WipeSd;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/wipe/WipeSd;->d:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f090003

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeSd;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f020176

    const v3, 0x7f020175

    const v0, 0x7f09009a

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/wipe/WipeSd;->a(ZIILjava/lang/String;Z)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900a7

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09006a

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/wipe/aa;

    invoke-direct {v2, p0}, Lorg/antivirus/wipe/aa;-><init>(Lorg/antivirus/wipe/WipeSd;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lorg/antivirus/wipe/ab;

    invoke-direct {v1, p0}, Lorg/antivirus/wipe/ab;-><init>(Lorg/antivirus/wipe/WipeSd;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/wipe/WipeSd;->b:Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/wipe/WipeSd;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/antivirus/wipe/WipeSd;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    invoke-virtual {p0}, Lorg/antivirus/wipe/WipeSd;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_0
    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeSd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900a0

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeSd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900a1

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08013a

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeSd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/antivirus/wipe/WipeSd;->c:Landroid/widget/Button;

    iget-object v0, p0, Lorg/antivirus/wipe/WipeSd;->c:Landroid/widget/Button;

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeSd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090004

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/antivirus/wipe/ac;

    invoke-direct {v1, p0}, Lorg/antivirus/wipe/ac;-><init>(Lorg/antivirus/wipe/WipeSd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/WipeSd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/antivirus/wipe/WipeSd;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/antivirus/wipe/WipeSd;->c:Landroid/widget/Button;

    new-instance v1, Lorg/antivirus/wipe/ad;

    invoke-direct {v1, p0}, Lorg/antivirus/wipe/ad;-><init>(Lorg/antivirus/wipe/WipeSd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/antivirus/wipe/WipeSd;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelected(Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/WipeSd;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/wipe/WipeSd;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/wipe/WipeSd;->d:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/wipe/WipeSd;->d:Z

    return-void
.end method
