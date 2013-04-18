.class public abstract Lcom/keniu/security/util/CustomDialogPreference;
.super Lcom/ijinshan/kpref/Preference;
.source "CustomDialogPreference.java"

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
    .line 99
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/keniu/security/util/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    sget-object v0, Lcom/android/internal/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->p:Ljava/lang/CharSequence;

    .line 77
    iget-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->p:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/keniu/security/util/CustomDialogPreference;->w()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->p:Ljava/lang/CharSequence;

    .line 82
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->q:Ljava/lang/CharSequence;

    .line 84
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->r:Landroid/graphics/drawable/Drawable;

    .line 86
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->s:Ljava/lang/CharSequence;

    .line 88
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->t:Ljava/lang/CharSequence;

    .line 90
    const/4 v1, 0x5

    iget v2, p0, Lcom/keniu/security/util/CustomDialogPreference;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->u:I

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/keniu/security/util/CustomDialogPreference;->c(I)V

    .line 96
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/keniu/security/util/CustomDialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->q:Ljava/lang/CharSequence;

    .line 152
    return-void
.end method

.method private static a(Landroid/app/Dialog;)V
    .locals 2
    .parameter

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 349
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 351
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/keniu/security/util/CustomDialogPreference;->r:Landroid/graphics/drawable/Drawable;

    .line 171
    return-void
.end method

.method private b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->p:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 380
    const v1, 0x102000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 383
    if-eqz v1, :cond_1

    .line 384
    iget-object v2, p0, Lcom/keniu/security/util/CustomDialogPreference;->q:Ljava/lang/CharSequence;

    .line 385
    const/16 v3, 0x8

    .line 387
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 388
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 389
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object p0, v0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_0
    const/4 v2, 0x0

    .line 395
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 396
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 399
    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/keniu/security/util/CustomDialogPreference;->D()Landroid/content/Context;

    move-result-object v1

    .line 301
    const/4 v2, -0x2

    iput v2, p0, Lcom/keniu/security/util/CustomDialogPreference;->w:I

    .line 303
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, v1, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    iget-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->p:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/util/CustomDialogPreference;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/graphics/drawable/Drawable;)Lcom/keniu/security/util/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/util/CustomDialogPreference;->s:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, p0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/util/CustomDialogPreference;->t:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, p0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->o:Lcom/keniu/security/util/aq;

    .line 308
    invoke-virtual {p0}, Lcom/keniu/security/util/CustomDialogPreference;->J_()Landroid/view/View;

    move-result-object v3

    .line 309
    if-eqz v3, :cond_4

    .line 310
    const v1, 0x102000b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/keniu/security/util/CustomDialogPreference;->q:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move v1, v6

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->o:Lcom/keniu/security/util/aq;

    invoke-virtual {v1, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 316
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->o:Lcom/keniu/security/util/aq;

    .line 321
    iget-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->o:Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->v:Landroid/app/Dialog;

    .line 322
    if-eqz p1, :cond_3

    .line 323
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 325
    :cond_3
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 329
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 330
    return-void

    .line 313
    :cond_4
    iget-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->o:Lcom/keniu/security/util/aq;

    iget-object v2, p0, Lcom/keniu/security/util/CustomDialogPreference;->q:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    goto :goto_0
.end method

.method private e(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/keniu/security/util/CustomDialogPreference;->s:Ljava/lang/CharSequence;

    .line 202
    return-void
.end method

.method private f(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/keniu/security/util/CustomDialogPreference;->t:Ljava/lang/CharSequence;

    .line 232
    return-void
.end method

.method private g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private g(I)V
    .locals 1
    .parameter

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/keniu/security/util/CustomDialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->r:Landroid/graphics/drawable/Drawable;

    .line 182
    return-void
.end method

.method private h()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->r:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private h(I)V
    .locals 1
    .parameter

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/keniu/security/util/CustomDialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->t:Ljava/lang/CharSequence;

    .line 241
    return-void
.end method

.method private i()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->s:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private j()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->t:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private l()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->u:I

    return v0
.end method

.method private static m()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method private static n()Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method private o()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->v:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected J_()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    iget v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->u:I

    if-nez v0, :cond_0

    move-object v0, v2

    .line 368
    :goto_0
    return-object v0

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/util/CustomDialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 368
    iget v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected final K_()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/keniu/security/util/CustomDialogPreference;->e(Landroid/os/Bundle;)V

    .line 288
    return-void
.end method

.method protected final a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 464
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/keniu/security/util/CustomDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    :cond_0
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/Preference;->a(Landroid/os/Parcelable;)V

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    check-cast p1, Lcom/keniu/security/util/CustomDialogPreference$SavedState;

    .line 471
    invoke-virtual {p1}, Lcom/keniu/security/util/CustomDialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/os/Parcelable;)V

    .line 472
    iget-boolean v0, p1, Lcom/keniu/security/util/CustomDialogPreference$SavedState;->a:Z

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p1, Lcom/keniu/security/util/CustomDialogPreference$SavedState;->b:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/keniu/security/util/CustomDialogPreference;->e(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 425
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput p1, p0, Lcom/keniu/security/util/CustomDialogPreference;->u:I

    .line 263
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/keniu/security/util/CustomDialogPreference;->p:Ljava/lang/CharSequence;

    .line 110
    return-void
.end method

.method protected final d()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 451
    invoke-super {p0}, Lcom/ijinshan/kpref/Preference;->d()Landroid/os/Parcelable;

    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->v:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/keniu/security/util/CustomDialogPreference;->v:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-object v0

    .line 456
    :cond_1
    new-instance v1, Lcom/keniu/security/util/CustomDialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/keniu/security/util/CustomDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/keniu/security/util/CustomDialogPreference$SavedState;->a:Z

    .line 458
    iget-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/keniu/security/util/CustomDialogPreference$SavedState;->b:Landroid/os/Bundle;

    move-object v0, v1

    .line 459
    goto :goto_0
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/keniu/security/util/CustomDialogPreference;->q:Ljava/lang/CharSequence;

    .line 143
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/keniu/security/util/CustomDialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b039a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->p:Ljava/lang/CharSequence;

    .line 119
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/keniu/security/util/CustomDialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0682

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->s:Ljava/lang/CharSequence;

    .line 211
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    iput p2, p0, Lcom/keniu/security/util/CustomDialogPreference;->w:I

    .line 404
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->v:Landroid/app/Dialog;

    .line 412
    iget v0, p0, Lcom/keniu/security/util/CustomDialogPreference;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/keniu/security/util/CustomDialogPreference;->a(Z)V

    .line 413
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
