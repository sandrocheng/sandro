.class public final Lbji;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V
    .locals 0

    iput-object p1, p0, Lbji;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbji;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->j(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lpc;->b()Lpc;

    move-result-object v0

    invoke-virtual {v0}, Lpc;->f()V

    return-void

    :cond_0
    iget-object v0, p0, Lbji;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->j(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
