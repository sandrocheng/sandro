.class final Lorg/antivirus/antitheft/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/antitheft/LockScreen;


# direct methods
.method constructor <init>(Lorg/antivirus/antitheft/LockScreen;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/antitheft/w;->a:Lorg/antivirus/antitheft/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lorg/antivirus/antitheft/LockScreen;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lorg/antivirus/antitheft/LockScreen;->a(Z)V

    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/antivirus/AVSettings;->getPermLock()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/antitheft/w;->a:Lorg/antivirus/antitheft/LockScreen;

    iget-object v0, v0, Lorg/antivirus/antitheft/LockScreen;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/antitheft/w;->a:Lorg/antivirus/antitheft/LockScreen;

    iget-object v0, v0, Lorg/antivirus/antitheft/LockScreen;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/antitheft/w;->a:Lorg/antivirus/antitheft/LockScreen;

    iget-object v0, v0, Lorg/antivirus/antitheft/LockScreen;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/antitheft/w;->a:Lorg/antivirus/antitheft/LockScreen;

    invoke-static {v1}, Lorg/antivirus/AVSettings;->getPremPass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lorg/antivirus/AVSettings;->setPermLock(Z)V

    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/antivirus/antitheft/LockScreen;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    iget-object v0, p0, Lorg/antivirus/antitheft/w;->a:Lorg/antivirus/antitheft/LockScreen;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAD"

    const/16 v3, 0x409

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lorg/antivirus/antitheft/w;->a:Lorg/antivirus/antitheft/LockScreen;

    invoke-virtual {v0}, Lorg/antivirus/antitheft/LockScreen;->finish()V

    iget-object v0, p0, Lorg/antivirus/antitheft/w;->a:Lorg/antivirus/antitheft/LockScreen;

    const-string v1, "anti_theft"

    const-string v2, "unlock"

    const-string v3, "success"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/antivirus/antitheft/w;->a:Lorg/antivirus/antitheft/LockScreen;

    const v1, 0x7f090056

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/antivirus/antitheft/w;->a:Lorg/antivirus/antitheft/LockScreen;

    invoke-static {v0}, Lorg/antivirus/antitheft/LockScreen;->a(Lorg/antivirus/antitheft/LockScreen;)V

    iget-object v0, p0, Lorg/antivirus/antitheft/w;->a:Lorg/antivirus/antitheft/LockScreen;

    const-string v1, "anti_theft"

    const-string v2, "unlock"

    const-string v3, "failure"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
