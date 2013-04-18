.class public abstract Lcom/ijinshan/kpref/DialogPreference;
.super Lcom/ijinshan/kpref/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/ijinshan/kpref/u;


# instance fields
.field private o:Lcom/keniu/security/util/aq;

.field private p:Ljava/lang/CharSequence;

.field private q:Ljava/lang/CharSequence;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Ljava/lang/CharSequence;

.field private t:Ljava/lang/CharSequence;

.field private u:I

.field private v:Landroid/app/Dialog;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/ijinshan/kpref/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    sget-object v0, Lcom/android/internal/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->p:Ljava/lang/CharSequence;

    .line 75
    iget-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->p:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->w()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->p:Ljava/lang/CharSequence;

    .line 80
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->q:Ljava/lang/CharSequence;

    .line 81
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->r:Landroid/graphics/drawable/Drawable;

    .line 82
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->s:Ljava/lang/CharSequence;

    .line 83
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->t:Ljava/lang/CharSequence;

    .line 84
    const/4 v1, 0x5

    iget v2, p0, Lcom/ijinshan/kpref/DialogPreference;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/ijinshan/kpref/DialogPreference;->u:I

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method

.method private static a(Landroid/app/Dialog;)V
    .locals 2
    .parameter

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 325
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 327
    return-void
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->q:Ljava/lang/CharSequence;

    .line 139
    return-void
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ijinshan/kpref/DialogPreference;->p:Ljava/lang/CharSequence;

    .line 101
    return-void
.end method

.method private d(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/ijinshan/kpref/DialogPreference;->q:Ljava/lang/CharSequence;

    .line 131
    return-void
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    .line 278
    const/4 v1, -0x2

    iput v1, p0, Lcom/ijinshan/kpref/DialogPreference;->w:I

    .line 280
    new-instance v1, Lcom/keniu/security/util/aq;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->p:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/graphics/drawable/Drawable;)Lcom/keniu/security/util/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->s:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->t:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->o:Lcom/keniu/security/util/aq;

    .line 286
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->I_()Landroid/view/View;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/DialogPreference;->b(Landroid/view/View;)V

    .line 289
    iget-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->o:Lcom/keniu/security/util/aq;

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->o:Lcom/keniu/security/util/aq;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/DialogPreference;->a(Lcom/keniu/security/util/aq;)V

    .line 296
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->I()Lcom/ijinshan/kpref/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/t;->a(Lcom/ijinshan/kpref/u;)V

    .line 299
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->o:Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->v:Landroid/app/Dialog;

    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 306
    :cond_1
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 307
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 308
    return-void

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->o:Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->q:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    goto :goto_0
.end method

.method private e(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/ijinshan/kpref/DialogPreference;->s:Ljava/lang/CharSequence;

    .line 184
    return-void
.end method

.method private f(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/ijinshan/kpref/DialogPreference;->t:Ljava/lang/CharSequence;

    .line 212
    return-void
.end method

.method private g(I)V
    .locals 1
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->r:Landroid/graphics/drawable/Drawable;

    .line 166
    return-void
.end method

.method private l()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->p:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private m()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private n()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->s:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private o()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->t:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private q()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/ijinshan/kpref/DialogPreference;->u:I

    return v0
.end method


# virtual methods
.method protected I_()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    iget v0, p0, Lcom/ijinshan/kpref/DialogPreference;->u:I

    if-nez v0, :cond_0

    move-object v0, v2

    .line 344
    :goto_0
    return-object v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 344
    iget v1, p0, Lcom/ijinshan/kpref/DialogPreference;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected final K_()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/DialogPreference;->e(Landroid/os/Bundle;)V

    .line 266
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput p1, p0, Lcom/ijinshan/kpref/DialogPreference;->u:I

    .line 241
    return-void
.end method

.method protected a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 433
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ijinshan/kpref/DialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 435
    :cond_0
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/Preference;->a(Landroid/os/Parcelable;)V

    .line 444
    :cond_1
    :goto_0
    return-void

    .line 439
    :cond_2
    check-cast p1, Lcom/ijinshan/kpref/DialogPreference$SavedState;

    .line 440
    invoke-virtual {p1}, Lcom/ijinshan/kpref/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/os/Parcelable;)V

    .line 441
    iget-boolean v0, p1, Lcom/ijinshan/kpref/DialogPreference$SavedState;->a:Z

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p1, Lcom/ijinshan/kpref/DialogPreference$SavedState;->b:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/DialogPreference;->e(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected a(Lcom/keniu/security/util/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    return-void
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 395
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->p:Ljava/lang/CharSequence;

    .line 109
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 355
    const v1, 0x102000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_1

    .line 358
    iget-object v2, p0, Lcom/ijinshan/kpref/DialogPreference;->q:Ljava/lang/CharSequence;

    .line 359
    const/16 v3, 0x8

    .line 361
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 362
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 363
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object p0, v0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_0
    const/4 v2, 0x0

    .line 369
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 370
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method protected d()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 420
    invoke-super {p0}, Lcom/ijinshan/kpref/Preference;->d()Landroid/os/Parcelable;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->v:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ijinshan/kpref/DialogPreference;->v:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-object v0

    .line 425
    :cond_1
    new-instance v1, Lcom/ijinshan/kpref/DialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/ijinshan/kpref/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/ijinshan/kpref/DialogPreference$SavedState;->a:Z

    .line 427
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/ijinshan/kpref/DialogPreference$SavedState;->b:Landroid/os/Bundle;

    move-object v0, v1

    .line 428
    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->r:Landroid/graphics/drawable/Drawable;

    .line 156
    return-void
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->r:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->s:Ljava/lang/CharSequence;

    .line 192
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->t:Ljava/lang/CharSequence;

    .line 220
    return-void
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->v:Landroid/app/Dialog;

    return-object v0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 376
    iput p2, p0, Lcom/ijinshan/kpref/DialogPreference;->w:I

    .line 377
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/ijinshan/kpref/DialogPreference;->I()Lcom/ijinshan/kpref/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/t;->b(Lcom/ijinshan/kpref/u;)V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kpref/DialogPreference;->v:Landroid/app/Dialog;

    .line 384
    iget v0, p0, Lcom/ijinshan/kpref/DialogPreference;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/DialogPreference;->a(Z)V

    .line 385
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
