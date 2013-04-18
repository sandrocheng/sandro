.class final Lcom/keniu/security/main/m;
.super Landroid/widget/BaseAdapter;
.source "FeedBackOptionDialog.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/k;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/main/k;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/main/m;-><init>(Lcom/keniu/security/main/k;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/main/k;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/keniu/security/main/m;->a:Lcom/keniu/security/main/k;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x4

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 227
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    if-nez p2, :cond_0

    .line 235
    iget-object v0, p0, Lcom/keniu/security/main/m;->a:Lcom/keniu/security/main/k;

    invoke-static {v0}, Lcom/keniu/security/main/k;->c(Lcom/keniu/security/main/k;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    .line 238
    :goto_0
    const v0, 0x7f0802d2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 239
    const v1, 0x7f0802d3

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 241
    packed-switch p1, :pswitch_data_0

    .line 260
    :goto_1
    return-object v2

    .line 244
    :pswitch_0
    const v3, 0x7f020062

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v0, p0, Lcom/keniu/security/main/m;->a:Lcom/keniu/security/main/k;

    invoke-static {v0}, Lcom/keniu/security/main/k;->b(Lcom/keniu/security/main/k;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0b05de

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 248
    :pswitch_1
    const v3, 0x7f020193

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v0, p0, Lcom/keniu/security/main/m;->a:Lcom/keniu/security/main/k;

    invoke-static {v0}, Lcom/keniu/security/main/k;->b(Lcom/keniu/security/main/k;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0b0245

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 252
    :pswitch_2
    const v3, 0x7f020194

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget-object v0, p0, Lcom/keniu/security/main/m;->a:Lcom/keniu/security/main/k;

    invoke-static {v0}, Lcom/keniu/security/main/k;->b(Lcom/keniu/security/main/k;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0b0246

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 256
    :pswitch_3
    const v3, 0x7f020063

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v0, p0, Lcom/keniu/security/main/m;->a:Lcom/keniu/security/main/k;

    invoke-static {v0}, Lcom/keniu/security/main/k;->b(Lcom/keniu/security/main/k;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0b05df

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    move-object v2, p2

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
