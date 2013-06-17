.class Lcom/antivirus/wipe/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/ab;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/af;->a:Lcom/antivirus/wipe/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/wipe/af;->a:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->e(Lcom/antivirus/wipe/ab;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1234"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/wipe/af;->a:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->f(Lcom/antivirus/wipe/ab;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/wipe/af;->a:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->f(Lcom/antivirus/wipe/ab;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/wipe/af;->a:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->g(Lcom/antivirus/wipe/ab;)V

    iget-object v0, p0, Lcom/antivirus/wipe/af;->a:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->h(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "wipe_sd"

    const-string v2, "ok"

    const-string v3, "success"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/wipe/af;->a:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->i(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/wipe/af;->a:Lcom/antivirus/wipe/ab;

    invoke-static {v1}, Lcom/antivirus/wipe/ab;->j(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f09016b

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/antivirus/wipe/af;->a:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->e(Lcom/antivirus/wipe/ab;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/wipe/af;->a:Lcom/antivirus/wipe/ab;

    invoke-static {v0}, Lcom/antivirus/wipe/ab;->k(Lcom/antivirus/wipe/ab;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "wipe_sd"

    const-string v2, "ok"

    const-string v3, "failure"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
