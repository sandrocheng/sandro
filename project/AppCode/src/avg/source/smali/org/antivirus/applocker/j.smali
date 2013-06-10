.class final Lorg/antivirus/applocker/j;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/antivirus/applocker/i;


# direct methods
.method constructor <init>(Lorg/antivirus/applocker/i;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/applocker/j;->b:Lorg/antivirus/applocker/i;

    iput-object p2, p0, Lorg/antivirus/applocker/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/antivirus/applocker/j;->b:Lorg/antivirus/applocker/i;

    invoke-static {v0}, Lorg/antivirus/core/a/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/applocker/j;->a:Landroid/content/Context;

    const v1, 0x7f090054

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/antivirus/applocker/j;->b:Lorg/antivirus/applocker/i;

    invoke-virtual {v0}, Lorg/antivirus/applocker/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->getAppLockerPassRecoveryMailAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/antivirus/Strings;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/antivirus/applocker/j;->b:Lorg/antivirus/applocker/i;

    invoke-virtual {v2}, Lorg/antivirus/applocker/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/antivirus/AVSettings;->getApplockerUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/antivirus/applocker/j;->a:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lorg/antivirus/applocker/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lorg/antivirus/applocker/j;->b:Lorg/antivirus/applocker/i;

    const-string v1, "app_locker"

    const-string v2, "recover_password"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/applocker/j;->a:Landroid/content/Context;

    const v1, 0x7f090055

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
