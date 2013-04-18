.class public Lcom/jxphone/mosecurity/activity/a/f;
.super Lcom/keniu/security/importx/k;
.source "PhoneCallAdapter.java"


# instance fields
.field protected final a:Landroid/view/LayoutInflater;

.field protected final b:Landroid/content/Context;

.field protected final c:[Lcom/jxphone/mosecurity/c/b;

.field protected final d:[Lcom/jxphone/mosecurity/c/j;

.field protected final e:Z

.field protected final f:[Z


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jxphone/mosecurity/activity/a/f;-><init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/j;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/j;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/keniu/security/importx/k;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/a/f;->b:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/a/f;->d:[Lcom/jxphone/mosecurity/c/j;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/a/f;->a:Landroid/view/LayoutInflater;

    .line 48
    array-length v0, p2

    .line 49
    iput-boolean p3, p0, Lcom/jxphone/mosecurity/activity/a/f;->e:Z

    .line 50
    new-array v1, v0, [Lcom/jxphone/mosecurity/c/b;

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/a/f;->c:[Lcom/jxphone/mosecurity/c/b;

    .line 51
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/a/f;->f:[Z

    .line 53
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 54
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/a/f;->c:[Lcom/jxphone/mosecurity/c/b;

    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/j;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/jxphone/mosecurity/activity/a/f;->a(Ljava/lang/String;I)Lcom/jxphone/mosecurity/c/b;

    move-result-object v3

    aput-object v3, v2, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/a/g;
    .locals 2
    .parameter

    .prologue
    .line 145
    new-instance v1, Lcom/jxphone/mosecurity/activity/a/g;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/activity/a/g;-><init>()V

    .line 146
    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/jxphone/mosecurity/activity/a/g;->a(Lcom/jxphone/mosecurity/activity/a/g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f0800e0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/jxphone/mosecurity/activity/a/g;->b(Lcom/jxphone/mosecurity/activity/a/g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/jxphone/mosecurity/activity/a/g;->a(Lcom/jxphone/mosecurity/activity/a/g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/jxphone/mosecurity/activity/a/g;->b(Lcom/jxphone/mosecurity/activity/a/g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0800e6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/jxphone/mosecurity/activity/a/g;->c(Lcom/jxphone/mosecurity/activity/a/g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/jxphone/mosecurity/activity/a/g;->d(Lcom/jxphone/mosecurity/activity/a/g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v1, p0}, Lcom/jxphone/mosecurity/activity/a/g;->e(Lcom/jxphone/mosecurity/activity/a/g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 155
    return-object v1
.end method

.method private a(Ljava/lang/String;I)Lcom/jxphone/mosecurity/c/b;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/activity/a/f;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    .line 162
    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/a/f;->f:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p2

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/a/f;->c:[Lcom/jxphone/mosecurity/c/b;

    aput-object v0, v1, p2

    .line 169
    return-object v0

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/a/f;->f:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p2

    goto :goto_0
.end method

.method private static a(Lcom/jxphone/mosecurity/activity/a/g;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-static {p0}, Lcom/jxphone/mosecurity/activity/a/g;->g(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    return-void
.end method

.method private static a(Lcom/jxphone/mosecurity/activity/a/g;Lcom/jxphone/mosecurity/c/b;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7f020083

    .line 181
    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-static {p0}, Lcom/jxphone/mosecurity/activity/a/g;->f(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {p0}, Lcom/jxphone/mosecurity/activity/a/g;->f(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {p0}, Lcom/jxphone/mosecurity/activity/a/g;->f(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;
    .locals 2
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/f;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/a/f;->e:Z

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/jxphone/mosecurity/c/j;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/f;->d:[Lcom/jxphone/mosecurity/c/j;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(ILcom/jxphone/mosecurity/c/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/f;->c:[Lcom/jxphone/mosecurity/c/b;

    aput-object p2, v0, p1

    .line 73
    return-void
.end method

.method protected a(Lcom/jxphone/mosecurity/c/b;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    return-void
.end method

.method public final b(I)Lcom/jxphone/mosecurity/c/b;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/f;->c:[Lcom/jxphone/mosecurity/c/b;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/f;->d:[Lcom/jxphone/mosecurity/c/j;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/a/f;->d:[Lcom/jxphone/mosecurity/c/j;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    if-nez p2, :cond_2

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/a/f;->a:Landroid/view/LayoutInflater;

    move-object v3, v0

    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 83
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/f;->a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/a/g;

    move-result-object v4

    .line 84
    const v5, 0x7f0800e2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .line 93
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/a/f;->d:[Lcom/jxphone/mosecurity/c/j;

    move-object v5, v0

    aget-object v5, v5, p1

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/a/f;->c:[Lcom/jxphone/mosecurity/c/b;

    move-object v6, v0

    aget-object v6, v6, p1

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    move-object/from16 v16, v8

    move v8, v7

    move-object/from16 v7, v16

    .line 119
    :goto_1
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->g(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->a(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->c()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/a/f;->b:Landroid/content/Context;

    move-object v11, v0

    invoke-static {v9, v10, v11}, Lcom/keniu/security/util/i;->a(JLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->b(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/a/f;->b:Landroid/content/Context;

    move-object v9, v0

    const v10, 0x7f0b068d

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/a/f;->b:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v5, v13}, Lcom/jxphone/mosecurity/c/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->b(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/a/f;->b:Landroid/content/Context;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090061

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    if-nez v6, :cond_1

    .line 125
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jxphone/mosecurity/activity/a/f;->a(Ljava/lang/String;I)Lcom/jxphone/mosecurity/c/b;

    move-result-object v6

    .line 128
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/a/f;->f:[Z

    move-object v8, v0

    aget-boolean v8, v8, p1

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->f(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/a/f;->f:[Z

    move-object v8, v0

    aget-boolean v8, v8, p1

    if-eqz v8, :cond_5

    .line 130
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->c(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->d(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->e(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->e(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :goto_3
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/activity/a/f;->a(Lcom/jxphone/mosecurity/c/b;Landroid/view/View;)V

    .line 141
    return-object v4

    .line 89
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jxphone/mosecurity/activity/a/g;

    .line 90
    if-nez p3, :cond_6

    invoke-static/range {p2 .. p2}, Lcom/jxphone/mosecurity/activity/a/f;->a(Landroid/view/View;)Lcom/jxphone/mosecurity/activity/a/g;

    move-result-object v3

    move-object/from16 v4, p2

    goto/16 :goto_0

    .line 100
    :pswitch_0
    const v7, 0x7f020011

    .line 101
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->g()Lcom/jxphone/mosecurity/c/c;

    move-result-object v9

    sget-object v10, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v9, v10}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b067f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->i()J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v8

    move v8, v7

    move-object/from16 v7, v16

    goto/16 :goto_1

    .line 106
    :pswitch_1
    const v7, 0x7f020013

    .line 107
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b067f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->i()J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v8

    move v8, v7

    move-object/from16 v7, v16

    .line 108
    goto/16 :goto_1

    .line 110
    :pswitch_2
    const v7, 0x7f020012

    .line 112
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->g()Lcom/jxphone/mosecurity/c/c;

    move-result-object v9

    sget-object v10, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v9, v10}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 113
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b067d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->h()J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v8

    move v8, v7

    move-object/from16 v7, v16

    goto/16 :goto_1

    .line 128
    :cond_3
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->f(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/ImageView;

    move-result-object v8

    const v9, 0x7f020083

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_4
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->f(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/ImageView;

    move-result-object v8

    const v9, 0x7f020083

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 135
    :cond_5
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->c(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->d(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {v3}, Lcom/jxphone/mosecurity/activity/a/g;->e(Lcom/jxphone/mosecurity/activity/a/g;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    move-object/from16 v3, p3

    move-object/from16 v4, p2

    goto/16 :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
