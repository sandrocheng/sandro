.class public final Laef;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)V
    .locals 0

    iput-object p1, p0, Laef;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laef;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->k(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laef;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->l(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    iget-object v0, p0, Laef;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->l(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laef;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->l(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    iget-object v0, p0, Laef;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->l(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setClickable(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
