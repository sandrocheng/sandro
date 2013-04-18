.class public Lcom/ijinshan/kinghelper/firewall/FireWallSettingsNight2Activity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "FireWallSettingsNight2Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    const v0, 0x7f050003

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 25
    const v0, 0x7f0b01cb

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingsNight2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingsNight2Activity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 27
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/g;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/g;-><init>(Lcom/ijinshan/kinghelper/firewall/FireWallSettingsNight2Activity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    .line 37
    return-void
.end method
