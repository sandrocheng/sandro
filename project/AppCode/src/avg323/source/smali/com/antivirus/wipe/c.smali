.class Lcom/antivirus/wipe/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/b;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/b;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f09000d

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->a(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "wipe_data"

    const-string v2, "wipe"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->b(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->c(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f09016e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->d(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->d(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->e(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f090172

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->f(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/wipe/d;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/d;-><init>(Lcom/antivirus/wipe/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object v1, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/antivirus/wipe/b;->a(Lcom/antivirus/wipe/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->g(Lcom/antivirus/wipe/b;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->g(Lcom/antivirus/wipe/b;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->l(Lcom/antivirus/wipe/b;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->h(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f09016f

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->i(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/wipe/e;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/e;-><init>(Lcom/antivirus/wipe/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/c;->a:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->k(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f09000e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/wipe/f;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/f;-><init>(Lcom/antivirus/wipe/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
