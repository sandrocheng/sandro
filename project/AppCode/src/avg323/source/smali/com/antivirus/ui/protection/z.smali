.class Lcom/antivirus/ui/protection/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/x;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/x;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0, v1}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0, v1}, Lcom/antivirus/ui/protection/r;->a(Lcom/antivirus/ui/protection/r;Landroid/view/View;)Landroid/view/View;

    new-instance v0, Lcom/antivirus/core/b;

    iget-object v1, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v1, v1, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v1, v1, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v1}, Lcom/antivirus/ui/protection/r;->l(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v1, v1, Lcom/antivirus/ui/protection/x;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "NOCHANGE"

    iget-object v2, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v2, v2, Lcom/antivirus/ui/protection/x;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/antivirus/core/b;->u()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v1, v1, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v1, v1, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v1}, Lcom/antivirus/ui/protection/r;->m(Lcom/antivirus/ui/protection/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->n(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const v1, 0x7f0901a3

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->o(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const v1, 0x7f0901a2

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v1, v1, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v1, v1, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v1}, Lcom/antivirus/ui/protection/r;->p(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f0900e8

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[appname]"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v2, v2, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v2, v2, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v2}, Lcom/antivirus/ui/protection/r;->q(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->r(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const v2, 0x7f09010e

    invoke-static {v0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f02016f

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->s(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const v2, 0x7f09000d

    invoke-static {v0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/antivirus/ui/protection/aa;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/protection/aa;-><init>(Lcom/antivirus/ui/protection/z;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antivirus/ui/protection/r;->b(Lcom/antivirus/ui/protection/r;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/protection/z;->a:Lcom/antivirus/ui/protection/x;

    iget-object v0, v0, Lcom/antivirus/ui/protection/x;->b:Lcom/antivirus/ui/protection/w;

    iget-object v0, v0, Lcom/antivirus/ui/protection/w;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->t(Lcom/antivirus/ui/protection/r;)V

    goto :goto_0
.end method
