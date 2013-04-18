.class public Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "FriendSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# static fields
.field public static final b:I = 0x6

.field private static final c:Ljava/lang/String; = "FriendSettingActivity>>initDummyPasswordPreference"


# instance fields
.field a:Lcom/ijinshan/kpref/Preference;

.field private d:Lcom/keniu/security/a;

.field private e:Z

.field private f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->e:Z

    .line 336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->f:Ljava/lang/Integer;

    return-void
.end method

.method private a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/ListPreference;

    .line 217
    invoke-virtual {v0}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 218
    aget-object v2, v1, p2

    .line 219
    const v3, 0x7f0b061c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/ai;

    invoke-direct {v2, p0, v1}, Lcom/jxphone/mosecurity/activity/friend/ai;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/ListPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 233
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 72
    const-string v0, "dummy_password"

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/EditTextPreference;

    .line 73
    invoke-virtual {v0}, Lcom/ijinshan/kpref/EditTextPreference;->l()Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 74
    invoke-virtual {v0}, Lcom/ijinshan/kpref/EditTextPreference;->l()Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f0b050c

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 75
    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/ae;

    invoke-direct {v1, p0, v0}, Lcom/jxphone/mosecurity/activity/friend/ae;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;Lcom/ijinshan/kpref/EditTextPreference;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/EditTextPreference;->a(Lcom/ijinshan/kpref/n;)V

    .line 163
    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/ah;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/ah;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/EditTextPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 213
    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v0

    .line 313
    const v1, 0x7f0b0506

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->e:Z

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Landroid/app/Activity;Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 320
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 40
    const v0, 0x7f050008

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 42
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->d:Lcom/keniu/security/a;

    .line 43
    const v0, 0x7f0b061a

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->d:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->l()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->a(II)V

    .line 45
    const v0, 0x7f0b061d

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->d:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->m()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->a(II)V

    .line 48
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->d:Lcom/keniu/security/a;

    invoke-static {}, Lcom/keniu/security/a;->aG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->a:Lcom/ijinshan/kpref/Preference;

    .line 50
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->a:Lcom/ijinshan/kpref/Preference;

    const v1, 0x7f0b0629

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->d:Lcom/keniu/security/a;

    invoke-virtual {v3}, Lcom/keniu/security/a;->aF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 52
    const v0, 0x7f0b0506

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 57
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isDummy"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->e:Z

    .line 59
    const-string v0, "dummy_password"

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/EditTextPreference;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/EditTextPreference;->l()Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0}, Lcom/ijinshan/kpref/EditTextPreference;->l()Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f0b050c

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/ae;

    invoke-direct {v1, p0, v0}, Lcom/jxphone/mosecurity/activity/friend/ae;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;Lcom/ijinshan/kpref/EditTextPreference;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/EditTextPreference;->a(Lcom/ijinshan/kpref/n;)V

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/ah;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/ah;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/EditTextPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 60
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/keniu/security/util/BasePreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->a:Lcom/ijinshan/kpref/Preference;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->a:Lcom/ijinshan/kpref/Preference;

    const v1, 0x7f0b0629

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->d:Lcom/keniu/security/a;

    invoke-virtual {v4}, Lcom/keniu/security/a;->aF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    invoke-super {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->onResume()V

    .line 69
    return-void
.end method
