.class final Lorg/antivirus/wipe/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/WipeSd;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/WipeSd;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/ad;->a:Lorg/antivirus/wipe/WipeSd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/wipe/ad;->a:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->b(Lorg/antivirus/wipe/WipeSd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1234"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/wipe/ad;->a:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->c(Lorg/antivirus/wipe/WipeSd;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/wipe/ad;->a:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->c(Lorg/antivirus/wipe/WipeSd;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/wipe/ad;->a:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->d(Lorg/antivirus/wipe/WipeSd;)V

    iget-object v0, p0, Lorg/antivirus/wipe/ad;->a:Lorg/antivirus/wipe/WipeSd;

    const-string v1, "wipe_sd"

    const-string v2, "ok"

    const-string v3, "success"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/antivirus/wipe/ad;->a:Lorg/antivirus/wipe/WipeSd;

    const v1, 0x7f0900a6

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/antivirus/wipe/ad;->a:Lorg/antivirus/wipe/WipeSd;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeSd;->b(Lorg/antivirus/wipe/WipeSd;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/wipe/ad;->a:Lorg/antivirus/wipe/WipeSd;

    const-string v1, "wipe_sd"

    const-string v2, "ok"

    const-string v3, "failure"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
