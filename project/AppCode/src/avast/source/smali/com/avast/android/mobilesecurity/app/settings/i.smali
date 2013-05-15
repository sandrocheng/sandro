.class Lcom/avast/android/mobilesecurity/app/settings/i;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/u;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/t;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;Lcom/avast/android/mobilesecurity/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->b:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/SelectorRow;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->b:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->h(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 424
    :cond_0
    if-nez p3, :cond_1

    .line 425
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;-><init>()V

    .line 426
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->b:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 427
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->b:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const v2, 0x7f0c01e0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->a(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->b:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const v2, 0x7f0c03b6

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->b(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->b:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "yesNoDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->a:Lcom/avast/android/mobilesecurity/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->e(Z)V

    .line 432
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->b:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const-string v1, "ms-Settings"

    const-string v2, "notificationAlwaysType"

    const/4 v3, 0x0

    int-to-long v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 434
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->b:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/notification/j;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/j;->b()V

    .line 435
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->b:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Landroid/content/Context;)V

    .line 436
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/i;->b:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0, p3}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;I)I

    goto :goto_0
.end method
