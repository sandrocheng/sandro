.class public Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "FireWallSettingS2Activity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;Lcom/ijinshan/kpref/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->a(Lcom/ijinshan/kpref/CheckBoxPreference;)V

    return-void
.end method

.method private a(Lcom/ijinshan/kpref/CheckBoxPreference;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 80
    invoke-virtual {p1, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 81
    invoke-virtual {p1}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->b(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 83
    invoke-virtual {p1}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_0

    .line 86
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ijinshan/kpref/CheckBoxPreference;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 67
    const v1, 0x7f0b059b

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 68
    invoke-virtual {v0, p1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 69
    const v1, 0x7f0b0145

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/e;

    invoke-direct {v2, p0, p2}, Lcom/ijinshan/kinghelper/firewall/e;-><init>(Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;Lcom/ijinshan/kpref/CheckBoxPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 75
    const v1, 0x7f0b0146

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 76
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 77
    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/df;->a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    .line 94
    const v1, 0x7f0b006d

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/df;->e:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v0, v2, :cond_0

    .line 96
    const v1, 0x7f0b006e

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_0
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/df;->c:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v0, v2, :cond_1

    .line 98
    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_1
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/df;->d:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v0, v2, :cond_2

    .line 100
    const v1, 0x7f0b0070

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_2
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/df;->a:Lcom/ijinshan/kinghelper/firewall/df;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/df;->f:Lcom/ijinshan/kinghelper/firewall/df;

    if-eq v0, v2, :cond_3

    .line 102
    check-cast p1, Lcom/ijinshan/kpref/CheckBoxPreference;

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b059b

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0145

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/e;

    invoke-direct {v2, p0, p1}, Lcom/ijinshan/kinghelper/firewall/e;-><init>(Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;Lcom/ijinshan/kpref/CheckBoxPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0146

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 106
    :goto_0
    return v3

    .line 104
    :cond_3
    check-cast p1, Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->a(Lcom/ijinshan/kpref/CheckBoxPreference;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 29
    const v0, 0x7f050005

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 31
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/df;->values()[Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v0, v1, v3

    .line 32
    sget-object v4, Lcom/ijinshan/kinghelper/firewall/df;->g:Lcom/ijinshan/kinghelper/firewall/df;

    if-eq v0, v4, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/df;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 36
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/df;->b()Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 42
    invoke-virtual {v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_1

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 46
    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    goto :goto_2

    .line 49
    :cond_3
    const v0, 0x7f0b01ad

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 51
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/d;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/d;-><init>(Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    .line 62
    return-void
.end method
