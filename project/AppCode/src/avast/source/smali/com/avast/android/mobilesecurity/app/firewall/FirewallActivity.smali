.class public Lcom/avast/android/mobilesecurity/app/firewall/FirewallActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "FirewallActivity.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "extra_toggle_onoff"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p0, Lcom/avast/android/generic/ui/BaseActivity;

    const-class v0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallActivity;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 31
    return-void
.end method
