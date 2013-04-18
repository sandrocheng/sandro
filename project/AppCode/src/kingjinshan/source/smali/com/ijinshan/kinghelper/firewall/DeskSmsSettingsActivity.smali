.class public Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "DeskSmsSettingsActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    .line 18
    const-string v0, "DeskSmsSettingsActivity"

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 24
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->c()V

    .line 27
    const v0, 0x7f050001

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 29
    if-nez p1, :cond_0

    .line 30
    const-string v0, "smsman_dsmsset"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    :cond_0
    const v0, 0x7f0b01f9

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 33
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/a;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/a;-><init>(Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 49
    const v0, 0x7f0b0201

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/ListPreference;

    .line 50
    const v1, 0x7f0b0207

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 51
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/b;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/b;-><init>(Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/ListPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 65
    const v0, 0x7f0b0200

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/ListPreference;

    .line 66
    const v1, 0x7f0b0206

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/c;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/c;-><init>(Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/ListPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 81
    return-void
.end method
