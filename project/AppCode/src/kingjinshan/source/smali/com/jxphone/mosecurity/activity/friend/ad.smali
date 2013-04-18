.class final Lcom/jxphone/mosecurity/activity/friend/ad;
.super Landroid/widget/BaseAdapter;
.source "FriendNameAndIconActivity.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;

.field private final b:[I


# direct methods
.method synthetic constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jxphone/mosecurity/activity/friend/ad;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/ad;->a:Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ad;->b:[I

    return-void

    :array_0
    .array-data 0x4
        0x46t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public final a(I)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ad;->b:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ad;->b:[I

    array-length v0, v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/ad;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ad;->a:Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendNameAndIconActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ad;->b:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    return-object v0

    .line 124
    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    move-object v0, p2

    goto :goto_0
.end method
