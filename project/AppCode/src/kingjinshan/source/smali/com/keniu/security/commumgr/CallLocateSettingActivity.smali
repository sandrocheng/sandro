.class public Lcom/keniu/security/commumgr/CallLocateSettingActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "CallLocateSettingActivity.java"


# instance fields
.field a:Lcom/ijinshan/kpref/m;

.field private b:Lcom/ijinshan/kpref/ListPreference;

.field private c:Lcom/ijinshan/kpref/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/keniu/security/commumgr/d;

    invoke-direct {v0, p0}, Lcom/keniu/security/commumgr/d;-><init>(Lcom/keniu/security/commumgr/CallLocateSettingActivity;)V

    iput-object v0, p0, Lcom/keniu/security/commumgr/CallLocateSettingActivity;->a:Lcom/ijinshan/kpref/m;

    return-void
.end method

.method private a(Lcom/ijinshan/kpref/ListPreference;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/keniu/security/commumgr/CallLocateSettingActivity;->a:Lcom/ijinshan/kpref/m;

    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/ListPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 49
    invoke-virtual {p1}, Lcom/ijinshan/kpref/ListPreference;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/ListPreference;->c(Ljava/lang/String;)I

    move-result v0

    .line 50
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/keniu/security/a;->ag()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/a;->a(Z)V

    .line 32
    const v0, 0x7f05000a

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 34
    if-nez p1, :cond_0

    .line 35
    const-string v0, "telman_comshowlocal"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/commumgr/CallLocateSettingActivity;->b()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    const-string v1, "ExtraCallStyle"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/ListPreference;

    iput-object v0, p0, Lcom/keniu/security/commumgr/CallLocateSettingActivity;->b:Lcom/ijinshan/kpref/ListPreference;

    .line 39
    invoke-virtual {p0}, Lcom/keniu/security/commumgr/CallLocateSettingActivity;->b()Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    const-string v1, "ExtraCallTimeout"

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/ListPreference;

    iput-object v0, p0, Lcom/keniu/security/commumgr/CallLocateSettingActivity;->c:Lcom/ijinshan/kpref/ListPreference;

    .line 42
    iget-object v0, p0, Lcom/keniu/security/commumgr/CallLocateSettingActivity;->b:Lcom/ijinshan/kpref/ListPreference;

    invoke-direct {p0, v0}, Lcom/keniu/security/commumgr/CallLocateSettingActivity;->a(Lcom/ijinshan/kpref/ListPreference;)V

    .line 43
    iget-object v0, p0, Lcom/keniu/security/commumgr/CallLocateSettingActivity;->c:Lcom/ijinshan/kpref/ListPreference;

    invoke-direct {p0, v0}, Lcom/keniu/security/commumgr/CallLocateSettingActivity;->a(Lcom/ijinshan/kpref/ListPreference;)V

    .line 44
    return-void
.end method
