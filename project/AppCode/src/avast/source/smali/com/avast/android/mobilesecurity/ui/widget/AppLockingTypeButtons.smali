.class public Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "AppLockingTypeButtons.java"


# instance fields
.field private a:Z

.field private b:Lcom/avast/android/mobilesecurity/ui/widget/b;

.field private c:Landroid/widget/ImageView;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/widget/ToggleButton;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f010072

    .line 82
    invoke-direct {p0, p1, p2, v2}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->q:Z

    .line 84
    sget-object v0, Lcom/avast/android/mobilesecurity/v;->g:[I

    const v1, 0x7f0d0084

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->q:Z

    .line 77
    sget-object v0, Lcom/avast/android/mobilesecurity/v;->g:[I

    const v1, 0x7f0d0084

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 79
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->a:Z

    .line 90
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->a:Z

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->o:Z

    .line 91
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->p:Z

    .line 156
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    const-string v1, "lock_enabled"

    invoke-interface {v0, v1, p1}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;Z)Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->b:Lcom/avast/android/mobilesecurity/ui/widget/b;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->b:Lcom/avast/android/mobilesecurity/ui/widget/b;

    invoke-interface {v0, p0, p1}, Lcom/avast/android/mobilesecurity/ui/widget/b;->a(Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;Z)V

    .line 164
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;)Lcom/avast/android/generic/d/d;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->c()Lcom/avast/android/generic/d/d;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->n:Landroid/widget/ToggleButton;

    const v1, 0x7f020176

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->invalidate()V

    .line 290
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->n:Landroid/widget/ToggleButton;

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private c()Lcom/avast/android/generic/d/d;
    .locals 2

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v1

    instance-of v1, v1, Lcom/avast/android/generic/d/d;

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/d/d;

    .line 202
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;)Lcom/avast/android/generic/d/f;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->d()Lcom/avast/android/generic/d/f;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/avast/android/generic/d/f;
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v1

    instance-of v1, v1, Lcom/avast/android/generic/d/f;

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/d/f;

    .line 210
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->q:Z

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->q:Z

    .line 102
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->l:I

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->l:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    :goto_1
    const v0, 0x7f020171

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->setBackgroundResource(I)V

    .line 109
    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->setClickable(Z)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->setFocusable(Z)V

    .line 112
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->c:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->c:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 114
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :goto_2
    const v0, 0x7f0701c0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->n:Landroid/widget/ToggleButton;

    .line 122
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->n:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/avast/android/mobilesecurity/ui/widget/a;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/a;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030093

    invoke-static {v0, v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->c()Lcom/avast/android/generic/d/d;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1}, Lcom/avast/android/generic/d/d;->b()V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v2

    const-string v3, "lock_enabled"

    iget-boolean v4, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->o:Z

    invoke-interface {v2, v3, v4}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->p:Z

    .line 187
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v2

    const-string v3, "custom_settings"

    invoke-interface {v2, v3}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->b(Z)V

    .line 190
    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v1}, Lcom/avast/android/generic/d/d;->c()V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->n:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->p:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 195
    return-void

    .line 187
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/AppLockingTypeButtons;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 222
    return-void
.end method
