.class public final Lcom/jxphone/mosecurity/activity/a/h;
.super Landroid/widget/BaseAdapter;
.source "PrivateMediaAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Ljava/io/File;

.field private c:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private a(I)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/h;->b:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/h;->b:[Ljava/io/File;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/h;->c:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    const v0, 0x7f08031a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/a/h;->c:[Landroid/graphics/Bitmap;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    return-object v1

    .line 61
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, p2

    goto :goto_0
.end method
