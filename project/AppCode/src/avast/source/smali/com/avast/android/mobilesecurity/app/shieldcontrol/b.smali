.class Lcom/avast/android/mobilesecurity/app/shieldcontrol/b;
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
    .line 79
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/b;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/b;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->a(Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/b;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    const-string v1, "ms-Settings"

    const-string v2, "appInstallShield"

    if-eqz p2, :cond_1

    const-string v3, "yes"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 84
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/b;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->c(Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/b;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;->d(Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 88
    :cond_0
    return-void

    .line 83
    :cond_1
    const-string v3, "no"

    goto :goto_0
.end method
