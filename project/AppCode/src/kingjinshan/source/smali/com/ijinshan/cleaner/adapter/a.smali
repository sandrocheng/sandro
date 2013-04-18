.class public final Lcom/ijinshan/cleaner/adapter/a;
.super Landroid/widget/BaseAdapter;
.source "CacheActivityAdapter.java"


# instance fields
.field public a:Ljava/util/List;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/ijinshan/cleaner/adapter/a;->a:Ljava/util/List;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/adapter/a;->b:Landroid/view/LayoutInflater;

    .line 24
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x4480

    .line 70
    const/4 v0, 0x0

    .line 71
    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    if-ltz v1, :cond_2

    .line 73
    const-string v0, "KB"

    .line 74
    long-to-double v1, p0

    const-wide/high16 v3, 0x4090

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 75
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_0

    .line 76
    const-string v0, "MB"

    .line 77
    div-float/2addr v1, v5

    .line 79
    :cond_0
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_1

    .line 80
    const-string v0, "GB"

    .line 81
    div-float/2addr v1, v5

    .line 86
    :cond_1
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_2
    long-to-float v1, p0

    goto :goto_0

    .line 91
    :cond_3
    const-string v0, "B"

    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 32
    return-void
.end method

.method private a(Lcom/ijinshan/cleaner/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4480

    .line 54
    new-instance v1, Lcom/ijinshan/cleaner/adapter/b;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/adapter/b;-><init>(Lcom/ijinshan/cleaner/adapter/a;)V

    .line 56
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/a;

    .line 57
    iget-object v2, p0, Lcom/ijinshan/cleaner/adapter/a;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f030027

    invoke-virtual {v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 58
    const v3, 0x7f0800e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/ijinshan/cleaner/adapter/b;->a:Landroid/widget/ImageView;

    .line 59
    const v3, 0x7f0800e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/cleaner/adapter/b;->b:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f0800ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/cleaner/adapter/b;->c:Landroid/widget/TextView;

    .line 62
    iget-object v3, v1, Lcom/ijinshan/cleaner/adapter/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v3, v1, Lcom/ijinshan/cleaner/adapter/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v3, v1, Lcom/ijinshan/cleaner/adapter/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/a;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    const-string v0, "KB"

    long-to-double v4, v4

    const-wide/high16 v6, 0x4090

    div-double/2addr v4, v6

    double-to-float v4, v4

    cmpl-float v5, v4, v8

    if-ltz v5, :cond_3

    const-string v0, "MB"

    div-float/2addr v4, v8

    move v10, v4

    move-object v4, v0

    move v0, v10

    :goto_0
    cmpl-float v5, v0, v8

    if-ltz v5, :cond_0

    const-string v4, "GB"

    div-float/2addr v0, v8

    :cond_0
    :goto_1
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#0.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    float-to-double v7, v0

    invoke-virtual {v5, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    return-object v2

    .line 64
    :cond_1
    long-to-float v0, v4

    move-object v4, v9

    goto :goto_1

    :cond_2
    const-string v0, "B"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move v10, v4

    move-object v4, v0

    move v0, v10

    goto :goto_0
.end method
