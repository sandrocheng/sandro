.class Lcom/antivirus/ui/antitheft/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/antivirus/ui/antitheft/b;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/antitheft/b;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/e;->b:Lcom/antivirus/ui/antitheft/b;

    iput-object p2, p0, Lcom/antivirus/ui/antitheft/e;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/e;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/e;->b:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v1}, Lcom/antivirus/ui/antitheft/b;->g(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const-string v2, "anti_theft"

    const-string v3, "registered_account"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/antivirus/c/b;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/e;->b:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v1}, Lcom/antivirus/ui/antitheft/b;->h(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/antivirus/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/e;->b:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v2}, Lcom/antivirus/ui/antitheft/b;->i(Lcom/antivirus/ui/antitheft/b;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/e;->b:Lcom/antivirus/ui/antitheft/b;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/e;->b:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v1}, Lcom/antivirus/ui/antitheft/b;->j(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f090102

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/e;->b:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v2}, Lcom/antivirus/ui/antitheft/b;->k(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    const v3, 0x7f09022d

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/antivirus/ui/antitheft/b;->a(Lcom/antivirus/ui/antitheft/b;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/antivirus/ui/antitheft/e;->b:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v1}, Lcom/antivirus/ui/antitheft/b;->l(Lcom/antivirus/ui/antitheft/b;)Lcom/antivirus/ui/antitheft/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/antitheft/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/antitheft/e;->b:Lcom/antivirus/ui/antitheft/b;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/e;->b:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v1}, Lcom/antivirus/ui/antitheft/b;->m(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f0900df

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/e;->b:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v2}, Lcom/antivirus/ui/antitheft/b;->n(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/antivirus/ui/antitheft/b;->a(Lcom/antivirus/ui/antitheft/b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
