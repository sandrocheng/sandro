.class public Lcom/jxphone/mosecurity/activity/a/i;
.super Lcom/keniu/security/importx/k;
.source "SmsAdapter.java"


# instance fields
.field protected final a:Landroid/view/LayoutInflater;

.field protected final b:[Lcom/jxphone/mosecurity/c/l;

.field protected final c:[Lcom/jxphone/mosecurity/c/b;

.field protected final d:[Z

.field protected final e:Z

.field protected f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jxphone/mosecurity/activity/a/i;-><init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/l;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/l;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-direct {p0}, Lcom/keniu/security/importx/k;-><init>()V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/a/i;->a:Landroid/view/LayoutInflater;

    .line 44
    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/a/i;->b:[Lcom/jxphone/mosecurity/c/l;

    .line 45
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/a/i;->f:Landroid/content/Context;

    .line 46
    array-length v0, p2

    .line 47
    new-array v1, v0, [Lcom/jxphone/mosecurity/c/b;

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/a/i;->c:[Lcom/jxphone/mosecurity/c/b;

    .line 48
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/a/i;->d:[Z

    .line 49
    iput-boolean p3, p0, Lcom/jxphone/mosecurity/activity/a/i;->e:Z

    move v1, v6

    .line 51
    :goto_0
    if-ge v1, v0, :cond_1

    .line 52
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/a/i;->c:[Lcom/jxphone/mosecurity/c/b;

    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/l;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jxphone/mosecurity/activity/a/i;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v4}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    invoke-virtual {v4, v3}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/a/i;->d:[Z

    aput-boolean v6, v3, v1

    move-object v3, v4

    :goto_1
    iget-object v4, p0, Lcom/jxphone/mosecurity/activity/a/i;->c:[Lcom/jxphone/mosecurity/c/b;

    aput-object v3, v4, v1

    aput-object v3, v2, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/a/i;->d:[Z

    const/4 v5, 0x1

    aput-boolean v5, v3, v1

    move-object v3, v4

    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method

.method private static a()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f030025

    return v0
.end method

.method private static a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/a/j;
    .locals 6
    .parameter

    .prologue
    .line 125
    new-instance v4, Lcom/jxphone/mosecurity/activity/a/j;

    invoke-direct {v4}, Lcom/jxphone/mosecurity/activity/a/j;-><init>()V

    .line 126
    invoke-virtual {p0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    const v1, 0x7f0800e1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 129
    const v2, 0x7f0800e5

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 130
    const v3, 0x7f0800e6

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 131
    const v5, 0x7f0800e4

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 133
    iput-object v0, v4, Lcom/jxphone/mosecurity/activity/a/j;->a:Landroid/widget/ImageView;

    .line 134
    iput-object v1, v4, Lcom/jxphone/mosecurity/activity/a/j;->b:Landroid/widget/TextView;

    .line 135
    iput-object v2, v4, Lcom/jxphone/mosecurity/activity/a/j;->c:Landroid/widget/TextView;

    .line 136
    iput-object v3, v4, Lcom/jxphone/mosecurity/activity/a/j;->d:Landroid/widget/TextView;

    .line 137
    iput-object p0, v4, Lcom/jxphone/mosecurity/activity/a/j;->e:Landroid/widget/TextView;

    .line 138
    return-object v4
.end method

.method private a(Ljava/lang/String;I)Lcom/jxphone/mosecurity/c/b;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/activity/a/i;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 143
    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    .line 145
    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/a/i;->d:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p2

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/a/i;->c:[Lcom/jxphone/mosecurity/c/b;

    aput-object v0, v1, p2

    .line 152
    return-object v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/a/i;->d:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p2

    goto :goto_0
.end method

.method private a(Lcom/jxphone/mosecurity/c/l;Lcom/jxphone/mosecurity/activity/a/j;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/i;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/jxphone/mosecurity/c/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p2, Lcom/jxphone/mosecurity/activity/a/j;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/a/i;->f:Landroid/content/Context;

    const v3, 0x7f0b068d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p2, Lcom/jxphone/mosecurity/activity/a/j;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/a/i;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    return-void
.end method

.method private static a(Ljava/lang/String;ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    const v0, 0x7f0800e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const v0, 0x7f0800e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 175
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f02019f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    return-void

    .line 175
    :cond_0
    const v0, 0x7f0201a0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/jxphone/mosecurity/activity/a/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p1, Lcom/jxphone/mosecurity/activity/a/j;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;
    .locals 2
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/i;->f:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/a/i;->e:Z

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/jxphone/mosecurity/c/l;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/i;->b:[Lcom/jxphone/mosecurity/c/l;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(ILcom/jxphone/mosecurity/c/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/i;->c:[Lcom/jxphone/mosecurity/c/b;

    aput-object p2, v0, p1

    .line 71
    return-void
.end method

.method public final b(I)Lcom/jxphone/mosecurity/c/b;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/i;->c:[Lcom/jxphone/mosecurity/c/b;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/i;->b:[Lcom/jxphone/mosecurity/c/l;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/i;->b:[Lcom/jxphone/mosecurity/c/l;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/i;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/a/i;->a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/a/j;

    move-result-object v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/a/i;->b:[Lcom/jxphone/mosecurity/c/l;

    aget-object v2, v2, p1

    .line 95
    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/a/i;->c:[Lcom/jxphone/mosecurity/c/b;

    aget-object v3, v3, p1

    .line 96
    iget-object v4, p0, Lcom/jxphone/mosecurity/activity/a/i;->f:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/jxphone/mosecurity/c/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/jxphone/mosecurity/activity/a/j;->e:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jxphone/mosecurity/activity/a/i;->f:Landroid/content/Context;

    const v7, 0x7f0b068d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/jxphone/mosecurity/activity/a/j;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jxphone/mosecurity/activity/a/i;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090061

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    const/4 v4, 0x0

    .line 99
    iget-object v5, p0, Lcom/jxphone/mosecurity/activity/a/i;->d:[Z

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_2

    .line 100
    iget-object v4, p0, Lcom/jxphone/mosecurity/activity/a/i;->c:[Lcom/jxphone/mosecurity/c/b;

    aput-object v3, v4, p1

    .line 101
    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 102
    if-eqz v4, :cond_1

    .line 103
    iget-object v5, v0, Lcom/jxphone/mosecurity/activity/a/j;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    :goto_1
    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v5

    move-object v10, v4

    move-object v4, v5

    move-object v5, v3

    move-object v3, v10

    .line 116
    :goto_2
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v6

    const v7, 0x7f0800e3

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0800e0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v5, 0x1

    if-ne v6, v5, :cond_3

    const v5, 0x7f02019f

    :goto_3
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v5, v0, Lcom/jxphone/mosecurity/activity/a/j;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, v0, Lcom/jxphone/mosecurity/activity/a/j;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/a/j;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/jxphone/mosecurity/activity/a/i;->f:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/keniu/security/util/i;->a(JLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-object v1

    .line 90
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jxphone/mosecurity/activity/a/j;

    .line 91
    if-nez p3, :cond_4

    invoke-static {p2}, Lcom/jxphone/mosecurity/activity/a/i;->a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/a/j;

    move-result-object v0

    move-object v1, p2

    goto/16 :goto_0

    .line 105
    :cond_1
    iget-object v4, v0, Lcom/jxphone/mosecurity/activity/a/j;->a:Landroid/widget/ImageView;

    const v5, 0x7f020083

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 111
    :cond_2
    iget-object v3, v0, Lcom/jxphone/mosecurity/activity/a/j;->a:Landroid/widget/ImageView;

    const v5, 0x7f020083

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v5

    move-object v10, v4

    move-object v4, v5

    move-object v5, v3

    move-object v3, v10

    goto :goto_2

    .line 116
    :cond_3
    const v5, 0x7f0201a0

    goto :goto_3

    :cond_4
    move-object v0, p3

    move-object v1, p2

    goto/16 :goto_0
.end method
