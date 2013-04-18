.class final Lcom/jxphone/mosecurity/activity/friend/g;
.super Ljava/lang/Object;
.source "FriendActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/g;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/g;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/g;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->c(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->a(Lcom/jxphone/mosecurity/c/c;)I

    .line 322
    return-void
.end method
