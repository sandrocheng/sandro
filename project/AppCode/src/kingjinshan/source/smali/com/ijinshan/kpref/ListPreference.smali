.class public Lcom/ijinshan/kpref/ListPreference;
.super Lcom/ijinshan/kpref/DialogPreference;
.source "ListPreference.java"


# instance fields
.field private o:[Ljava/lang/CharSequence;

.field private p:[Ljava/lang/CharSequence;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kpref/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/ijinshan/kpref/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/ListPreference;->o:[Ljava/lang/CharSequence;

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/ListPreference;->r:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private M()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/ijinshan/kpref/ListPreference;->N()I

    move-result v0

    .line 205
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ijinshan/kpref/ListPreference;->o:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ijinshan/kpref/ListPreference;->o:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private N()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/ListPreference;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/ijinshan/kpref/ListPreference;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/ijinshan/kpref/ListPreference;->s:I

    return p1
.end method

.method private a([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ijinshan/kpref/ListPreference;->o:[Ljava/lang/CharSequence;

    .line 81
    return-void
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/ListPreference;->b(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method private b([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    .line 109
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 298
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ijinshan/kpref/ListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/DialogPreference;->a(Landroid/os/Parcelable;)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_1
    check-cast p1, Lcom/ijinshan/kpref/ListPreference$SavedState;

    .line 305
    invoke-virtual {p1}, Lcom/ijinshan/kpref/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/ijinshan/kpref/DialogPreference;->a(Landroid/os/Parcelable;)V

    .line 306
    iget-object v0, p1, Lcom/ijinshan/kpref/ListPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/ListPreference;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Lcom/keniu/security/util/aq;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/DialogPreference;->a(Lcom/keniu/security/util/aq;)V

    .line 233
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->o:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/ijinshan/kpref/ListPreference;->N()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kpref/ListPreference;->s:I

    .line 239
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->o:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ijinshan/kpref/ListPreference;->s:I

    new-instance v2, Lcom/ijinshan/kpref/h;

    invoke-direct {v2, p0}, Lcom/ijinshan/kpref/h;-><init>(Lcom/ijinshan/kpref/ListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 258
    invoke-virtual {p1, v3, v3}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 259
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/DialogPreference;->a(Ljava/lang/CharSequence;)V

    .line 170
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->r:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->r:Ljava/lang/String;

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/DialogPreference;->a(Z)V

    .line 265
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ijinshan/kpref/ListPreference;->s:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ijinshan/kpref/ListPreference;->s:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/ListPreference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/ListPreference;->b(Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method

.method protected final a(ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/ListPreference;->b(Ljava/lang/String;)V

    .line 281
    return-void

    .line 280
    :cond_0
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/ijinshan/kpref/ListPreference;->q:Ljava/lang/String;

    .line 137
    invoke-virtual {p0, p1}, Lcom/ijinshan/kpref/ListPreference;->f(Ljava/lang/String;)Z

    .line 138
    return-void
.end method

.method public final c(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 215
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 217
    iget-object v1, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :goto_1
    return v0

    .line 216
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected final d()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Lcom/ijinshan/kpref/DialogPreference;->d()Landroid/os/Parcelable;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Lcom/ijinshan/kpref/ListPreference;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    :goto_0
    return-object v0

    .line 291
    :cond_0
    new-instance v1, Lcom/ijinshan/kpref/ListPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/ijinshan/kpref/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 292
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->q:Ljava/lang/String;

    iput-object v0, v1, Lcom/ijinshan/kpref/ListPreference$SavedState;->a:Ljava/lang/String;

    move-object v0, v1

    .line 293
    goto :goto_0
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/ijinshan/kpref/ListPreference;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->o:[Ljava/lang/CharSequence;

    .line 89
    return-void
.end method

.method public final m()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->o:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final n()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/ijinshan/kpref/ListPreference;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    .line 117
    return-void
.end method

.method public final o()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->p:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final p()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/ijinshan/kpref/ListPreference;->N()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/ijinshan/kpref/ListPreference;->o:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ijinshan/kpref/ListPreference;->o:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/ijinshan/kpref/ListPreference;->r:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/ijinshan/kpref/DialogPreference;->p()Ljava/lang/CharSequence;

    move-result-object v0

    .line 154
    :goto_1
    return-object v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/ijinshan/kpref/ListPreference;->r:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference;->q:Ljava/lang/String;

    return-object v0
.end method
