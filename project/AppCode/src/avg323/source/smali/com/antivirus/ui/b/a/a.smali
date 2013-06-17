.class public abstract Lcom/antivirus/ui/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/avg/ui/general/e/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lcom/avg/toolkit/b/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090006

    invoke-static {p1, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/antivirus/b/a;->a(Landroid/content/Context;)V

    const-string v0, "category_app_landing"

    const-string v1, "action_upgrade"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v2, Lcom/avg/toolkit/UID/a;

    invoke-direct {v2, p1}, Lcom/avg/toolkit/UID/a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f090011

    invoke-static {p1, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f090012

    invoke-static {p1, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    const v0, 0x7f090013

    invoke-static {p1, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f090014

    invoke-static {p1, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Lcom/avg/toolkit/UID/a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    new-instance v3, Lcom/avg/toolkit/b/h;

    invoke-direct {v3, p1}, Lcom/avg/toolkit/b/h;-><init>(Landroid/content/Context;)V

    const-string v4, "%s/purchase/share?device_sn=%s&varCode=%s&fs=%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/avg/toolkit/b/h;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    aput-object v2, v5, v7

    const/4 v2, 0x2

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v3

    iget v3, v3, Lcom/avg/toolkit/e/a;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v3

    iget v3, v3, Lcom/avg/toolkit/e/a;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[url]"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.EMAIL"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v0, "text/html"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Email:"

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "category_app_landing"

    const-string v1, "action_share"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v6}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method protected c(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avg/ui/license/EnterLicenseActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
