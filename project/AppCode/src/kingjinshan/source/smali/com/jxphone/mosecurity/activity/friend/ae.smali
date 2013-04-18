.class final Lcom/jxphone/mosecurity/activity/friend/ae;
.super Ljava/lang/Object;
.source "FriendSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/EditTextPreference;

.field final synthetic b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;Lcom/ijinshan/kpref/EditTextPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/ae;->a:Lcom/ijinshan/kpref/EditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 80
    const-string v0, "FriendSettingActivity>>initDummyPasswordPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDummyPasswordPreference>>zhangyong@onPreferenceClick>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ae;->a:Lcom/ijinshan/kpref/EditTextPreference;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/EditTextPreference;->j()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/util/ap;

    .line 86
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mShowing"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jxphone/mosecurity/activity/friend/af;

    invoke-direct {v3, p0}, Lcom/jxphone/mosecurity/activity/friend/af;-><init>(Lcom/jxphone/mosecurity/activity/friend/ae;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/util/ap;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 141
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jxphone/mosecurity/activity/friend/ag;

    invoke-direct {v3, p0}, Lcom/jxphone/mosecurity/activity/friend/ag;-><init>(Lcom/jxphone/mosecurity/activity/friend/ae;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/util/ap;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    return v4

    .line 90
    :catch_0
    move-exception v1

    .line 91
    const-string v2, "FriendSettingActivity>>initDummyPasswordPreference"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
