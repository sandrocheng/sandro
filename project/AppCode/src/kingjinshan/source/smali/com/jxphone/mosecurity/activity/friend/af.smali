.class final Lcom/jxphone/mosecurity/activity/friend/af;
.super Ljava/lang/Object;
.source "FriendSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/ae;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/af;->a:Lcom/jxphone/mosecurity/activity/friend/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/af;->a:Lcom/jxphone/mosecurity/activity/friend/ae;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/ae;->a:Lcom/ijinshan/kpref/EditTextPreference;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/EditTextPreference;->l()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/af;->a:Lcom/jxphone/mosecurity/activity/friend/ae;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/d/k;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/k;

    move-result-object v1

    .line 103
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/af;->a:Lcom/jxphone/mosecurity/activity/friend/ae;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/af;->a:Lcom/jxphone/mosecurity/activity/friend/ae;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    const v2, 0x7f0b060d

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 109
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/af;->a:Lcom/jxphone/mosecurity/activity/friend/ae;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/af;->a:Lcom/jxphone/mosecurity/activity/friend/ae;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    const v2, 0x7f0b060f

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_3

    .line 114
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/af;->a:Lcom/jxphone/mosecurity/activity/friend/ae;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/af;->a:Lcom/jxphone/mosecurity/activity/friend/ae;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    const v2, 0x7f0b0610

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/d/k;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 120
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/af;->a:Lcom/jxphone/mosecurity/activity/friend/ae;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/af;->a:Lcom/jxphone/mosecurity/activity/friend/ae;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/ae;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    const v2, 0x7f0b0642

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 126
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mShowing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 131
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/d/k;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 133
    :catch_0
    move-exception v2

    .line 134
    const-string v3, "FriendSettingActivity>>initDummyPasswordPreference"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
