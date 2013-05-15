.class Lcom/avast/android/mobilesecurity/app/webshield/p;
.super Ljava/lang/Object;
.source "WebshieldSettingsFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 104
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    const-string v1, "ms-Settings"

    const-string v2, "webShield"

    if-eqz p2, :cond_2

    const-string v3, "yes"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 107
    if-eqz p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->c(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->d(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 111
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->c(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 112
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->d(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->c(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->d(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->e(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    if-eqz p2, :cond_3

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->I:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    :goto_1
    move-object v2, v8

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    move-object v6, v8

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 127
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/p;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_1
    return-void

    .line 105
    :cond_2
    const-string v3, "no"

    goto/16 :goto_0

    .line 123
    :cond_3
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->J:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    goto :goto_1
.end method
