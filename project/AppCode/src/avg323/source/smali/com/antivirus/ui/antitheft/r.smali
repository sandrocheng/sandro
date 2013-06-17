.class public Lcom/antivirus/ui/antitheft/r;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/avg/ui/general/a/a;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/os/Handler;

.field private d:Landroid/app/AlertDialog;

.field private e:Lcom/antivirus/ui/antitheft/x;

.field private f:Lcom/a/a/a/c;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Lcom/antivirus/core/b;


# direct methods
.method public constructor <init>(Lcom/avg/ui/general/a/a;Lcom/antivirus/ui/antitheft/x;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    new-instance v0, Lcom/a/a/a/c;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const-string v2, "XX8R"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/r;->f:Lcom/a/a/a/c;

    new-instance v0, Lcom/antivirus/ui/antitheft/s;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/antitheft/s;-><init>(Lcom/antivirus/ui/antitheft/r;)V

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/r;->c:Landroid/os/Handler;

    new-instance v0, Lcom/antivirus/ui/antitheft/t;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/antitheft/t;-><init>(Lcom/antivirus/ui/antitheft/r;)V

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/r;->h:Landroid/os/Handler;

    iput-object p2, p0, Lcom/antivirus/ui/antitheft/r;->e:Lcom/antivirus/ui/antitheft/x;

    new-instance v0, Lcom/antivirus/core/b;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/r;->i:Lcom/antivirus/core/b;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/antitheft/r;)Lcom/antivirus/ui/antitheft/x;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->e:Lcom/antivirus/ui/antitheft/x;

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09000d

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/ui/antitheft/w;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/antitheft/w;-><init>(Lcom/antivirus/ui/antitheft/r;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/r;->d:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->d:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->f:Lcom/a/a/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->f:Lcom/a/a/a/c;

    const-string v1, "XX8R"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->f:Lcom/a/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/a/c;->a()Z

    :cond_0
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/antivirus/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/antivirus/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const-string v1, ""

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const v3, 0x7f0901d9

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/r;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->h:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/antivirus/antitheft/b;->a(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/r;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const-string v1, ""

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const v3, 0x7f0901d2

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/r;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->c:Landroid/os/Handler;

    invoke-static {v0, p1, v1}, Lcom/antivirus/antitheft/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method protected a(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/antivirus/ui/antitheft/r;->b:Landroid/app/ProgressDialog;

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/antivirus/ui/antitheft/r;->b(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/antivirus/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->e:Lcom/antivirus/ui/antitheft/x;

    invoke-interface {v0, p1}, Lcom/antivirus/ui/antitheft/x;->e(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const v1, 0x7f0901d3

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090005

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200d7

    new-instance v3, Lcom/antivirus/ui/antitheft/u;

    invoke-direct {v3, p0, p1}, Lcom/antivirus/ui/antitheft/u;-><init>(Lcom/antivirus/ui/antitheft/r;Z)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/antivirus/ui/antitheft/r;->a(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->f:Lcom/a/a/a/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->f:Lcom/a/a/a/c;

    const-string v2, "XX8R"

    invoke-virtual {v1, v2, v0}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/antivirus/ui/antitheft/r;->c()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected b(Z)V
    .locals 6

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/r;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/r;->b:Landroid/app/ProgressDialog;

    :cond_0
    new-instance v0, Lcom/antivirus/ui/antitheft/v;

    invoke-direct {v0, p0, p1}, Lcom/antivirus/ui/antitheft/v;-><init>(Lcom/antivirus/ui/antitheft/r;Z)V

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/antivirus/ui/antitheft/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/r;->i:Lcom/antivirus/core/b;

    invoke-static {v1, v2}, Lcom/antivirus/antitheft/w;->b(Landroid/content/Context;Lcom/antivirus/core/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/antivirus/c;->c(Z)V

    invoke-static {}, Lcom/antivirus/c;->n()V

    :cond_1
    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090106

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090107

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    invoke-virtual {v4}, Lcom/avg/ui/general/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x21

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090105

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200d9

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/antivirus/ui/antitheft/r;->a(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0901d3

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/r;->a:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090005

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200d7

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/antivirus/ui/antitheft/r;->a(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method
