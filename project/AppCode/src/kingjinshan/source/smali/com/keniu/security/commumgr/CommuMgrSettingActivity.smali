.class public Lcom/keniu/security/commumgr/CommuMgrSettingActivity;
.super Lcom/ijinshan/kpref/PreferenceActivity;
.source "CommuMgrSettingActivity.java"


# instance fields
.field private a:Lcom/keniu/security/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ijinshan/kpref/PreferenceActivity;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/ListPreference;

    .line 39
    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->o()[Ljava/lang/CharSequence;

    move-result-object v1

    move v2, v5

    .line 40
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 41
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p2, v3, :cond_0

    move v1, v2

    .line 46
    :goto_1
    const v2, 0x7f0b0461

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v1, v4, v1

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v1, Lcom/keniu/security/commumgr/f;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/commumgr/f;-><init>(Lcom/keniu/security/commumgr/CommuMgrSettingActivity;Lcom/ijinshan/kpref/ListPreference;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/ListPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 63
    return-void

    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lcom/keniu/security/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f05000b

    :goto_0
    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->a(I)V

    .line 25
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->a:Lcom/keniu/security/a;

    .line 26
    const v0, 0x7f0b045d

    iget-object v1, p0, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->a:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->ac()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->a(II)V

    .line 27
    const v0, 0x7f0b045f

    iget-object v1, p0, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->a:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->af()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->a(II)V

    .line 29
    const-string v0, "commumgr_settings_report_key"

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceCategory;

    .line 30
    const-string v1, "root"

    invoke-virtual {p0, v1}, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 31
    invoke-static {}, Lcom/keniu/security/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->d(Lcom/ijinshan/kpref/Preference;)Z

    .line 33
    :cond_0
    return-void

    .line 24
    :cond_1
    const v0, 0x7f05000c

    goto :goto_0
.end method
