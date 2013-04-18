.class final Lcom/jxphone/mosecurity/activity/friend/c;
.super Landroid/os/Handler;
.source "FriendActivity.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/c;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/c;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/c;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    const-string v0, "FriendActivity>>"

    const-string v1, "sendBroadcast>>ACTION_PRIVATE_SPACE_CONTACTS_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
