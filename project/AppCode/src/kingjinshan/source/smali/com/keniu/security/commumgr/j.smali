.class final Lcom/keniu/security/commumgr/j;
.super Ljava/lang/Object;
.source "NumLocateQueryActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/keniu/security/commumgr/j;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/keniu/security/commumgr/j;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->a(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 161
    iget-object v1, p0, Lcom/keniu/security/commumgr/j;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    new-instance v2, Lcom/jxphone/mosecurity/c/k;

    invoke-direct {v2, v0}, Lcom/jxphone/mosecurity/c/k;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keniu/security/commumgr/j;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    iget-object v3, p0, Lcom/keniu/security/commumgr/j;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v3}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->d(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/jxphone/mosecurity/c/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->b(Lcom/keniu/security/commumgr/NumLocateQueryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/keniu/security/commumgr/j;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->e(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/commumgr/j;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v1}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->c(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/commumgr/j;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->e(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/commumgr/j;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v1}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->d(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/commumgr/j;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->e(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/commumgr/j;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v1}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->d(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    return-void
.end method
