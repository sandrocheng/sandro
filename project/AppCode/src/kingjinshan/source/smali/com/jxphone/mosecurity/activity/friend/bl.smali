.class final Lcom/jxphone/mosecurity/activity/friend/bl;
.super Ljava/lang/Object;
.source "PeopleSmsLogActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bl;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bl;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->g(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bl;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->b(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bl;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->f(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 232
    return-void

    .line 231
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
