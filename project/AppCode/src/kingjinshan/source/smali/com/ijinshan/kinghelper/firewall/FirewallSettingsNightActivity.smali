.class public Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "FirewallSettingsNightActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->e()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 40
    :goto_0
    return v0

    .line 30
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 31
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 32
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->n()I

    move-result v1

    .line 33
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->o()I

    move-result v2

    .line 36
    if-gt v1, v2, :cond_2

    .line 37
    if-lt v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 40
    :cond_2
    if-ge v0, v1, :cond_3

    if-ge v0, v2, :cond_4

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a:Ljava/util/List;

    .line 56
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dg;->values()[Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v0, v1, v3

    .line 57
    sget-object v4, Lcom/ijinshan/kinghelper/firewall/dg;->g:Lcom/ijinshan/kinghelper/firewall/dg;

    if-eq v0, v4, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/dg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 60
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 63
    :cond_1
    const v0, 0x7f0b01bd

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 64
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/as;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/as;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    .line 75
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/dg;->b()Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 78
    invoke-virtual {v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_1

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 82
    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    goto :goto_2

    .line 84
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 89
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Ljava/lang/String;)V

    .line 97
    return v3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 48
    const v0, 0x7f050004

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 49
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a:Ljava/util/List;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dg;->values()[Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v0, v1, v3

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/dg;->g:Lcom/ijinshan/kinghelper/firewall/dg;

    if-eq v0, v4, :cond_0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/dg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0b01bd

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/as;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/as;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/dg;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    goto :goto_2

    .line 51
    :cond_3
    return-void
.end method
