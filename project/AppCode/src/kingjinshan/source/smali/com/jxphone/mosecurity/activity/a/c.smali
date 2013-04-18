.class public final Lcom/jxphone/mosecurity/activity/a/c;
.super Landroid/widget/BaseAdapter;
.source "PeopleSmsAdapter.java"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:[Lcom/jxphone/mosecurity/c/l;

.field private final c:Lcom/jxphone/mosecurity/c/b;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jxphone/mosecurity/c/b;[Lcom/jxphone/mosecurity/c/l;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p3, p0, Lcom/jxphone/mosecurity/activity/a/c;->b:[Lcom/jxphone/mosecurity/c/l;

    .line 35
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/a/c;->d:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/a/c;->c:Lcom/jxphone/mosecurity/c/b;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/a/c;->a:Landroid/view/LayoutInflater;

    .line 39
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/a/c;->e:Landroid/util/SparseIntArray;

    .line 40
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/c;->e:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    const v2, 0x7f0201a2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/c;->e:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const v2, 0x7f0201a7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/c;->e:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x7f0201a6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/c;->e:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f0201a4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    return-void
.end method

.method private a(I)Lcom/jxphone/mosecurity/c/l;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/c;->b:[Lcom/jxphone/mosecurity/c/l;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private a(Lcom/jxphone/mosecurity/c/l;Lcom/jxphone/mosecurity/activity/a/e;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->g()I

    move-result v0

    .line 105
    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-static {p2}, Lcom/jxphone/mosecurity/activity/a/e;->c(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-static {p2}, Lcom/jxphone/mosecurity/activity/a/e;->c(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    invoke-static {p2}, Lcom/jxphone/mosecurity/activity/a/e;->c(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/a/c;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/c;->b:[Lcom/jxphone/mosecurity/c/l;

    array-length v0, v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/c;->b:[Lcom/jxphone/mosecurity/c/l;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 60
    if-nez p2, :cond_1

    .line 61
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/c;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    new-instance v2, Lcom/jxphone/mosecurity/activity/a/e;

    invoke-direct {v2}, Lcom/jxphone/mosecurity/activity/a/e;-><init>()V

    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    const v0, 0x7f08030a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/jxphone/mosecurity/activity/a/e;->a(Lcom/jxphone/mosecurity/activity/a/e;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f08030b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/jxphone/mosecurity/activity/a/e;->b(Lcom/jxphone/mosecurity/activity/a/e;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f08030d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/jxphone/mosecurity/activity/a/e;->c(Lcom/jxphone/mosecurity/activity/a/e;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f08030c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v2, v0}, Lcom/jxphone/mosecurity/activity/a/e;->a(Lcom/jxphone/mosecurity/activity/a/e;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 68
    const v0, 0x7f0800e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/jxphone/mosecurity/activity/a/e;->a(Lcom/jxphone/mosecurity/activity/a/e;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0800e2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/jxphone/mosecurity/activity/a/e;->b(Lcom/jxphone/mosecurity/activity/a/e;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0800e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/jxphone/mosecurity/activity/a/e;->c(Lcom/jxphone/mosecurity/activity/a/e;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/c;->c:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/jxphone/mosecurity/activity/a/e;->a(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    move-object v0, v2

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/a/c;->b:[Lcom/jxphone/mosecurity/c/l;

    aget-object v2, v2, p1

    .line 80
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 89
    const v3, 0x7f0b0633

    .line 90
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->a(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->b(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->g()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->c(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    :goto_1
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->d(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 96
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->e(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/jxphone/mosecurity/activity/a/c;->d:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/jxphone/mosecurity/activity/a/c;->c:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v7}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->f(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v4

    iget-object v6, p0, Lcom/jxphone/mosecurity/activity/a/c;->d:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/keniu/security/util/i;->a(JLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->g(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-object v1

    .line 75
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/activity/a/e;

    move-object v1, p2

    goto :goto_0

    .line 82
    :pswitch_0
    const v3, 0x7f0b0632

    .line 83
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->a(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->b(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->c(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 92
    :pswitch_1
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->c(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/e;->c(Lcom/jxphone/mosecurity/activity/a/e;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/jxphone/mosecurity/activity/a/c;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 92
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
