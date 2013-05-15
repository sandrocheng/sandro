.class Lcom/avast/android/mobilesecurity/ui/widget/a;
.super Ljava/lang/Object;
.source "AppLockingTypeButtons.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/a;->a:Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/a;->a:Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->a(Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;)Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 129
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/a;->a:Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;

    invoke-static {v0, p2}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->a(Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;Z)V

    .line 133
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/a;->a:Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->b(Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;)Lcom/avast/android/generic/d/d;

    .line 134
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/a;->a:Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->c(Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;)Lcom/avast/android/generic/d/f;

    move-result-object v0

    .line 136
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lcom/avast/android/generic/d/f;->a()Landroid/net/Uri;

    .line 140
    :cond_0
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v1

    const-string v2, "ms-AppLocking"

    const-string v3, "Enable lock app by password"

    if-eqz p2, :cond_2

    const-string v0, "on"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    :cond_1
    return-void

    .line 140
    :cond_2
    const-string v0, "off"

    goto :goto_0
.end method
