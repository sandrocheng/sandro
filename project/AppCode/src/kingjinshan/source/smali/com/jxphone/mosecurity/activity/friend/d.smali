.class final Lcom/jxphone/mosecurity/activity/friend/d;
.super Ljava/lang/Object;
.source "FriendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/d;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/d;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->showDialog(I)V

    .line 185
    return-void
.end method
