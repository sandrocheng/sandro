.class public Lcom/jxphone/mosecurity/activity/a/a;
.super Lcom/keniu/security/importx/k;
.source "ContactAdapter.java"


# instance fields
.field protected a:Landroid/view/LayoutInflater;

.field protected b:Landroid/content/Context;

.field private c:[Lcom/jxphone/mosecurity/c/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jxphone/mosecurity/activity/a/a;-><init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/b;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/b;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 27
    invoke-direct {p0}, Lcom/keniu/security/importx/k;-><init>()V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/a/a;->a:Landroid/view/LayoutInflater;

    .line 29
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/a/a;->b:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/a/a;->c:[Lcom/jxphone/mosecurity/c/b;

    .line 31
    invoke-static {p1, p3}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    .line 32
    array-length v1, p2

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 33
    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v6}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jxphone/mosecurity/c/b;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 36
    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jxphone/mosecurity/c/b;->a(I)V

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method private static a()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f030025

    return v0
.end method

.method private a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/a/b;
    .locals 4
    .parameter

    .prologue
    .line 108
    new-instance v1, Lcom/jxphone/mosecurity/activity/a/b;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/activity/a/b;-><init>()V

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    const v0, 0x7f0800df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/jxphone/mosecurity/activity/a/b;->a:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f0800e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/jxphone/mosecurity/activity/a/b;->b:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0800e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/jxphone/mosecurity/activity/a/b;->c:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0800e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/jxphone/mosecurity/activity/a/b;->a(Lcom/jxphone/mosecurity/activity/a/b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0800e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/jxphone/mosecurity/activity/a/b;->d:Landroid/widget/TextView;

    .line 116
    iget-object v0, v1, Lcom/jxphone/mosecurity/activity/a/b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/a/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    return-object v1
.end method


# virtual methods
.method public final a(I)Lcom/jxphone/mosecurity/c/b;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/a;->c:[Lcom/jxphone/mosecurity/c/b;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(ILcom/jxphone/mosecurity/c/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/a;->c:[Lcom/jxphone/mosecurity/c/b;

    aput-object p2, v0, p1

    .line 61
    return-void
.end method

.method public final b(I)Lcom/jxphone/mosecurity/c/b;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/a;->c:[Lcom/jxphone/mosecurity/c/b;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/a;->c:[Lcom/jxphone/mosecurity/c/b;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/a;->c:[Lcom/jxphone/mosecurity/c/b;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    .line 69
    if-nez p2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    new-instance v2, Lcom/jxphone/mosecurity/activity/a/b;

    invoke-direct {v2}, Lcom/jxphone/mosecurity/activity/a/b;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0800df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/jxphone/mosecurity/activity/a/b;->a:Landroid/widget/ImageView;

    const v0, 0x7f0800e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/jxphone/mosecurity/activity/a/b;->b:Landroid/widget/TextView;

    const v0, 0x7f0800e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/jxphone/mosecurity/activity/a/b;->c:Landroid/widget/TextView;

    const v0, 0x7f0800e1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/jxphone/mosecurity/activity/a/b;->a(Lcom/jxphone/mosecurity/activity/a/b;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0800e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/jxphone/mosecurity/activity/a/b;->d:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/jxphone/mosecurity/activity/a/b;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/a/a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    const v0, 0x7f0800e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const v0, 0x7f0800e2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v2

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/a/a;->c:[Lcom/jxphone/mosecurity/c/b;

    aget-object v2, v2, p1

    .line 83
    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/a/a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/jxphone/mosecurity/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 86
    if-eqz v4, :cond_1

    .line 87
    iget-object v5, v0, Lcom/jxphone/mosecurity/activity/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    :goto_1
    iget-object v4, v0, Lcom/jxphone/mosecurity/activity/a/b;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jxphone/mosecurity/activity/a/a;->b:Landroid/content/Context;

    const v6, 0x7f0b068d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    iget-object v3, v0, Lcom/jxphone/mosecurity/activity/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_2
    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-object v1

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/activity/a/b;

    move-object v1, p2

    goto :goto_0

    .line 89
    :cond_1
    iget-object v4, v0, Lcom/jxphone/mosecurity/activity/a/b;->a:Landroid/widget/ImageView;

    const v5, 0x7f020083

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 95
    :cond_2
    iget-object v3, v0, Lcom/jxphone/mosecurity/activity/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
