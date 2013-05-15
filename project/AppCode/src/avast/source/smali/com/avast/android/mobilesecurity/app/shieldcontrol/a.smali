.class Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;
.super Ljava/lang/Object;
.source "AppShieldFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

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

    .line 57
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->a(Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    const-string v1, "ms-Settings"

    const-string v2, "appShield"

    if-eqz p2, :cond_2

    const-string v3, "yes"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 59
    if-eqz p2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->b(Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->c(Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->b(Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 62
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->c(Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    if-eqz p2, :cond_3

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    :goto_1
    move-object v2, v8

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    move-object v6, v8

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 70
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->b(Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->c(Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/a;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Landroid/content/Context;)V

    .line 75
    :cond_1
    return-void

    .line 58
    :cond_2
    const-string v3, "no"

    goto :goto_0

    .line 66
    :cond_3
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->d:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    goto :goto_1
.end method
