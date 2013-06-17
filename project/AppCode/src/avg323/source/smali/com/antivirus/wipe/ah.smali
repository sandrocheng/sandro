.class Lcom/antivirus/wipe/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/antivirus/wipe/ag;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/ag;Z)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iput-boolean p2, p0, Lcom/antivirus/wipe/ah;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const v4, 0x7f09000d

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v0, v0, Lcom/antivirus/wipe/ag;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-boolean v0, p0, Lcom/antivirus/wipe/ah;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v1, v1, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->m(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v1, v1, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->n(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f09019f

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v1, v1, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->o(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f09019e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v1, v1, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->p(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/wipe/ai;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/ai;-><init>(Lcom/antivirus/wipe/ah;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v1, v1, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->r(Lcom/antivirus/wipe/ab;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v1, v1, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/antivirus/wipe/ab;->a(Lcom/antivirus/wipe/ab;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v0, v0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->a(Lcom/antivirus/wipe/ab;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v0, v0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->a(Lcom/antivirus/wipe/ab;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v0, v0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->e(Lcom/antivirus/wipe/ab;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v0, v0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->f(Lcom/antivirus/wipe/ab;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v0, v0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->f(Lcom/antivirus/wipe/ab;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v1, v1, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->s(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v1, v1, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->t(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f09016c

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v1, v1, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->u(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f09016d

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v1, v1, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->v(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/wipe/aj;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/aj;-><init>(Lcom/antivirus/wipe/ah;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v1, v1, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/antivirus/wipe/ab;->a(Lcom/antivirus/wipe/ab;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v0, v0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->a(Lcom/antivirus/wipe/ab;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/wipe/ah;->b:Lcom/antivirus/wipe/ag;

    iget-object v0, v0, Lcom/antivirus/wipe/ag;->b:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->a(Lcom/antivirus/wipe/ab;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
