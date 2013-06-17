.class Lcom/avg/ui/license/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/avg/ui/license/a;


# direct methods
.method constructor <init>(Lcom/avg/ui/license/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-static {v0}, Lcom/avg/ui/license/a;->a(Lcom/avg/ui/license/a;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-static {v0}, Lcom/avg/ui/license/a;->a(Lcom/avg/ui/license/a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/avg/ui/license/a;->a(Lcom/avg/ui/license/a;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-static {v0}, Lcom/avg/ui/license/a;->b(Lcom/avg/ui/license/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-static {v0}, Lcom/avg/ui/license/a;->c(Lcom/avg/ui/license/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    sget v3, Lcom/avg/ui/general/g;->license_activation_block_title:I

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/avg/ui/general/c;->dlg_ic_license:I

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-static {v0}, Lcom/avg/ui/license/a;->d(Lcom/avg/ui/license/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    sget v3, Lcom/avg/ui/general/g;->license_activation_licensed_pro_toast:I

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-static {v0}, Lcom/avg/ui/license/a;->f(Lcom/avg/ui/license/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    sget v3, Lcom/avg/ui/general/g;->ok:I

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/avg/ui/license/c;

    invoke-direct {v3, p0, v1}, Lcom/avg/ui/license/c;-><init>(Lcom/avg/ui/license/b;Z)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avg/ui/license/a;->a(Lcom/avg/ui/license/a;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-static {v0}, Lcom/avg/ui/license/a;->i(Lcom/avg/ui/license/a;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-static {v0}, Lcom/avg/ui/license/a;->i(Lcom/avg/ui/license/a;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/avg/ui/license/b;->a:Lcom/avg/ui/license/a;

    invoke-static {v0}, Lcom/avg/ui/license/a;->e(Lcom/avg/ui/license/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    sget v3, Lcom/avg/ui/general/g;->license_invalid_title:I

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
