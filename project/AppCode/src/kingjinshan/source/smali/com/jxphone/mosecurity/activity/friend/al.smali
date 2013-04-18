.class final Lcom/jxphone/mosecurity/activity/friend/al;
.super Ljava/lang/Object;
.source "FriendSmsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/al;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

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
    .line 265
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/al;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Lcom/jxphone/mosecurity/activity/friend/au;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jxphone/mosecurity/activity/friend/au;->c(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/al;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v1, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->a(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Lcom/jxphone/mosecurity/c/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 267
    const/4 v0, 0x0

    return v0
.end method
