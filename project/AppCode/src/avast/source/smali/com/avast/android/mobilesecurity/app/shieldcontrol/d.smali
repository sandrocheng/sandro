.class Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;
.super Ljava/lang/Object;
.source "FileShieldFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

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

    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->a(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    const-string v1, "ms-Settings"

    const-string v2, "fileShield"

    if-eqz p2, :cond_2

    const-string v3, "yes"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    if-eqz p2, :cond_3

    .line 64
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->b(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->c(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->d(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->b(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 66
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->c(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 67
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->d(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Starting FileShieldService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    if-eqz p2, :cond_4

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->K:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    :goto_2
    move-object v2, v8

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    move-object v6, v8

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 80
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->b(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->c(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->d(Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 84
    :cond_1
    return-void

    .line 61
    :cond_2
    const-string v3, "no"

    goto/16 :goto_0

    .line 72
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Stopping FileShieldService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/d;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/FileShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    .line 76
    :cond_4
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->L:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    goto :goto_2
.end method
