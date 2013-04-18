.class final Lcom/jxphone/mosecurity/activity/friend/ah;
.super Ljava/lang/Object;
.source "FriendSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/ah;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    check-cast p2, Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ah;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/k;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/k;

    move-result-object v0

    .line 172
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ah;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ah;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    const v2, 0x7f0b060d

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 209
    :goto_0
    return v0

    .line 178
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 179
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ah;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ah;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    const v2, 0x7f0b060f

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 183
    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_3

    .line 185
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ah;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ah;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    const v2, 0x7f0b0610

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 189
    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {v0, p2}, Lcom/jxphone/mosecurity/d/k;->a(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 191
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ah;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ah;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    const v2, 0x7f0b0642

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 195
    goto :goto_0

    .line 197
    :cond_4
    check-cast p1, Lcom/ijinshan/kpref/EditTextPreference;

    invoke-virtual {p1}, Lcom/ijinshan/kpref/EditTextPreference;->j()Landroid/app/Dialog;

    move-result-object v0

    .line 200
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mShowing"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 202
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 203
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    move v0, v4

    .line 209
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    const-string v2, "FriendSettingActivity>>initDummyPasswordPreference"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
