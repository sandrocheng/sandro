.class final Lcom/ijinshan/kinghelper/firewall/dn;
.super Ljava/lang/Object;
.source "ServiceSmsGroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/dn;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 520
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dn;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Lcom/ijinshan/kinghelper/firewall/do;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dn;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->f(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/do;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 521
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dn;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->i(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 522
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/dn;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->i(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080345

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 523
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 527
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dn;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    const v1, 0x7f0b01f3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 538
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/dn;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v3}, Lcom/ijinshan/kinghelper/a/j;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 532
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/dn;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-static {v3, v0, v1, v4, v2}, Lcom/ijinshan/kinghelper/firewall/core/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dn;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    const v1, 0x7f0b0130

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dn;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    const v1, 0x7f0b0131

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
