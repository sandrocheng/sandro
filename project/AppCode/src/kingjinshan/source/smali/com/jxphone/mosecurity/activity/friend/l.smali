.class final Lcom/jxphone/mosecurity/activity/friend/l;
.super Lcom/jxphone/mosecurity/d/n;
.source "FriendActivity.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/j;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/j;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/l;->a:Lcom/jxphone/mosecurity/activity/friend/j;

    const v0, 0x7f0b0667

    invoke-direct {p0, p2, v0, p3}, Lcom/jxphone/mosecurity/d/n;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/l;->a:Lcom/jxphone/mosecurity/activity/friend/j;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 441
    invoke-super {p0}, Lcom/jxphone/mosecurity/d/n;->a()V

    .line 442
    return-void
.end method
