.class public final Lcom/hoi/widget/o;
.super Lcom/keniu/security/util/ap;
.source "KPDProgressDialog.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/text/NumberFormat;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Ljava/lang/CharSequence;

.field private r:Z

.field private s:Z

.field private t:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    const v0, 0x7f0a001c

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/util/ap;-><init>(Landroid/content/Context;I)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/hoi/widget/o;->e:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/hoi/widget/o;-><init>(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/hoi/widget/o;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/hoi/widget/o;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {p0, p1, p2, v0, v0}, Lcom/hoi/widget/o;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/hoi/widget/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/hoi/widget/o;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hoi/widget/o;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/hoi/widget/o;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iput-object p1, p0, Lcom/hoi/widget/o;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/hoi/widget/o;->g:Ljava/lang/String;

    .line 317
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/hoi/widget/o;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-static {p0, p1, p2, v0, v0}, Lcom/hoi/widget/o;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/hoi/widget/o;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/hoi/widget/o;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v0, Lcom/hoi/widget/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hoi/widget/o;-><init>(Landroid/content/Context;B)V

    .line 104
    invoke-virtual {v0, p1}, Lcom/hoi/widget/o;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v0, p2}, Lcom/hoi/widget/o;->a(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v0, p3}, Lcom/hoi/widget/o;->a(Z)V

    .line 107
    invoke-virtual {v0, p4}, Lcom/hoi/widget/o;->setCancelable(Z)V

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 109
    invoke-virtual {v0}, Lcom/hoi/widget/o;->show()V

    .line 110
    return-object v0
.end method

.method static synthetic b(Lcom/hoi/widget/o;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hoi/widget/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/hoi/widget/o;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic c(Lcom/hoi/widget/o;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hoi/widget/o;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private c(I)V
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 206
    invoke-direct {p0}, Lcom/hoi/widget/o;->g()V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iput p1, p0, Lcom/hoi/widget/o;->l:I

    goto :goto_0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/hoi/widget/o;->l:I

    goto :goto_0
.end method

.method static synthetic d(Lcom/hoi/widget/o;)Ljava/text/NumberFormat;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hoi/widget/o;->i:Ljava/text/NumberFormat;

    return-object v0
.end method

.method private d(I)V
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 245
    invoke-direct {p0}, Lcom/hoi/widget/o;->g()V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget v0, p0, Lcom/hoi/widget/o;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/hoi/widget/o;->m:I

    goto :goto_0
.end method

.method private e()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/hoi/widget/o;->j:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/hoi/widget/o;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hoi/widget/o;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private e(I)V
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 254
    invoke-direct {p0}, Lcom/hoi/widget/o;->g()V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget v0, p0, Lcom/hoi/widget/o;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/hoi/widget/o;->n:I

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 288
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/hoi/widget/o;->r:Z

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Lcom/hoi/widget/o;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/hoi/widget/o;->t:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/hoi/widget/o;->k:I

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/hoi/widget/o;->s:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 197
    invoke-direct {p0}, Lcom/hoi/widget/o;->g()V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iput p1, p0, Lcom/hoi/widget/o;->k:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 294
    iget v0, p0, Lcom/hoi/widget/o;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/hoi/widget/o;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iput-object p1, p0, Lcom/hoi/widget/o;->q:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iput-boolean p1, p0, Lcom/hoi/widget/o;->r:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    iput v0, p0, Lcom/hoi/widget/o;->e:I

    .line 306
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 236
    invoke-direct {p0}, Lcom/hoi/widget/o;->g()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iput p1, p0, Lcom/hoi/widget/o;->j:I

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f080270

    const v3, 0x7f0800c3

    .line 115
    invoke-virtual {p0}, Lcom/hoi/widget/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 116
    iget v1, p0, Lcom/hoi/widget/o;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 121
    new-instance v1, Lcom/hoi/widget/p;

    invoke-direct {v1, p0}, Lcom/hoi/widget/p;-><init>(Lcom/hoi/widget/o;)V

    iput-object v1, p0, Lcom/hoi/widget/o;->t:Landroid/os/Handler;

    .line 138
    const v1, 0x7f03009b

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    .line 140
    const v0, 0x7f0800c5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hoi/widget/o;->f:Landroid/widget/TextView;

    .line 141
    const-string v0, "%d/%d"

    iput-object v0, p0, Lcom/hoi/widget/o;->g:Ljava/lang/String;

    .line 142
    const v0, 0x7f0800c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hoi/widget/o;->h:Landroid/widget/TextView;

    .line 143
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/hoi/widget/o;->i:Ljava/text/NumberFormat;

    .line 144
    iget-object v0, p0, Lcom/hoi/widget/o;->i:Ljava/text/NumberFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 145
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hoi/widget/o;->d:Landroid/widget/TextView;

    .line 146
    invoke-virtual {p0, v1}, Lcom/hoi/widget/o;->a(Landroid/view/View;)V

    .line 153
    :goto_0
    iget v0, p0, Lcom/hoi/widget/o;->j:I

    if-lez v0, :cond_0

    .line 154
    iget v0, p0, Lcom/hoi/widget/o;->j:I

    invoke-virtual {p0, v0}, Lcom/hoi/widget/o;->b(I)V

    .line 156
    :cond_0
    iget v0, p0, Lcom/hoi/widget/o;->k:I

    if-lez v0, :cond_1

    .line 157
    iget v0, p0, Lcom/hoi/widget/o;->k:I

    invoke-virtual {p0, v0}, Lcom/hoi/widget/o;->a(I)V

    .line 159
    :cond_1
    iget v0, p0, Lcom/hoi/widget/o;->l:I

    if-lez v0, :cond_2

    .line 160
    iget v0, p0, Lcom/hoi/widget/o;->l:I

    iget-object v1, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Lcom/hoi/widget/o;->g()V

    .line 162
    :cond_2
    :goto_1
    iget v0, p0, Lcom/hoi/widget/o;->m:I

    if-lez v0, :cond_3

    .line 163
    iget v0, p0, Lcom/hoi/widget/o;->m:I

    iget-object v1, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    invoke-direct {p0}, Lcom/hoi/widget/o;->g()V

    .line 165
    :cond_3
    :goto_2
    iget v0, p0, Lcom/hoi/widget/o;->n:I

    if-lez v0, :cond_4

    .line 166
    iget v0, p0, Lcom/hoi/widget/o;->n:I

    iget-object v1, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    invoke-direct {p0}, Lcom/hoi/widget/o;->g()V

    .line 168
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/hoi/widget/o;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lcom/hoi/widget/o;->o:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/hoi/widget/o;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 172
    iget-object v0, p0, Lcom/hoi/widget/o;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/hoi/widget/o;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 175
    iget-object v0, p0, Lcom/hoi/widget/o;->q:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/hoi/widget/o;->a(Ljava/lang/CharSequence;)V

    .line 177
    :cond_7
    iget-boolean v0, p0, Lcom/hoi/widget/o;->r:Z

    invoke-virtual {p0, v0}, Lcom/hoi/widget/o;->a(Z)V

    .line 178
    invoke-direct {p0}, Lcom/hoi/widget/o;->g()V

    .line 179
    invoke-super {p0, p1}, Lcom/keniu/security/util/ap;->onCreate(Landroid/os/Bundle;)V

    .line 180
    return-void

    .line 148
    :cond_8
    const v1, 0x7f03009c

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/hoi/widget/o;->c:Landroid/widget/ProgressBar;

    .line 150
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hoi/widget/o;->d:Landroid/widget/TextView;

    .line 151
    invoke-virtual {p0, v1}, Lcom/hoi/widget/o;->a(Landroid/view/View;)V

    goto/16 :goto_0

    .line 160
    :cond_9
    iput v0, p0, Lcom/hoi/widget/o;->l:I

    goto :goto_1

    .line 163
    :cond_a
    iget v1, p0, Lcom/hoi/widget/o;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hoi/widget/o;->m:I

    goto :goto_2

    .line 166
    :cond_b
    iget v1, p0, Lcom/hoi/widget/o;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hoi/widget/o;->n:I

    goto :goto_3

    .line 169
    :cond_c
    iput-object v0, p0, Lcom/hoi/widget/o;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 172
    :cond_d
    iput-object v0, p0, Lcom/hoi/widget/o;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_5
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/keniu/security/util/ap;->onStart()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hoi/widget/o;->s:Z

    .line 186
    return-void
.end method

.method protected final onStop()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/keniu/security/util/ap;->onStop()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hoi/widget/o;->s:Z

    .line 192
    return-void
.end method
