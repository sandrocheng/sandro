.class Lcom/antivirus/applocker/o;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/antivirus/applocker/n;


# direct methods
.method constructor <init>(Lcom/antivirus/applocker/n;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/applocker/o;->b:Lcom/antivirus/applocker/n;

    iput-object p2, p0, Lcom/antivirus/applocker/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/antivirus/applocker/o;->b:Lcom/antivirus/applocker/n;

    invoke-static {v0}, Lcom/antivirus/applocker/n;->a(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/b/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/o;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/antivirus/applocker/o;->b:Lcom/antivirus/applocker/n;

    invoke-static {v1}, Lcom/antivirus/applocker/n;->b(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f090123

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/antivirus/applocker/o;->b:Lcom/antivirus/applocker/n;

    invoke-static {v0}, Lcom/antivirus/applocker/n;->c(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/antivirus/m;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/applocker/o;->b:Lcom/antivirus/applocker/n;

    invoke-static {v2}, Lcom/antivirus/applocker/n;->d(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/antivirus/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/applocker/o;->a:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/antivirus/applocker/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/applocker/o;->b:Lcom/antivirus/applocker/n;

    invoke-static {v0}, Lcom/antivirus/applocker/n;->f(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "app_locker"

    const-string v2, "recover_password"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/applocker/o;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/antivirus/applocker/o;->b:Lcom/antivirus/applocker/n;

    invoke-static {v1}, Lcom/antivirus/applocker/n;->e(Lcom/antivirus/applocker/n;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f090124

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
