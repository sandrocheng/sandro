.class public final Lcom/keniu/security/util/ar;
.super Lcom/keniu/security/util/ap;
.source "MyProgressDialog.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field private static c:Landroid/content/Context;


# instance fields
.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/text/NumberFormat;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Ljava/lang/CharSequence;

.field private s:Z

.field private t:Z

.field private u:Landroid/os/Handler;

.field private v:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    const v0, 0x7f0a001a

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/util/ap;-><init>(Landroid/content/Context;I)V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/util/ar;->f:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/util/ar;->c:Landroid/content/Context;

    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/keniu/security/util/ar;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/util/ar;->c:Landroid/content/Context;

    .line 94
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 270
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/keniu/security/util/ar;->l:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/util/ar;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/keniu/security/util/ar;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/util/ar;->c:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/util/ar;->c:Landroid/content/Context;

    invoke-static {p0, p1, p2, v1, v1}, Lcom/keniu/security/util/ar;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/keniu/security/util/ar;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/keniu/security/util/ar;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/util/ar;->c:Landroid/content/Context;

    .line 116
    invoke-static {p0, p1, p2, p3, p4}, Lcom/keniu/security/util/ar;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/keniu/security/util/ar;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/keniu/security/util/ar;->t:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 251
    invoke-direct {p0}, Lcom/keniu/security/util/ar;->f()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iput p1, p0, Lcom/keniu/security/util/ar;->l:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/util/ar;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/keniu/security/util/ar;->h:Ljava/lang/String;

    .line 373
    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iput-boolean p1, p0, Lcom/keniu/security/util/ar;->s:Z

    goto :goto_0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 277
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/keniu/security/util/ar;->m:I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/keniu/security/util/ar;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/util/ar;->c:Landroid/content/Context;

    .line 110
    invoke-static {p0, p1, p2, v1, v1}, Lcom/keniu/security/util/ar;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/keniu/security/util/ar;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/keniu/security/util/ar;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/util/ar;->c:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/keniu/security/util/ar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/ar;-><init>(Landroid/content/Context;B)V

    .line 124
    invoke-virtual {v0, p1}, Lcom/keniu/security/util/ar;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v0, p2}, Lcom/keniu/security/util/ar;->a(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {v0, p3}, Lcom/keniu/security/util/ar;->a(Z)V

    .line 133
    invoke-virtual {v0, p4}, Lcom/keniu/security/util/ar;->setCancelable(Z)V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/ar;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 135
    invoke-virtual {v0}, Lcom/keniu/security/util/ar;->show()V

    .line 136
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/util/ar;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/keniu/security/util/ar;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 260
    invoke-direct {p0}, Lcom/keniu/security/util/ar;->f()V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    iput p1, p0, Lcom/keniu/security/util/ar;->m:I

    goto :goto_0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/util/ar;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/keniu/security/util/ar;->v:Landroid/view/View;

    .line 234
    return-void
.end method

.method static synthetic c(Lcom/keniu/security/util/ar;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/keniu/security/util/ar;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private c(I)V
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 290
    invoke-direct {p0}, Lcom/keniu/security/util/ar;->f()V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iput p1, p0, Lcom/keniu/security/util/ar;->k:I

    goto :goto_0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 284
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/keniu/security/util/ar;->k:I

    goto :goto_0
.end method

.method static synthetic d(Lcom/keniu/security/util/ar;)Ljava/text/NumberFormat;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/keniu/security/util/ar;->j:Ljava/text/NumberFormat;

    return-object v0
.end method

.method private d(I)V
    .locals 1
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 299
    invoke-direct {p0}, Lcom/keniu/security/util/ar;->f()V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget v0, p0, Lcom/keniu/security/util/ar;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/keniu/security/util/ar;->n:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/keniu/security/util/ar;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/keniu/security/util/ar;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private e(I)V
    .locals 1
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 308
    invoke-direct {p0}, Lcom/keniu/security/util/ar;->f()V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget v0, p0, Lcom/keniu/security/util/ar;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/keniu/security/util/ar;->o:I

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 342
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/keniu/security/util/ar;->s:Z

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lcom/keniu/security/util/ar;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/keniu/security/util/ar;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput p1, p0, Lcom/keniu/security/util/ar;->f:I

    .line 360
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 348
    iget v0, p0, Lcom/keniu/security/util/ar;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 349
    invoke-super {p0, p1}, Lcom/keniu/security/util/ap;->a(Ljava/lang/CharSequence;)V

    .line 356
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/util/ar;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 354
    :cond_1
    iput-object p1, p0, Lcom/keniu/security/util/ar;->r:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x8

    const/4 v4, -0x1

    .line 141
    sget-object v0, Lcom/keniu/security/util/ar;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 142
    iget v1, p0, Lcom/keniu/security/util/ar;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 148
    new-instance v1, Lcom/keniu/security/util/as;

    invoke-direct {v1, p0}, Lcom/keniu/security/util/as;-><init>(Lcom/keniu/security/util/ar;)V

    iput-object v1, p0, Lcom/keniu/security/util/ar;->u:Landroid/os/Handler;

    .line 167
    const v1, 0x7f03001e

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 169
    const v0, 0x7f0800c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 171
    iget-object v2, p0, Lcom/keniu/security/util/ar;->v:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 172
    iget-object v2, p0, Lcom/keniu/security/util/ar;->v:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :goto_0
    const v0, 0x7f0800c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    .line 179
    const v0, 0x7f0800c5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/util/ar;->g:Landroid/widget/TextView;

    .line 181
    const-string v0, "%d/%d"

    iput-object v0, p0, Lcom/keniu/security/util/ar;->h:Ljava/lang/String;

    .line 182
    const v0, 0x7f0800c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/util/ar;->i:Landroid/widget/TextView;

    .line 184
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/util/ar;->j:Ljava/text/NumberFormat;

    .line 185
    iget-object v0, p0, Lcom/keniu/security/util/ar;->j:Ljava/text/NumberFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 186
    invoke-virtual {p0, v1}, Lcom/keniu/security/util/ar;->a(Landroid/view/View;)V

    .line 203
    :goto_1
    iget v0, p0, Lcom/keniu/security/util/ar;->k:I

    if-lez v0, :cond_0

    .line 204
    iget v0, p0, Lcom/keniu/security/util/ar;->k:I

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/keniu/security/util/ar;->f()V

    .line 206
    :cond_0
    :goto_2
    iget v0, p0, Lcom/keniu/security/util/ar;->l:I

    if-lez v0, :cond_1

    .line 207
    iget v0, p0, Lcom/keniu/security/util/ar;->l:I

    iget-boolean v1, p0, Lcom/keniu/security/util/ar;->t:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/keniu/security/util/ar;->f()V

    .line 209
    :cond_1
    :goto_3
    iget v0, p0, Lcom/keniu/security/util/ar;->m:I

    if-lez v0, :cond_2

    .line 210
    iget v0, p0, Lcom/keniu/security/util/ar;->m:I

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Lcom/keniu/security/util/ar;->f()V

    .line 212
    :cond_2
    :goto_4
    iget v0, p0, Lcom/keniu/security/util/ar;->n:I

    if-lez v0, :cond_3

    .line 213
    iget v0, p0, Lcom/keniu/security/util/ar;->n:I

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    invoke-direct {p0}, Lcom/keniu/security/util/ar;->f()V

    .line 215
    :cond_3
    :goto_5
    iget v0, p0, Lcom/keniu/security/util/ar;->o:I

    if-lez v0, :cond_4

    .line 216
    iget v0, p0, Lcom/keniu/security/util/ar;->o:I

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    invoke-direct {p0}, Lcom/keniu/security/util/ar;->f()V

    .line 218
    :cond_4
    :goto_6
    iget-object v0, p0, Lcom/keniu/security/util/ar;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/keniu/security/util/ar;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    :cond_5
    :goto_7
    iget-object v0, p0, Lcom/keniu/security/util/ar;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 222
    iget-object v0, p0, Lcom/keniu/security/util/ar;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :cond_6
    :goto_8
    iget-object v0, p0, Lcom/keniu/security/util/ar;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 225
    iget-object v0, p0, Lcom/keniu/security/util/ar;->r:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/keniu/security/util/ar;->a(Ljava/lang/CharSequence;)V

    .line 227
    :cond_7
    iget-boolean v0, p0, Lcom/keniu/security/util/ar;->s:Z

    invoke-direct {p0, v0}, Lcom/keniu/security/util/ar;->a(Z)V

    .line 228
    invoke-direct {p0}, Lcom/keniu/security/util/ar;->f()V

    .line 229
    invoke-super {p0, p1}, Lcom/keniu/security/util/ap;->onCreate(Landroid/os/Bundle;)V

    .line 230
    return-void

    .line 175
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 188
    :cond_9
    const v1, 0x7f0300dc

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 190
    const v0, 0x7f080325

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 192
    iget-object v2, p0, Lcom/keniu/security/util/ar;->v:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 193
    iget-object v2, p0, Lcom/keniu/security/util/ar;->v:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    :goto_9
    const v0, 0x102000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/keniu/security/util/ar;->d:Landroid/widget/ProgressBar;

    .line 199
    const v0, 0x7f080270

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/util/ar;->e:Landroid/widget/TextView;

    .line 201
    invoke-virtual {p0, v1}, Lcom/keniu/security/util/ar;->a(Landroid/view/View;)V

    goto/16 :goto_1

    .line 196
    :cond_a
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_9

    .line 204
    :cond_b
    iput v0, p0, Lcom/keniu/security/util/ar;->k:I

    goto/16 :goto_2

    .line 207
    :cond_c
    iput v0, p0, Lcom/keniu/security/util/ar;->l:I

    goto/16 :goto_3

    .line 210
    :cond_d
    iput v0, p0, Lcom/keniu/security/util/ar;->m:I

    goto/16 :goto_4

    .line 213
    :cond_e
    iget v1, p0, Lcom/keniu/security/util/ar;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keniu/security/util/ar;->n:I

    goto/16 :goto_5

    .line 216
    :cond_f
    iget v1, p0, Lcom/keniu/security/util/ar;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keniu/security/util/ar;->o:I

    goto/16 :goto_6

    .line 219
    :cond_10
    iput-object v0, p0, Lcom/keniu/security/util/ar;->p:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7

    .line 222
    :cond_11
    iput-object v0, p0, Lcom/keniu/security/util/ar;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_8
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lcom/keniu/security/util/ap;->onStart()V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/util/ar;->t:Z

    .line 240
    return-void
.end method

.method protected final onStop()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/keniu/security/util/ap;->onStop()V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/util/ar;->t:Z

    .line 246
    return-void
.end method
