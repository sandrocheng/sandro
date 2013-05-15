.class Lcom/avast/android/mobilesecurity/app/shieldcontrol/i;
.super Ljava/lang/Object;
.source "MessageShieldFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/i;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/i;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->a(Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/i;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;

    const-string v1, "ms-Settings"

    const-string v2, "incomingMessageShield"

    if-eqz p2, :cond_1

    const-string v3, "yes"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 89
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/i;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->c(Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/i;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;->d(Lcom/avast/android/mobilesecurity/app/shieldcontrol/MessageShieldFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 93
    :cond_0
    return-void

    .line 88
    :cond_1
    const-string v3, "no"

    goto :goto_0
.end method
