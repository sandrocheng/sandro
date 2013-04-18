.class public Lcom/ijinshan/kpref/CheckBoxPreference;
.super Lcom/ijinshan/kpref/Preference;
.source "CheckBoxPreference.java"


# instance fields
.field private o:Ljava/lang/CharSequence;

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field private r:Z

.field private s:Landroid/view/accessibility/AccessibilityManager;

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kpref/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/ijinshan/kpref/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->o:Ljava/lang/CharSequence;

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->p:Ljava/lang/CharSequence;

    .line 61
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->t:Z

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->D()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->s:Landroid/view/accessibility/AccessibilityManager;

    .line 67
    return-void
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->o:Ljava/lang/CharSequence;

    .line 182
    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->G()V

    .line 185
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->p:Ljava/lang/CharSequence;

    .line 210
    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->G()V

    .line 213
    :cond_0
    return-void
.end method

.method private e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->p:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->t:Z

    .line 250
    return-void
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->t:Z

    return v0
.end method


# virtual methods
.method protected final K_()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    invoke-super {p0}, Lcom/ijinshan/kpref/Preference;->K_()V

    .line 133
    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 137
    :goto_0
    iput-boolean v1, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->r:Z

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    :goto_1
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_1
.end method

.method protected final a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->o:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->G()V

    .line 193
    :cond_0
    return-void
.end method

.method protected final a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 278
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ijinshan/kpref/CheckBoxPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :cond_0
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/Preference;->a(Landroid/os/Parcelable;)V

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_1
    check-cast p1, Lcom/ijinshan/kpref/CheckBoxPreference$SavedState;

    .line 285
    invoke-virtual {p1}, Lcom/ijinshan/kpref/CheckBoxPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/os/Parcelable;)V

    .line 286
    iget-boolean v0, p1, Lcom/ijinshan/kpref/CheckBoxPreference$SavedState;->a:Z

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/Preference;->a(Landroid/view/View;)V

    .line 81
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    instance-of v1, v2, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 83
    move-object v0, v2

    check-cast v0, Landroid/widget/Checkable;

    move-object v1, v0

    iget-boolean v3, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    invoke-interface {v1, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 88
    iget-boolean v1, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->s:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iput-boolean v4, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->r:Z

    .line 93
    invoke-static {v5}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 99
    :cond_0
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    if-eqz v1, :cond_2

    .line 102
    iget-boolean v2, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->o:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 103
    iget-object v2, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->o:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v4

    .line 110
    :goto_0
    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->p()Ljava/lang/CharSequence;

    move-result-object v3

    .line 112
    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v4

    .line 118
    :cond_1
    const/16 v3, 0x8

    .line 119
    if-nez v2, :cond_4

    move v2, v4

    .line 123
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :cond_2
    return-void

    .line 105
    :cond_3
    iget-boolean v2, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->p:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    .line 106
    iget-object v2, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->p:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v4

    .line 107
    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v5

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    if-eq v0, p1, :cond_0

    .line 153
    iput-boolean p1, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    .line 154
    invoke-virtual {p0, p1}, Lcom/ijinshan/kpref/CheckBoxPreference;->e(Z)Z

    .line 155
    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->d(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->G()V

    .line 158
    :cond_0
    return-void
.end method

.method protected final a(ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 259
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->f(Z)Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 261
    return-void

    .line 259
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->p:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->G()V

    .line 221
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    return v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    .line 172
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/ijinshan/kpref/Preference;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    return v0

    .line 171
    :cond_1
    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 172
    goto :goto_1
.end method

.method protected final d()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Lcom/ijinshan/kpref/Preference;->d()Landroid/os/Parcelable;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    :goto_0
    return-object v0

    .line 271
    :cond_0
    new-instance v1, Lcom/ijinshan/kpref/CheckBoxPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/ijinshan/kpref/CheckBoxPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 272
    iget-boolean v0, p0, Lcom/ijinshan/kpref/CheckBoxPreference;->q:Z

    iput-boolean v0, v1, Lcom/ijinshan/kpref/CheckBoxPreference$SavedState;->a:Z

    move-object v0, v1

    .line 273
    goto :goto_0
.end method
