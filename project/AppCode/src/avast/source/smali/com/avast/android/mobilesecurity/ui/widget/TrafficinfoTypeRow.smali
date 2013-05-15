.class public Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "TrafficinfoTypeRow.java"


# instance fields
.field private A:Z

.field private a:Landroid/widget/ImageView;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->z:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->A:Z

    .line 52
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->onFinishInflate()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->z:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->A:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->z:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->A:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->z:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->A:Z

    .line 65
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->onFinishInflate()V

    .line 66
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->g:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 313
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 314
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 315
    if-eq v1, v3, :cond_0

    .line 316
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v2, v4, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 317
    :cond_0
    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const-wide/high16 v6, 0x4059

    const-wide/high16 v4, 0x4024

    .line 134
    long-to-double v0, p1

    .line 135
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 136
    const-string v0, ""

    .line 144
    :goto_0
    return-object v0

    .line 138
    :cond_0
    const-wide/high16 v2, 0x4130

    div-double/2addr v0, v2

    .line 139
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    .line 140
    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    .line 144
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v6

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 332
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->x:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_0
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->y:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :cond_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 71
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->z:Z

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->z:Z

    .line 77
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->l:I

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->l:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    :goto_1
    const v0, 0x7f020171

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->setBackgroundResource(I)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->setClickable(Z)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->setFocusable(Z)V

    .line 87
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 90
    const v0, 0x7f0701e5

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0701e7

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->n:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0701e8

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->m:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0701d1

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->o:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0701d4

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->q:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0701d5

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->p:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0701d8

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->r:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0701da

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->t:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0701db

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->s:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0701de

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->u:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0701e1

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->v:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0701e0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->w:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0701d6

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->x:Landroid/view/View;

    .line 104
    const v0, 0x7f0701dc

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->y:Landroid/view/View;

    goto/16 :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300a2

    invoke-static {v0, v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 124
    return-void
.end method

.method public a(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 201
    const v0, 0x7f0701e3

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c:Landroid/widget/TextView;

    add-long v1, p1, p3

    invoke-direct {p0, v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 205
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->n:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 206
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->m:Landroid/widget/TextView;

    invoke-direct {p0, p3, p4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 208
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 209
    return-void
.end method

.method public a(JJJJJJJJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->b(JJ)V

    .line 188
    move-wide/from16 v0, p11

    invoke-virtual {p0, p9, p10, v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(JJ)V

    .line 189
    move-wide/from16 v0, p13

    move-wide/from16 v2, p15

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(JJ)V

    .line 191
    iget-boolean v4, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->A:Z

    if-eqz v4, :cond_0

    .line 192
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(JJ)V

    .line 193
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->b(Z)V

    .line 195
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->b:Landroid/graphics/drawable/Drawable;

    .line 113
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 118
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 154
    if-eqz p1, :cond_0

    move v2, v1

    .line 155
    :goto_0
    if-eqz p1, :cond_1

    .line 156
    :goto_1
    const v1, 0x7f0701e5

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    const v1, 0x7f0701d1

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    const v1, 0x7f0701d8

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    const v1, 0x7f0701de

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    const v1, 0x7f0701e6

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const v1, 0x7f0701d2

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 163
    const v1, 0x7f0701d9

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    const v1, 0x7f0701df

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 166
    const v1, 0x7f0701e4

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    const v1, 0x7f0701d0

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 168
    const v1, 0x7f0701d7

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    const v1, 0x7f0701dd

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    return-void

    :cond_0
    move v2, v0

    .line 154
    goto :goto_0

    :cond_1
    move v0, v1

    .line 155
    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 323
    return-void
.end method

.method public b(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 215
    const v0, 0x7f0701cf

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 216
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->o:Landroid/widget/TextView;

    add-long v1, p1, p3

    invoke-direct {p0, v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 219
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->q:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 220
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->p:Landroid/widget/TextView;

    invoke-direct {p0, p3, p4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 222
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 223
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 178
    const v0, 0x7f0701e2

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    return-void

    .line 178
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 297
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 298
    const/4 v1, 0x1

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 300
    const v0, 0x7f0701e6

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 301
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    const v0, 0x7f0701d2

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 303
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 304
    const v0, 0x7f0701d9

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 305
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 306
    const v0, 0x7f0701df

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 307
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 309
    return-void
.end method

.method public c(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 229
    const v0, 0x7f0701d6

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 230
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->r:Landroid/widget/TextView;

    add-long v1, p1, p3

    invoke-direct {p0, v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 233
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->t:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 234
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->s:Landroid/widget/TextView;

    invoke-direct {p0, p3, p4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 236
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 237
    return-void
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 255
    const v0, 0x7f0701e3

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 256
    if-eqz p1, :cond_0

    .line 257
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 261
    :goto_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 262
    return-void

    .line 259
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public d(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 243
    const v0, 0x7f0701dc

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->u:Landroid/widget/TextView;

    add-long v1, p1, p3

    invoke-direct {p0, v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 247
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->w:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 249
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->v:Landroid/widget/TextView;

    invoke-direct {p0, p3, p4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 251
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 252
    return-void
.end method

.method public d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 265
    const v0, 0x7f0701dc

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 266
    if-eqz p1, :cond_0

    .line 267
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    :goto_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 272
    return-void

    .line 269
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 275
    const v0, 0x7f0701cf

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 276
    if-eqz p1, :cond_0

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 281
    :goto_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 282
    return-void

    .line 279
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 285
    const v0, 0x7f0701d6

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 286
    if-eqz p1, :cond_0

    .line 287
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    :goto_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 292
    return-void

    .line 289
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->A:Z

    .line 328
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d()V

    .line 329
    return-void
.end method
