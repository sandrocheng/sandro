.class final Lbim;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic f:Lbig;


# direct methods
.method constructor <init>(Lbig;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbim;->f:Lbig;

    iput-object p2, p0, Lbim;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lbim;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lbim;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object p5, p0, Lbim;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object p6, p0, Lbim;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lbim;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbim;->f:Lbig;

    invoke-static {v0}, Lbig;->p(Lbig;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbim;->f:Lbig;

    invoke-static {v1}, Lbig;->q(Lbig;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b057e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbim;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lbim;->f:Lbig;

    invoke-static {v0}, Lbig;->r(Lbig;)Lki;

    invoke-static {v1}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Llf;

    invoke-direct {v2, v0, v1, v3}, Llf;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lbim;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    iput-boolean v0, v2, Llf;->enableForCalling:Z

    iget-object v0, p0, Lbim;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    iput-boolean v0, v2, Llf;->enableForSMS:Z

    iput v3, v2, Llf;->b:I

    iget-object v0, p0, Lbim;->f:Lbig;

    invoke-static {v0}, Lbig;->s(Lbig;)Lvk;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lvk;->a(Llf;I)V

    iget-object v0, p0, Lbim;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65f5

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0
.end method
