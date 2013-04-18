.class final Lcom/jxphone/mosecurity/activity/friend/r;
.super Ljava/lang/Object;
.source "FriendCallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/q;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/q;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/r;->a:Lcom/jxphone/mosecurity/activity/friend/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 635
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/r;->a:Lcom/jxphone/mosecurity/activity/friend/q;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/q;->b:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/r;->a:Lcom/jxphone/mosecurity/activity/friend/q;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/q;->a:Lcom/jxphone/mosecurity/c/b;

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->c(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Lcom/jxphone/mosecurity/c/b;)V

    .line 636
    return-void
.end method
