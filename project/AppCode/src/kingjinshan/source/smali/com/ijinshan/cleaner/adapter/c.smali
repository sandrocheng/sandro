.class public final Lcom/ijinshan/cleaner/adapter/c;
.super Landroid/widget/BaseAdapter;
.source "CleanerActivityAdapter.java"


# static fields
.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x4


# instance fields
.field public a:Ljava/util/List;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->b:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x4480

    .line 173
    const/4 v0, 0x0

    .line 174
    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    if-ltz v1, :cond_2

    .line 176
    const-string v0, "KB"

    .line 177
    long-to-double v1, p0

    const-wide/high16 v3, 0x4090

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 178
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_0

    .line 179
    const-string v0, "MB"

    .line 180
    div-float/2addr v1, v5

    .line 182
    :cond_0
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_1

    .line 183
    const-string v0, "GB"

    .line 184
    div-float/2addr v1, v5

    .line 189
    :cond_1
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_2
    long-to-float v1, p0

    goto :goto_0

    .line 195
    :cond_3
    const-string v0, "B"

    .line 196
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 72
    if-lez v1, :cond_0

    .line 73
    new-instance v0, Lcom/ijinshan/cleaner/adapter/d;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/adapter/d;-><init>(Lcom/ijinshan/cleaner/adapter/c;)V

    .line 74
    const/4 v2, 0x1

    iput v2, v0, Lcom/ijinshan/cleaner/adapter/d;->a:I

    .line 75
    iget-object v2, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    .line 76
    :goto_0
    if-ge v2, v1, :cond_0

    .line 77
    new-instance v3, Lcom/ijinshan/cleaner/adapter/d;

    invoke-direct {v3, p0}, Lcom/ijinshan/cleaner/adapter/d;-><init>(Lcom/ijinshan/cleaner/adapter/c;)V

    .line 78
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/a;

    iput-object v0, v3, Lcom/ijinshan/cleaner/adapter/d;->b:Lcom/ijinshan/cleaner/a/a;

    .line 79
    const/4 v0, 0x3

    iput v0, v3, Lcom/ijinshan/cleaner/adapter/d;->a:I

    .line 80
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 85
    if-lez v1, :cond_1

    .line 86
    new-instance v0, Lcom/ijinshan/cleaner/adapter/d;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/adapter/d;-><init>(Lcom/ijinshan/cleaner/adapter/c;)V

    .line 87
    const/4 v2, 0x2

    iput v2, v0, Lcom/ijinshan/cleaner/adapter/d;->a:I

    .line 88
    iget-object v2, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    .line 89
    :goto_1
    if-ge v2, v1, :cond_1

    .line 90
    new-instance v3, Lcom/ijinshan/cleaner/adapter/d;

    invoke-direct {v3, p0}, Lcom/ijinshan/cleaner/adapter/d;-><init>(Lcom/ijinshan/cleaner/adapter/c;)V

    .line 91
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/c;

    iput-object v0, v3, Lcom/ijinshan/cleaner/adapter/d;->c:Lcom/ijinshan/cleaner/a/c;

    .line 92
    const/4 v0, 0x4

    iput v0, v3, Lcom/ijinshan/cleaner/adapter/d;->a:I

    .line 94
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 99
    :cond_1
    return-void
.end method

.method private b()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    .line 104
    :goto_0
    if-ge v2, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/adapter/d;

    iget-object v0, v0, Lcom/ijinshan/cleaner/adapter/d;->b:Lcom/ijinshan/cleaner/a/a;

    if-eqz v0, :cond_1

    .line 106
    add-int/lit8 v0, v3, 0x1

    .line 104
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    .line 109
    :cond_0
    return v3

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method private c()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    .line 115
    :goto_0
    if-ge v2, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/adapter/d;

    iget-object v0, v0, Lcom/ijinshan/cleaner/adapter/d;->c:Lcom/ijinshan/cleaner/a/c;

    if-eqz v0, :cond_1

    .line 117
    add-int/lit8 v0, v3, 0x1

    .line 115
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    .line 120
    :cond_0
    return v3

    :cond_1
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f080110

    const v3, 0x7f030030

    const/4 v4, 0x0

    .line 125
    new-instance v1, Lcom/ijinshan/cleaner/adapter/e;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/adapter/e;-><init>(Lcom/ijinshan/cleaner/adapter/c;)V

    .line 128
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/adapter/d;

    .line 130
    iget v2, v0, Lcom/ijinshan/cleaner/adapter/d;->a:I

    packed-switch v2, :pswitch_data_0

    move-object v0, p2

    .line 167
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 169
    return-object v0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ijinshan/cleaner/adapter/e;->b:Landroid/widget/TextView;

    .line 135
    iget-object v0, v1, Lcom/ijinshan/cleaner/adapter/e;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f13\u5b58\u6587\u4ef6("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/ijinshan/cleaner/adapter/c;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 136
    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/c;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 139
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ijinshan/cleaner/adapter/e;->b:Landroid/widget/TextView;

    .line 141
    iget-object v0, v1, Lcom/ijinshan/cleaner/adapter/e;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD\u5361\u5783\u573e\u6587\u4ef6 ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/ijinshan/cleaner/adapter/c;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 142
    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v2, p0, Lcom/ijinshan/cleaner/adapter/c;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f03002e

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 145
    const v3, 0x7f08010c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/cleaner/adapter/e;->b:Landroid/widget/TextView;

    .line 146
    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/ijinshan/cleaner/adapter/e;->a:Landroid/widget/ImageView;

    .line 147
    const v3, 0x7f08010d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/cleaner/adapter/e;->c:Landroid/widget/TextView;

    .line 148
    iput-object v4, v1, Lcom/ijinshan/cleaner/adapter/e;->d:Landroid/widget/CheckBox;

    .line 151
    iget-object v3, v1, Lcom/ijinshan/cleaner/adapter/e;->a:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/ijinshan/cleaner/adapter/d;->b:Lcom/ijinshan/cleaner/a/a;

    invoke-virtual {v4}, Lcom/ijinshan/cleaner/a/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v3, v1, Lcom/ijinshan/cleaner/adapter/e;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/ijinshan/cleaner/adapter/d;->b:Lcom/ijinshan/cleaner/a/a;

    invoke-virtual {v4}, Lcom/ijinshan/cleaner/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v3, v1, Lcom/ijinshan/cleaner/adapter/e;->c:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/ijinshan/cleaner/adapter/d;->b:Lcom/ijinshan/cleaner/a/a;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/a;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ijinshan/cleaner/adapter/c;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 154
    goto/16 :goto_0

    .line 156
    :pswitch_3
    iget-object v2, p0, Lcom/ijinshan/cleaner/adapter/c;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f03002f

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 157
    const v3, 0x7f08010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    iput-object p0, v1, Lcom/ijinshan/cleaner/adapter/e;->d:Landroid/widget/CheckBox;

    .line 158
    const v3, 0x7f0800e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/cleaner/adapter/e;->b:Landroid/widget/TextView;

    .line 159
    const v3, 0x7f0800e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/ijinshan/cleaner/adapter/e;->a:Landroid/widget/ImageView;

    .line 160
    const v3, 0x7f0800ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/cleaner/adapter/e;->c:Landroid/widget/TextView;

    .line 162
    iget-object v3, v1, Lcom/ijinshan/cleaner/adapter/e;->a:Landroid/widget/ImageView;

    const v4, 0x7f0200cd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v3, v1, Lcom/ijinshan/cleaner/adapter/e;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/ijinshan/cleaner/adapter/d;->c:Lcom/ijinshan/cleaner/a/c;

    invoke-virtual {v4}, Lcom/ijinshan/cleaner/a/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v3, v1, Lcom/ijinshan/cleaner/adapter/e;->c:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/ijinshan/cleaner/adapter/d;->c:Lcom/ijinshan/cleaner/a/c;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ijinshan/cleaner/adapter/c;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
