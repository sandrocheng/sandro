.class final Lcom/jxphone/mosecurity/activity/friend/ak;
.super Ljava/lang/Object;
.source "FriendSmsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/ak;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

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
    .line 252
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ak;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Lcom/jxphone/mosecurity/activity/friend/au;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jxphone/mosecurity/activity/friend/au;->c(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v0

    .line 253
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 254
    const-string v2, "id"

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 255
    const-string v2, "address"

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ak;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    const-class v2, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v0, v2, v1}, Lcom/keniu/security/util/af;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 258
    return-void
.end method
