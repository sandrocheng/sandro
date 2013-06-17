.class public Lcom/antivirus/ui/antitheft/h;
.super Lcom/avg/ui/general/b/b;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/antitheft/b;


# direct methods
.method public constructor <init>(Lcom/antivirus/ui/antitheft/b;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/h;->a:Lcom/antivirus/ui/antitheft/b;

    invoke-direct {p0, p2, p3}, Lcom/avg/ui/general/b/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Lcom/avg/ui/general/b/c;Lcom/avg/ui/general/b/d;)V
    .locals 5

    const v4, 0x7f090142

    const/4 v3, 0x0

    const v2, -0x666667

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/h;->a:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/b;->c(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/h;->a:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v1}, Lcom/antivirus/ui/antitheft/b;->d(Lcom/antivirus/ui/antitheft/b;)Lcom/antivirus/core/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antivirus/antitheft/w;->b(Landroid/content/Context;Lcom/antivirus/core/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/h;->a:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v1}, Lcom/antivirus/ui/antitheft/b;->e(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p2, Lcom/avg/ui/general/b/d;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p2, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/h;->a:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v1}, Lcom/antivirus/ui/antitheft/b;->f(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/antivirus/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p2, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p2, Lcom/avg/ui/general/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected a(ILcom/avg/ui/general/b/c;Lcom/avg/ui/general/b/d;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/avg/ui/general/b/b;->a(ILcom/avg/ui/general/b/c;Lcom/avg/ui/general/b/d;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/antivirus/ui/antitheft/h;->a(Lcom/avg/ui/general/b/c;Lcom/avg/ui/general/b/d;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
