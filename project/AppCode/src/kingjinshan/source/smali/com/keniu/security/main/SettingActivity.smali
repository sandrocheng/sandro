.class public Lcom/keniu/security/main/SettingActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "SettingActivity.java"


# instance fields
.field private a:Lcom/ijinshan/kpref/CheckBoxPreference;

.field private b:Lcom/keniu/security/traffic/y;

.field private c:Lcom/keniu/security/a;

.field private d:Lcom/ijinshan/kpref/Preference;

.field private e:Lcom/ijinshan/kpref/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/keniu/security/main/SettingActivity;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 26
    iput-object v0, p0, Lcom/keniu/security/main/SettingActivity;->b:Lcom/keniu/security/traffic/y;

    .line 27
    iput-object v0, p0, Lcom/keniu/security/main/SettingActivity;->c:Lcom/keniu/security/a;

    .line 28
    iput-object v0, p0, Lcom/keniu/security/main/SettingActivity;->d:Lcom/ijinshan/kpref/Preference;

    .line 29
    iput-object v0, p0, Lcom/keniu/security/main/SettingActivity;->e:Lcom/ijinshan/kpref/Preference;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/SettingActivity;)Lcom/keniu/security/traffic/y;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/keniu/security/main/SettingActivity;->b:Lcom/keniu/security/traffic/y;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const v3, 0x7f0b0260

    const v2, 0x7f0b025f

    .line 174
    iget-object v0, p0, Lcom/keniu/security/main/SettingActivity;->c:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->ag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p0, v2}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/main/SettingActivity;->d:Lcom/ijinshan/kpref/Preference;

    if-nez v1, :cond_0

    .line 184
    const-string v1, "IsExtraCallEnable_Main_setting"

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/SettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/main/SettingActivity;->d:Lcom/ijinshan/kpref/Preference;

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/main/SettingActivity;->d:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0, v2}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_1
    iget-object v1, p0, Lcom/keniu/security/main/SettingActivity;->e:Lcom/ijinshan/kpref/Preference;

    if-nez v1, :cond_1

    .line 193
    const-string v1, "desk_sms_start_up_key_Main_setting"

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/SettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/main/SettingActivity;->e:Lcom/ijinshan/kpref/Preference;

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/main/SettingActivity;->e:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 195
    return-void

    .line 180
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b0524

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {p0, v3}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/PreferenceScreen;Lcom/ijinshan/kpref/Preference;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    const-string v0, "public_preference_startup_autoupdate"

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/SettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    iput-object v0, p0, Lcom/keniu/security/main/SettingActivity;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 161
    iget-object v0, p0, Lcom/keniu/security/main/SettingActivity;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->b()Z

    .line 164
    invoke-super {p0, p1, p2}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Lcom/ijinshan/kpref/PreferenceScreen;Lcom/ijinshan/kpref/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 33
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/SettingActivity;->c:Lcom/keniu/security/a;

    .line 34
    iget-object v0, p0, Lcom/keniu/security/main/SettingActivity;->c:Lcom/keniu/security/a;

    iget-object v1, p0, Lcom/keniu/security/main/SettingActivity;->c:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->ag()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/a;->a(Z)V

    .line 35
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/SettingActivity;->b:Lcom/keniu/security/traffic/y;

    .line 37
    const v0, 0x7f050010

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 39
    const v0, 0x7f0b01cc

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/SettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/ListPreference;

    .line 41
    const v1, 0x7f0b0029

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->q()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/keniu/security/main/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 44
    new-instance v1, Lcom/keniu/security/main/ch;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/ch;-><init>(Lcom/keniu/security/main/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/ListPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 61
    const v0, 0x7f0b03c1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/SettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 62
    new-instance v1, Lcom/keniu/security/main/ci;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/ci;-><init>(Lcom/keniu/security/main/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 124
    iget-object v1, p0, Lcom/keniu/security/main/SettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-boolean v1, v1, Lcom/keniu/security/traffic/y;->b:Z

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 126
    const-string v0, "IsExtraCallEnable_Main_setting"

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/SettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/SettingActivity;->d:Lcom/ijinshan/kpref/Preference;

    .line 127
    iget-object v0, p0, Lcom/keniu/security/main/SettingActivity;->d:Lcom/ijinshan/kpref/Preference;

    new-instance v1, Lcom/keniu/security/main/cl;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/cl;-><init>(Lcom/keniu/security/main/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 141
    const-string v0, "desk_sms_start_up_key_Main_setting"

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/SettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/SettingActivity;->e:Lcom/ijinshan/kpref/Preference;

    .line 142
    iget-object v0, p0, Lcom/keniu/security/main/SettingActivity;->e:Lcom/ijinshan/kpref/Preference;

    new-instance v1, Lcom/keniu/security/main/cm;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/cm;-><init>(Lcom/keniu/security/main/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const v3, 0x7f0b0260

    const v2, 0x7f0b025f

    .line 169
    invoke-super {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->onResume()V

    .line 170
    iget-object v0, p0, Lcom/keniu/security/main/SettingActivity;->c:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->ag()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/keniu/security/main/SettingActivity;->d:Lcom/ijinshan/kpref/Preference;

    if-nez v1, :cond_0

    const-string v1, "IsExtraCallEnable_Main_setting"

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/SettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/main/SettingActivity;->d:Lcom/ijinshan/kpref/Preference;

    :cond_0
    iget-object v1, p0, Lcom/keniu/security/main/SettingActivity;->d:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/keniu/security/main/SettingActivity;->e:Lcom/ijinshan/kpref/Preference;

    if-nez v1, :cond_1

    const-string v1, "desk_sms_start_up_key_Main_setting"

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/SettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/main/SettingActivity;->e:Lcom/ijinshan/kpref/Preference;

    :cond_1
    iget-object v1, p0, Lcom/keniu/security/main/SettingActivity;->e:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 171
    return-void

    .line 170
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b0524

    invoke-virtual {p0, v1}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/keniu/security/main/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
