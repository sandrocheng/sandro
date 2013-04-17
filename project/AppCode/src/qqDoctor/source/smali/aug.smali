.class final Laug;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic d:Z

.field private synthetic e:Landroid/widget/EditText;

.field private synthetic f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic g:Latz;


# direct methods
.method constructor <init>(Latz;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;ZLandroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Laug;->g:Latz;

    iput-object p2, p0, Laug;->a:Landroid/widget/EditText;

    iput-object p3, p0, Laug;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object p4, p0, Laug;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-boolean p5, p0, Laug;->d:Z

    iput-object p6, p0, Laug;->e:Landroid/widget/EditText;

    iput-object p7, p0, Laug;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Laug;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laug;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v2

    iget-object v1, p0, Laug;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Laug;->g:Latz;

    invoke-static {v0}, Latz;->F(Latz;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laug;->g:Latz;

    invoke-static {v1}, Latz;->G(Latz;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b057e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Laug;->d:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\*+$"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Laug;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Laug;->g:Latz;

    invoke-static {v1}, Latz;->H(Latz;)Lki;

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v4, Llf;

    iget-object v5, p0, Laug;->g:Latz;

    invoke-static {v5}, Latz;->I(Latz;)I

    move-result v5

    invoke-direct {v4, v1, v0, v5}, Llf;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-boolean v2, v4, Llf;->enableForCalling:Z

    iput-boolean v3, v4, Llf;->enableForSMS:Z

    iget-object v0, p0, Laug;->g:Latz;

    invoke-static {v0}, Latz;->I(Latz;)I

    move-result v0

    iput v0, v4, Llf;->b:I

    iget-object v0, p0, Laug;->g:Latz;

    invoke-static {v0}, Latz;->I(Latz;)I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lvk$a;

    iget-object v1, v4, Llf;->phonenum:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lvk$a;-><init>(Ljava/lang/String;ZI)V

    iput-object v0, v4, Llf;->a:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Laug;->g:Latz;

    invoke-static {v0}, Latz;->J(Latz;)Lvk;

    move-result-object v0

    iget-object v1, p0, Laug;->g:Latz;

    invoke-static {v1}, Latz;->I(Latz;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lvk;->a(Llf;I)V

    iget-object v0, p0, Laug;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    iget-object v1, p0, Laug;->g:Latz;

    invoke-static {v1}, Latz;->I(Latz;)I

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x65f2

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x65f3

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_0
.end method
