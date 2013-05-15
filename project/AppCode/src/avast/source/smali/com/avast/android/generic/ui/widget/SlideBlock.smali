.class public Lcom/avast/android/generic/ui/widget/SlideBlock;
.super Landroid/widget/LinearLayout;
.source "SlideBlock.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/CharSequence;

.field private d:I

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/avast/android/generic/ui/a/a;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/avast/android/generic/ui/widget/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/16 v0, 0x12c

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->a:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->b:Z

    .line 61
    const-string v0, "Title"

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->c:Ljava/lang/CharSequence;

    .line 62
    sget v0, Lcom/avast/android/generic/s;->d:I

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->d:I

    .line 63
    sget v0, Lcom/avast/android/generic/s;->j:I

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->e:I

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/16 v0, 0x12c

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->a:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->b:Z

    .line 61
    const-string v0, "Title"

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->c:Ljava/lang/CharSequence;

    .line 62
    sget v0, Lcom/avast/android/generic/s;->d:I

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->d:I

    .line 63
    sget v0, Lcom/avast/android/generic/s;->j:I

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->e:I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/ui/widget/SlideBlock;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/16 v0, 0x12c

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->a:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->b:Z

    .line 61
    const-string v0, "Title"

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->c:Ljava/lang/CharSequence;

    .line 62
    sget v0, Lcom/avast/android/generic/s;->d:I

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->d:I

    .line 63
    sget v0, Lcom/avast/android/generic/s;->j:I

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->e:I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/ui/widget/SlideBlock;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 90
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 92
    if-lez v0, :cond_0

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->c:Ljava/lang/CharSequence;

    .line 95
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/widget/SlideBlock;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Lcom/avast/android/generic/ui/a/a;

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/avast/android/generic/ui/a/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->h:Lcom/avast/android/generic/ui/a/a;

    .line 143
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->h:Lcom/avast/android/generic/ui/a/a;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/ui/a/a;->setStartTime(J)V

    .line 144
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->h:Lcom/avast/android/generic/ui/a/a;

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/ui/a/a;->setDuration(J)V

    .line 145
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->h:Lcom/avast/android/generic/ui/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 146
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->b:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->b()V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->b:Z

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->h:Lcom/avast/android/generic/ui/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/a/a;->a(Z)V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->b:Z

    .line 214
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->i:Landroid/widget/ImageView;

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->h:Lcom/avast/android/generic/ui/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 217
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->k:Lcom/avast/android/generic/ui/widget/y;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->k:Lcom/avast/android/generic/ui/widget/y;

    invoke-interface {v0, p0}, Lcom/avast/android/generic/ui/widget/y;->a(Lcom/avast/android/generic/ui/widget/SlideBlock;)V

    .line 221
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 181
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->b:Z

    .line 183
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->c()V

    .line 184
    return-void
.end method

.method public a(Lcom/avast/android/generic/ui/widget/y;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->k:Lcom/avast/android/generic/ui/widget/y;

    .line 196
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->c:Ljava/lang/CharSequence;

    .line 155
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->b:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->h:Lcom/avast/android/generic/ui/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/a/a;->a(Z)V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->b:Z

    .line 230
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->i:Landroid/widget/ImageView;

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->h:Lcom/avast/android/generic/ui/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 233
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->k:Lcom/avast/android/generic/ui/widget/y;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->k:Lcom/avast/android/generic/ui/widget/y;

    invoke-interface {v0, p0}, Lcom/avast/android/generic/ui/widget/y;->b(Lcom/avast/android/generic/ui/widget/SlideBlock;)V

    .line 237
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 99
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 101
    invoke-virtual {p0, v4}, Lcom/avast/android/generic/ui/widget/SlideBlock;->setOrientation(I)V

    .line 103
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->l:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/ui/widget/SlideBlock;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->f:Landroid/view/View;

    .line 105
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    .line 106
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->removeView(Landroid/view/View;)V

    .line 113
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->addView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->addView(Landroid/view/View;)V

    .line 119
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->c()V

    .line 121
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->f:Landroid/view/View;

    sget v1, Lcom/avast/android/generic/t;->P:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->i:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->f:Landroid/view/View;

    sget v1, Lcom/avast/android/generic/t;->E:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->j:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->i:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->b:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->d:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->f:Landroid/view/View;

    new-instance v1, Lcom/avast/android/generic/ui/widget/x;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/widget/x;-><init>(Lcom/avast/android/generic/ui/widget/SlideBlock;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void

    .line 126
    :cond_2
    iget v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->e:I

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SlideBlock;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 192
    return-void
.end method
