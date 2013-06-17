.class Lcom/antivirus/antitheft/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/antitheft/LockScreen;


# direct methods
.method constructor <init>(Lcom/antivirus/antitheft/LockScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/antivirus/antitheft/LockScreen;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4}, Lcom/antivirus/antitheft/LockScreen;->a(Z)V

    sget-object v0, Lcom/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/antivirus/c;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    iget-object v0, v0, Lcom/antivirus/antitheft/LockScreen;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    iget-object v0, v0, Lcom/antivirus/antitheft/LockScreen;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    iget-object v0, v0, Lcom/antivirus/antitheft/LockScreen;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    invoke-static {v1}, Lcom/antivirus/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v4}, Lcom/antivirus/c;->f(Z)V

    sget-object v0, Lcom/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    invoke-static {v0}, Lcom/antivirus/antitheft/b;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    invoke-virtual {v0}, Lcom/antivirus/antitheft/LockScreen;->finish()V

    iget-object v0, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    const-string v1, "anti_theft"

    const-string v2, "unlock"

    const-string v3, "success"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    iget-object v1, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    const v2, 0x7f090125

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    invoke-static {v0}, Lcom/antivirus/antitheft/LockScreen;->a(Lcom/antivirus/antitheft/LockScreen;)V

    iget-object v0, p0, Lcom/antivirus/antitheft/y;->a:Lcom/antivirus/antitheft/LockScreen;

    const-string v1, "anti_theft"

    const-string v2, "unlock"

    const-string v3, "failure"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
