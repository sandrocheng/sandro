.class final Lcom/jxphone/mosecurity/activity/friend/aq;
.super Ljava/lang/Object;
.source "FriendSmsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/ap;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/aq;->a:Lcom/jxphone/mosecurity/activity/friend/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 695
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/aq;->a:Lcom/jxphone/mosecurity/activity/friend/ap;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->e(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V

    .line 696
    return-void
.end method
