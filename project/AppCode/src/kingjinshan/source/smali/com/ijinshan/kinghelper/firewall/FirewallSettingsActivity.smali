.class public Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "FirewallSettingsActivity.java"


# static fields
.field public static final a:Ljava/lang/String; = "67"

.field public static final b:Ljava/lang/String; = "90"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;Lcom/ijinshan/kpref/CheckBoxPreference;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b059b

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0213

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0214

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0215

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ao;

    invoke-direct {v2, p0, p1}, Lcom/ijinshan/kinghelper/firewall/ao;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;Lcom/ijinshan/kpref/CheckBoxPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    return-void
.end method

.method private a(Lcom/ijinshan/kpref/CheckBoxPreference;)V
    .locals 3
    .parameter

    .prologue
    .line 192
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 193
    const v1, 0x7f0b059b

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 194
    const v1, 0x7f0b0213

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 195
    const v1, 0x7f0b0214

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 197
    const v1, 0x7f0b0215

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ao;

    invoke-direct {v2, p0, p1}, Lcom/ijinshan/kinghelper/firewall/ao;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;Lcom/ijinshan/kpref/CheckBoxPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 205
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 206
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 55
    const v0, 0x7f0b01b1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 57
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->n()I

    move-result v0

    .line 59
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->o()I

    move-result v1

    .line 60
    const-string v2, "%02d:%02d - %02d:%02d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    div-int/lit8 v4, v1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6bcf\u5929 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5f00\u542f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/dg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->f(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 10

    .prologue
    const v9, 0x7f0b01b1

    const v8, 0x7f0b001f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    const v0, 0x7f0b01a6

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 73
    const v1, 0x7f0b0054

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/df;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b0058

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/aj;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/aj;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    .line 88
    invoke-virtual {p0, v9}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->n()I

    move-result v1

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->o()I

    move-result v2

    const-string v3, "%02d:%02d - %02d:%02d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    const/4 v1, 0x2

    div-int/lit8 v5, v2, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6bcf\u5929 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5f00\u542f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/dg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    const v0, 0x7f0b01a5

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 90
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ak;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ak;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    .line 102
    invoke-virtual {p0, v9}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 104
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/al;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/al;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    .line 116
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 117
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 119
    iget-boolean v1, v1, Lcom/keniu/security/traffic/y;->b:Z

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/CheckBoxPreference;->c(Z)V

    .line 121
    invoke-virtual {v0, v8}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(I)V

    .line 123
    invoke-virtual {v0, v8}, Lcom/ijinshan/kpref/CheckBoxPreference;->b(I)V

    .line 127
    :cond_0
    const v0, 0x7f0b01a1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 129
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/am;

    invoke-direct {v1, p0, v0}, Lcom/ijinshan/kinghelper/firewall/am;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;Lcom/ijinshan/kpref/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 146
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 148
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/ListPreference;

    .line 150
    const v1, 0x7f0b0027

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/an;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/an;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/ListPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 170
    return-void

    .line 88
    :cond_1
    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->f(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->a()V

    .line 33
    const v0, 0x7f050007

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 41
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->d()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    const-string v0, "sao_set"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 182
    :pswitch_0
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->b()V

    .line 183
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->d()V

    .line 184
    const v0, 0x7f0b08a5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x7f080417
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->onResume()V

    .line 51
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->d()V

    .line 52
    return-void
.end method
