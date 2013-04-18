.class public final Lcom/keniu/security/sync/ui/h;
.super Landroid/app/AlertDialog;
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

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    const v0, 0x7f0a001b

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/ui/h;->f:I

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/sync/ui/h;->c:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/ui/h;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/sync/ui/h;->c:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/keniu/security/sync/ui/h;->w:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->k:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/h;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/keniu/security/sync/ui/h;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/sync/ui/h;->c:Landroid/content/Context;

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/sync/ui/h;->c:Landroid/content/Context;

    invoke-static {p0, p1, p2, v1, v1}, Lcom/keniu/security/sync/ui/h;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/keniu/security/sync/ui/h;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/keniu/security/sync/ui/h;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/sync/ui/h;->c:Landroid/content/Context;

    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lcom/keniu/security/sync/ui/h;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/keniu/security/sync/ui/h;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/ui/h;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/keniu/security/sync/ui/h;->u:Landroid/view/View;

    .line 219
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/keniu/security/sync/ui/h;->h:Ljava/lang/String;

    .line 358
    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iput-boolean p1, p0, Lcom/keniu/security/sync/ui/h;->r:Z

    goto :goto_0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->l:I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/keniu/security/sync/ui/h;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/sync/ui/h;->c:Landroid/content/Context;

    .line 112
    invoke-static {p0, p1, p2, v1, v1}, Lcom/keniu/security/sync/ui/h;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/keniu/security/sync/ui/h;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/keniu/security/sync/ui/h;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/sync/ui/h;->c:Landroid/content/Context;

    .line 125
    new-instance v0, Lcom/keniu/security/sync/ui/h;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/sync/ui/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/ui/h;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v0, p2}, Lcom/keniu/security/sync/ui/h;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    invoke-direct {v0, p3}, Lcom/keniu/security/sync/ui/h;->a(Z)V

    .line 135
    invoke-virtual {v0, p4}, Lcom/keniu/security/sync/ui/h;->setCancelable(Z)V

    .line 136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/h;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 137
    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/h;->show()V

    .line 138
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/ui/h;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/ui/h;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private c()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 269
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->j:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/keniu/security/sync/ui/h;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private d(I)V
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 245
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/h;->e()V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iput p1, p0, Lcom/keniu/security/sync/ui/h;->l:I

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 327
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/keniu/security/sync/ui/h;->r:Z

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->t:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 364
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 1
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 284
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/h;->e()V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/keniu/security/sync/ui/h;->m:I

    goto :goto_0
.end method

.method private f(I)V
    .locals 1
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 293
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/h;->e()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/keniu/security/sync/ui/h;->n:I

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/keniu/security/sync/ui/h;->s:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 236
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/h;->e()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iput p1, p0, Lcom/keniu/security/sync/ui/h;->k:I

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 275
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/h;->e()V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iput p1, p0, Lcom/keniu/security/sync/ui/h;->j:I

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput p1, p0, Lcom/keniu/security/sync/ui/h;->f:I

    .line 345
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 143
    sget-object v0, Lcom/keniu/security/sync/ui/h;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 144
    iget v1, p0, Lcom/keniu/security/sync/ui/h;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 150
    new-instance v1, Lcom/keniu/security/sync/ui/i;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/i;-><init>(Lcom/keniu/security/sync/ui/h;)V

    iput-object v1, p0, Lcom/keniu/security/sync/ui/h;->t:Landroid/os/Handler;

    .line 166
    const v1, 0x7f0300c1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 167
    const v0, 0x7f0802e9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/h;->v:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->v:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/h;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v0, 0x7f0800c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    .line 170
    const v0, 0x7f0800c5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/h;->g:Landroid/widget/TextView;

    .line 171
    const-string v0, "%d/%d"

    iput-object v0, p0, Lcom/keniu/security/sync/ui/h;->h:Ljava/lang/String;

    .line 173
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/h;->i:Ljava/text/NumberFormat;

    .line 174
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->i:Ljava/text/NumberFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 175
    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/h;->setView(Landroid/view/View;)V

    .line 188
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->j:I

    if-lez v0, :cond_0

    .line 189
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->j:I

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/h;->b(I)V

    .line 191
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->k:I

    if-lez v0, :cond_1

    .line 192
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->k:I

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/h;->a(I)V

    .line 194
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->l:I

    if-lez v0, :cond_2

    .line 195
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->l:I

    iget-object v1, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Lcom/keniu/security/sync/ui/h;->e()V

    .line 197
    :cond_2
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->m:I

    if-lez v0, :cond_3

    .line 198
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->m:I

    iget-object v1, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    invoke-direct {p0}, Lcom/keniu/security/sync/ui/h;->e()V

    .line 200
    :cond_3
    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->n:I

    if-lez v0, :cond_4

    .line 201
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->n:I

    iget-object v1, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    invoke-direct {p0}, Lcom/keniu/security/sync/ui/h;->e()V

    .line 203
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 204
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->o:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 207
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 210
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->q:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/h;->setMessage(Ljava/lang/CharSequence;)V

    .line 212
    :cond_7
    iget-boolean v0, p0, Lcom/keniu/security/sync/ui/h;->r:Z

    invoke-direct {p0, v0}, Lcom/keniu/security/sync/ui/h;->a(Z)V

    .line 213
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/h;->e()V

    .line 214
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 215
    return-void

    .line 177
    :cond_8
    const v1, 0x7f0300dc

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 178
    const v0, 0x7f080325

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 179
    iget-object v2, p0, Lcom/keniu/security/sync/ui/h;->u:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 180
    iget-object v2, p0, Lcom/keniu/security/sync/ui/h;->u:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    :goto_6
    const v0, 0x102000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    .line 185
    const v0, 0x7f080270

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/h;->e:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/h;->setView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 182
    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    .line 195
    :cond_a
    iput v0, p0, Lcom/keniu/security/sync/ui/h;->l:I

    goto/16 :goto_1

    .line 198
    :cond_b
    iget v1, p0, Lcom/keniu/security/sync/ui/h;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keniu/security/sync/ui/h;->m:I

    goto/16 :goto_2

    .line 201
    :cond_c
    iget v1, p0, Lcom/keniu/security/sync/ui/h;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keniu/security/sync/ui/h;->n:I

    goto/16 :goto_3

    .line 204
    :cond_d
    iput-object v0, p0, Lcom/keniu/security/sync/ui/h;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 207
    :cond_e
    iput-object v0, p0, Lcom/keniu/security/sync/ui/h;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_5
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/sync/ui/h;->s:Z

    .line 225
    return-void
.end method

.method protected final onStop()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/sync/ui/h;->s:Z

    .line 231
    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 333
    iget v0, p0, Lcom/keniu/security/sync/ui/h;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 334
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 341
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/h;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :cond_1
    iput-object p1, p0, Lcom/keniu/security/sync/ui/h;->q:Ljava/lang/CharSequence;

    goto :goto_0
.end method
