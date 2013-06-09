.class final Lorg/antivirus/wipe/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lorg/antivirus/wipe/ae;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/ae;Z)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iput-boolean p2, p0, Lorg/antivirus/wipe/af;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const v4, 0x7f090003

    const v2, 0x7f020051

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v0, v0, Lorg/antivirus/wipe/ae;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-boolean v0, p0, Lorg/antivirus/wipe/af;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v1, v1, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090110

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09010f

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/wipe/ag;

    invoke-direct {v2, p0}, Lorg/antivirus/wipe/ag;-><init>(Lorg/antivirus/wipe/af;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v1, v1, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v1}, Lorg/antivirus/wipe/WipeSd;->e(Lorg/antivirus/wipe/WipeSd;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v1, v1, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/antivirus/wipe/WipeSd;->a(Lorg/antivirus/wipe/WipeSd;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v0, v0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->a(Lorg/antivirus/wipe/WipeSd;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v0, v0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->a(Lorg/antivirus/wipe/WipeSd;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v0, v0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->b(Lorg/antivirus/wipe/WipeSd;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v0, v0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->c(Lorg/antivirus/wipe/WipeSd;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v0, v0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->c(Lorg/antivirus/wipe/WipeSd;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v1, v1, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900a7

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0900a8

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/wipe/ah;

    invoke-direct {v2, p0}, Lorg/antivirus/wipe/ah;-><init>(Lorg/antivirus/wipe/af;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v1, v1, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/antivirus/wipe/WipeSd;->a(Lorg/antivirus/wipe/WipeSd;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v0, v0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->a(Lorg/antivirus/wipe/WipeSd;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/antivirus/wipe/af;->b:Lorg/antivirus/wipe/ae;

    iget-object v0, v0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->a(Lorg/antivirus/wipe/WipeSd;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
