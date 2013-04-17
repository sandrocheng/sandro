.class public final Laen;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)V
    .locals 0

    iput-object p1, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->d(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b011b

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->e(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->f(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b05fc

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->a(Z)V

    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->g(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->h(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_5

    :cond_4
    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->i(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b011f

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    const/4 v2, -0x1

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_6

    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->j(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0120

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->k(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0121

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "DFG#$%^#%$RGHR(&*M<><"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, La;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->l(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "intent_key_mobile_area_code"

    iget-object v4, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v4}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->m(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "intent_key_mobile_num"

    iget-object v4, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v4}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "intent_key_mobile_pwd"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Laen;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->finish()V

    goto/16 :goto_0
.end method
