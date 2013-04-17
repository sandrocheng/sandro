.class final Lbkf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lbjo;


# direct methods
.method constructor <init>(Lbjo;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbkf;->d:Lbjo;

    iput-object p2, p0, Lbkf;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lbkf;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lbkf;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbkf;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lbkf;->d:Lbjo;

    invoke-static {v1}, Lbjo;->a(Lbjo;)Lho;

    move-result-object v1

    invoke-virtual {v1, v0}, Lho;->g(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lbkf;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lbkf;->d:Lbjo;

    invoke-static {v1}, Lbjo;->a(Lbjo;)Lho;

    move-result-object v1

    invoke-virtual {v1, v0}, Lho;->f(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lbkf;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lbkf;->d:Lbjo;

    invoke-static {v0}, Lbjo;->i(Lbjo;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbkf;->d:Lbjo;

    invoke-static {v1}, Lbjo;->j(Lbjo;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0435

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbkf;->d:Lbjo;

    invoke-static {v0}, Lbjo;->k(Lbjo;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbkf;->d:Lbjo;

    invoke-static {v1}, Lbjo;->l(Lbjo;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0436

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
