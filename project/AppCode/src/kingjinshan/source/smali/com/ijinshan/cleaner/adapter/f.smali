.class public final Lcom/ijinshan/cleaner/adapter/f;
.super Landroid/widget/BaseAdapter;
.source "SDcardActivityAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/ijinshan/cleaner/adapter/f;->b:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/ijinshan/cleaner/adapter/f;->a:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x4480

    .line 172
    const/4 v0, 0x0

    .line 173
    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    if-ltz v1, :cond_2

    .line 175
    const-string v0, "KB"

    .line 176
    long-to-double v1, p0

    const-wide/high16 v3, 0x4090

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 177
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_0

    .line 178
    const-string v0, "MB"

    .line 179
    div-float/2addr v1, v5

    .line 181
    :cond_0
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_1

    .line 182
    const-string v0, "GB"

    .line 183
    div-float/2addr v1, v5

    .line 188
    :cond_1
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_2
    long-to-float v1, p0

    goto :goto_0

    .line 193
    :cond_3
    const-string v0, "B"

    .line 194
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private a(Lcom/ijinshan/cleaner/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/adapter/f;Ljava/lang/String;Landroid/widget/CheckBox;Lcom/ijinshan/cleaner/a/c;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/ijinshan/cleaner/adapter/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-virtual {v0, p1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0682

    new-instance v2, Lcom/ijinshan/cleaner/adapter/i;

    invoke-direct {v2, p0, p2, p3}, Lcom/ijinshan/cleaner/adapter/i;-><init>(Lcom/ijinshan/cleaner/adapter/f;Landroid/widget/CheckBox;Lcom/ijinshan/cleaner/a/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0683

    new-instance v2, Lcom/ijinshan/cleaner/adapter/j;

    invoke-direct {v2, p0, p2, p3}, Lcom/ijinshan/cleaner/adapter/j;-><init>(Lcom/ijinshan/cleaner/adapter/f;Landroid/widget/CheckBox;Lcom/ijinshan/cleaner/a/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/CheckBox;Lcom/ijinshan/cleaner/a/c;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/ijinshan/cleaner/adapter/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 150
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 151
    invoke-virtual {v0, p1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 152
    const v1, 0x7f0b0682

    new-instance v2, Lcom/ijinshan/cleaner/adapter/i;

    invoke-direct {v2, p0, p2, p3}, Lcom/ijinshan/cleaner/adapter/i;-><init>(Lcom/ijinshan/cleaner/adapter/f;Landroid/widget/CheckBox;Lcom/ijinshan/cleaner/a/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 160
    const v1, 0x7f0b0683

    new-instance v2, Lcom/ijinshan/cleaner/adapter/j;

    invoke-direct {v2, p0, p2, p3}, Lcom/ijinshan/cleaner/adapter/j;-><init>(Lcom/ijinshan/cleaner/adapter/f;Landroid/widget/CheckBox;Lcom/ijinshan/cleaner/a/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 168
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 169
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/f;->b:Ljava/util/List;

    new-instance v1, Lcom/ijinshan/cleaner/adapter/g;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/adapter/g;-><init>(Lcom/ijinshan/cleaner/adapter/f;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 76
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

    const/high16 v10, 0x4480

    .line 81
    new-instance v2, Lcom/ijinshan/cleaner/adapter/k;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/adapter/k;-><init>(Lcom/ijinshan/cleaner/adapter/f;)V

    .line 83
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/c;

    .line 84
    iget-object v1, p0, Lcom/ijinshan/cleaner/adapter/f;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0300df

    invoke-virtual {v1, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 86
    const v1, 0x7f080334

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/ijinshan/cleaner/adapter/k;->d:Landroid/widget/CheckBox;

    .line 88
    const v1, 0x7f080332

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ijinshan/cleaner/adapter/k;->b:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f080331

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/ijinshan/cleaner/adapter/k;->a:Landroid/widget/ImageView;

    .line 92
    const v1, 0x7f080333

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ijinshan/cleaner/adapter/k;->c:Landroid/widget/TextView;

    .line 95
    iget-object v1, v2, Lcom/ijinshan/cleaner/adapter/k;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, v2, Lcom/ijinshan/cleaner/adapter/k;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5927\u5c0f\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    cmp-long v7, v5, v7

    if-ltz v7, :cond_1

    const-string v7, "KB"

    long-to-double v5, v5

    const-wide/high16 v8, 0x4090

    div-double/2addr v5, v8

    double-to-float v5, v5

    cmpl-float v6, v5, v10

    if-ltz v6, :cond_3

    const-string v6, "MB"

    div-float/2addr v5, v10

    :goto_0
    cmpl-float v7, v5, v10

    if-ltz v7, :cond_0

    const-string v6, "GB"

    div-float/2addr v5, v10

    :cond_0
    :goto_1
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "#0.00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    float-to-double v9, v5

    invoke-virtual {v7, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_2

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, v2, Lcom/ijinshan/cleaner/adapter/k;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->c()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u5728SD\u5361\u4fdd\u5b58\u4e86\u5927\u91cf\u7684\u6570\u636e\uff0c\u5220\u9664\u540e\u5c06\u65e0\u6cd5\u627e\u56de\u3002\n\u786e\u5b9a\u6e05\u7406\u5417\uff1f"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v4, v2, Lcom/ijinshan/cleaner/adapter/k;->d:Landroid/widget/CheckBox;

    new-instance v5, Lcom/ijinshan/cleaner/adapter/h;

    invoke-direct {v5, p0, v0, v1}, Lcom/ijinshan/cleaner/adapter/h;-><init>(Lcom/ijinshan/cleaner/adapter/f;Lcom/ijinshan/cleaner/a/c;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    return-object v3

    .line 96
    :cond_1
    long-to-float v5, v5

    move-object v6, v9

    goto :goto_1

    :cond_2
    const-string v5, "B"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move-object v6, v7

    goto :goto_0
.end method
