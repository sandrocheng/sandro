.class final Lcom/jxphone/mosecurity/activity/friend/ac;
.super Ljava/lang/Object;
.source "FriendNameAndIconActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/ad;

.field final synthetic b:Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;Lcom/jxphone/mosecurity/activity/friend/ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/ac;->b:Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/ac;->a:Lcom/jxphone/mosecurity/activity/friend/ad;

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
    .line 84
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ac;->a:Lcom/jxphone/mosecurity/activity/friend/ad;

    invoke-virtual {v0, p3}, Lcom/jxphone/mosecurity/activity/friend/ad;->a(I)Ljava/lang/Integer;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ac;->b:Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->a(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ac;->b:Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;

    invoke-static {v0, p3}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->a(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;I)I

    .line 87
    return-void
.end method
