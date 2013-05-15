.class Lcom/avast/android/mobilesecurity/app/firewall/d;
.super Ljava/lang/Object;
.source "CustomRuleDetailFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/d/a;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Lcom/avast/android/generic/d/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->a:Lcom/avast/android/generic/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 273
    .line 275
    if-eqz p2, :cond_7

    .line 276
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->d(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->e(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    const v4, 0x7f0c035a

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 281
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->g(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->f()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->g(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->d()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->g(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    const v4, 0x7f0c0359

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 291
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->e(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->h(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->d()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 298
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    const v4, 0x7f0c0353

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 301
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    goto/16 :goto_0

    .line 304
    :cond_3
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->d(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->d()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 307
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    const v4, 0x7f0c0354

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 310
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    goto/16 :goto_0

    .line 313
    :cond_4
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->i(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v2

    if-nez v2, :cond_6

    .line 314
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->d(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/generic/ui/widget/EditTextRow;->d()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->d()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->b(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/EditTextRow;->d()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->c(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 319
    :cond_5
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    const v4, 0x7f0c0355

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 323
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    goto/16 :goto_0

    .line 328
    :cond_6
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->a:Lcom/avast/android/generic/d/a;

    const-string v3, "enabled"

    invoke-virtual {v2, v3, v1}, Lcom/avast/android/generic/d/a;->a(Ljava/lang/String;I)Z

    .line 335
    :goto_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->a(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;Z)V

    .line 337
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->j(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->b:Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;->k(Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;)Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)V

    goto/16 :goto_0

    .line 332
    :cond_7
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/d;->a:Lcom/avast/android/generic/d/a;

    const-string v3, "enabled"

    invoke-virtual {v2, v3, v0}, Lcom/avast/android/generic/d/a;->a(Ljava/lang/String;I)Z

    move v0, v1

    goto :goto_1
.end method
