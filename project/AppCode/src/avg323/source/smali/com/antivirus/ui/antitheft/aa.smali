.class Lcom/antivirus/ui/antitheft/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/antivirus/ui/antitheft/z;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/antitheft/z;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    iput-object p2, p0, Lcom/antivirus/ui/antitheft/aa;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/aa;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antivirus/ui/antitheft/z;->a(Lcom/antivirus/ui/antitheft/z;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    invoke-virtual {v0}, Lcom/antivirus/ui/antitheft/z;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/b/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    invoke-static {v1}, Lcom/antivirus/ui/antitheft/z;->a(Lcom/antivirus/ui/antitheft/z;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f0901d3

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    invoke-static {v2}, Lcom/antivirus/ui/antitheft/z;->b(Lcom/antivirus/ui/antitheft/z;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    const v3, 0x7f090005

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/antivirus/ui/antitheft/z;->a(Lcom/antivirus/ui/antitheft/z;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/z;->c(Lcom/antivirus/ui/antitheft/z;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/antivirus/c/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/z;->d(Lcom/antivirus/ui/antitheft/z;)Lcom/antivirus/ui/antitheft/r;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    invoke-static {v1}, Lcom/antivirus/ui/antitheft/z;->c(Lcom/antivirus/ui/antitheft/z;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/antitheft/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    invoke-virtual {v0}, Lcom/antivirus/ui/antitheft/z;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "anti_theft"

    const-string v2, "register_first"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    invoke-static {v1}, Lcom/antivirus/ui/antitheft/z;->e(Lcom/antivirus/ui/antitheft/z;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const v2, 0x7f0900df

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/aa;->b:Lcom/antivirus/ui/antitheft/z;

    invoke-static {v2}, Lcom/antivirus/ui/antitheft/z;->f(Lcom/antivirus/ui/antitheft/z;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/antivirus/ui/antitheft/z;->a(Lcom/antivirus/ui/antitheft/z;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
