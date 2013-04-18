.class final Lcom/jxphone/mosecurity/activity/friend/p;
.super Ljava/lang/Object;
.source "FriendCallLogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/p;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/p;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Lcom/jxphone/mosecurity/activity/friend/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jxphone/mosecurity/activity/friend/z;->c(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/p;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v1, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->a(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Lcom/jxphone/mosecurity/c/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 285
    const/4 v0, 0x0

    return v0
.end method
