.class final Lcom/jxphone/mosecurity/activity/friend/ay;
.super Ljava/lang/Object;
.source "FriendTabActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/ay;->a:Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    sparse-switch p2, :sswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 97
    :sswitch_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ay;->a:Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    invoke-virtual {v0, v1}, Lcom/keniu/security/commui/CustomTabHost;->a(I)V

    .line 98
    sput v1, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    goto :goto_0

    .line 101
    :sswitch_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ay;->a:Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    invoke-virtual {v0, v2}, Lcom/keniu/security/commui/CustomTabHost;->a(I)V

    .line 102
    sput v2, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    goto :goto_0

    .line 105
    :sswitch_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ay;->a:Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    invoke-virtual {v0, v3}, Lcom/keniu/security/commui/CustomTabHost;->a(I)V

    .line 106
    sput v3, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    goto :goto_0

    .line 109
    :sswitch_3
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ay;->a:Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    invoke-virtual {v0, v4}, Lcom/keniu/security/commui/CustomTabHost;->a(I)V

    .line 110
    sput v4, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a:I

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x7f080138 -> :sswitch_0
        0x7f080139 -> :sswitch_1
        0x7f080141 -> :sswitch_2
        0x7f080155 -> :sswitch_3
    .end sparse-switch
.end method
