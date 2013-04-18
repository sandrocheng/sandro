.class final Lcom/jxphone/mosecurity/activity/friend/az;
.super Ljava/lang/Object;
.source "FriendTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/az;->a:Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/az;->a:Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    const-class v2, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/az;->a:Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method
