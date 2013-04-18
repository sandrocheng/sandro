.class final Lcom/jxphone/mosecurity/activity/friend/u;
.super Ljava/lang/Object;
.source "FriendCallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/t;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/t;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/u;->a:Lcom/jxphone/mosecurity/activity/friend/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 721
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/u;->a:Lcom/jxphone/mosecurity/activity/friend/t;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->e(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V

    .line 722
    return-void
.end method
