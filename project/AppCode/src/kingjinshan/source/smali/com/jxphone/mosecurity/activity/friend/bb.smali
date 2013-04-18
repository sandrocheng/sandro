.class final Lcom/jxphone/mosecurity/activity/friend/bb;
.super Ljava/lang/Object;
.source "NotificationPreferenceActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bb;->a:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bb;->a:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->a(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bb;->a:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->b(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)Lcom/keniu/security/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bb;->a:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->b(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)Lcom/keniu/security/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    return-void
.end method
