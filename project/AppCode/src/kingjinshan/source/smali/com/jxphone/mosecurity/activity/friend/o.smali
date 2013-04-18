.class final Lcom/jxphone/mosecurity/activity/friend/o;
.super Ljava/lang/Object;
.source "FriendCallLogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/o;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/o;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Lcom/jxphone/mosecurity/activity/friend/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jxphone/mosecurity/activity/friend/z;->c(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v0

    .line 270
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 271
    const-string v2, "id"

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 272
    const-string v2, "address"

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/o;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    const-class v2, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;

    invoke-static {v0, v2, v1}, Lcom/jxphone/mosecurity/activity/BaseActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 276
    return-void
.end method
