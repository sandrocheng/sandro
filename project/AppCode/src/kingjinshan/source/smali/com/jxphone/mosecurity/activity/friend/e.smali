.class final Lcom/jxphone/mosecurity/activity/friend/e;
.super Ljava/lang/Object;
.source "FriendActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/e;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/e;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/e;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jxphone/mosecurity/c/b;

    invoke-static {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;Lcom/jxphone/mosecurity/c/b;)V

    .line 258
    return-void
.end method
