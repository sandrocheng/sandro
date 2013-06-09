.class final Lorg/antivirus/ui/antitheft/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lorg/antivirus/ui/antitheft/w;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/antitheft/w;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/antitheft/x;->b:Lorg/antivirus/ui/antitheft/w;

    iput-object p2, p0, Lorg/antivirus/ui/antitheft/x;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/x;->b:Lorg/antivirus/ui/antitheft/w;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/x;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antivirus/ui/antitheft/w;->a(Lorg/antivirus/ui/antitheft/w;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/x;->b:Lorg/antivirus/ui/antitheft/w;

    invoke-virtual {v0}, Lorg/antivirus/ui/antitheft/w;->c()Landroid/support/v4/app/f;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/a/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/x;->b:Lorg/antivirus/ui/antitheft/w;

    const v1, 0x7f09017f

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900d3

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/antivirus/ui/antitheft/w;->a(Lorg/antivirus/ui/antitheft/w;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/x;->b:Lorg/antivirus/ui/antitheft/w;

    invoke-static {v0}, Lorg/antivirus/ui/antitheft/w;->a(Lorg/antivirus/ui/antitheft/w;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/antivirus/tools/MailUtils;->isValidMailAddress(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/x;->b:Lorg/antivirus/ui/antitheft/w;

    invoke-virtual {v1}, Lorg/antivirus/ui/antitheft/w;->c()Landroid/support/v4/app/f;

    move-result-object v1

    const-class v2, Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "register"

    iget-object v2, p0, Lorg/antivirus/ui/antitheft/x;->b:Lorg/antivirus/ui/antitheft/w;

    invoke-static {v2}, Lorg/antivirus/ui/antitheft/w;->a(Lorg/antivirus/ui/antitheft/w;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/x;->b:Lorg/antivirus/ui/antitheft/w;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/antitheft/w;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/x;->b:Lorg/antivirus/ui/antitheft/w;

    invoke-virtual {v0}, Lorg/antivirus/ui/antitheft/w;->c()Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "anti_theft"

    const-string v2, "register_first"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/x;->b:Lorg/antivirus/ui/antitheft/w;

    const v1, 0x7f09000d

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090005

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/antivirus/ui/antitheft/w;->a(Lorg/antivirus/ui/antitheft/w;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
