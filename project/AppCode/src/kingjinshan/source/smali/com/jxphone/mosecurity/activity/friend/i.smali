.class final Lcom/jxphone/mosecurity/activity/friend/i;
.super Lcom/jxphone/mosecurity/activity/s;
.source "FriendActivity.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/h;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/h;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/i;->a:Lcom/jxphone/mosecurity/activity/friend/h;

    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 359
    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->s()Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jxphone/mosecurity/c/b;->a(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->t()Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/i;->a:Lcom/jxphone/mosecurity/activity/friend/h;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/h;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->d(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->u()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->b(Lcom/jxphone/mosecurity/c/b;)Z

    move-result v0

    .line 367
    if-eqz v0, :cond_0

    .line 368
    const v0, 0x7f0b05f7

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/i;->a:Lcom/jxphone/mosecurity/activity/friend/h;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/h;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 382
    :goto_0
    return-void

    .line 377
    :cond_0
    const v0, 0x7f0b05f9

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
