.class final Lcom/jxphone/mosecurity/activity/friend/ai;
.super Ljava/lang/Object;
.source "FriendSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:[Ljava/lang/CharSequence;

.field final synthetic b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/ai;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/ai;->a:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 226
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ai;->a:[Ljava/lang/CharSequence;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    .line 228
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ai;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    const v2, 0x7f0b061c

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 230
    return v5
.end method
