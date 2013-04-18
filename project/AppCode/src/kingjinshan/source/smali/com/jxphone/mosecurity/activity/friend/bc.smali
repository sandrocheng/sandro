.class final Lcom/jxphone/mosecurity/activity/friend/bc;
.super Landroid/widget/BaseAdapter;
.source "NotificationPreferenceActivity.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

.field private final b:[I


# direct methods
.method synthetic constructor <init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jxphone/mosecurity/activity/friend/bc;-><init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bc;->a:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 132
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bc;->b:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x84t 0x0t 0x2t 0x7ft
        0xd0t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x8t 0x1t
        0x77t 0x0t 0x8t 0x1t
        0x78t 0x0t 0x8t 0x1t
        0x7ft 0x0t 0x8t 0x1t
        0x79t 0x0t 0x8t 0x1t
        0x7at 0x0t 0x8t 0x1t
        0x7bt 0x0t 0x8t 0x1t
        0x7ct 0x0t 0x8t 0x1t
        0x7et 0x0t 0x8t 0x1t
        0x80t 0x0t 0x8t 0x1t
        0x81t 0x0t 0x8t 0x1t
        0x83t 0x0t 0x8t 0x1t
        0x84t 0x0t 0x8t 0x1t
        0x85t 0x0t 0x8t 0x1t
        0x87t 0x0t 0x8t 0x1t
        0x88t 0x0t 0x8t 0x1t
    .end array-data
.end method


# virtual methods
.method public final a(I)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bc;->b:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bc;->b:[I

    array-length v0, v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/bc;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 165
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    if-nez p2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bc;->a:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bc;->b:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    return-object v0

    .line 174
    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    move-object v0, p2

    goto :goto_0
.end method
