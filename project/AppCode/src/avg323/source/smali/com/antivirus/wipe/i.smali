.class Lcom/antivirus/wipe/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/antivirus/wipe/b;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    iput-boolean p2, p0, Lcom/antivirus/wipe/i;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->C(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->D(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f09016e

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/antivirus/wipe/i;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->E(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f090170

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object v1, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->G(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/wipe/j;

    invoke-direct {v2, p0}, Lcom/antivirus/wipe/j;-><init>(Lcom/antivirus/wipe/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/antivirus/wipe/b;->a(Lcom/antivirus/wipe/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->g(Lcom/antivirus/wipe/b;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->g(Lcom/antivirus/wipe/b;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->w(Lcom/antivirus/wipe/b;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->w(Lcom/antivirus/wipe/b;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->s(Lcom/antivirus/wipe/b;)V

    iget-object v0, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->d(Lcom/antivirus/wipe/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/antivirus/wipe/i;->b:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->F(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f090171

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
