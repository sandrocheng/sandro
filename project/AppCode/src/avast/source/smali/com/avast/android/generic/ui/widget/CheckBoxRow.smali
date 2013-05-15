.class public Lcom/avast/android/generic/ui/widget/CheckBoxRow;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "CheckBoxRow.java"


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Z

.field private c:Lcom/avast/android/generic/ui/widget/c;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 28
    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->m:Z

    .line 29
    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->n:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    sget v0, Lcom/avast/android/generic/p;->c:I

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v1, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->m:Z

    .line 29
    iput-boolean v1, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->n:Z

    .line 63
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/p;->c:I

    sget v2, Lcom/avast/android/generic/aa;->b:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->m:Z

    .line 29
    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->n:Z

    .line 50
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/aa;->b:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)Lcom/avast/android/generic/ui/widget/c;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c:Lcom/avast/android/generic/ui/widget/c;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->E:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    sget v1, Lcom/avast/android/generic/t;->Z:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    .line 85
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    .line 87
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    new-instance v0, Lcom/avast/android/generic/ui/widget/a;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/ui/widget/a;-><init>(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/avast/android/generic/ui/widget/b;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/widget/b;-><init>(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b:Z

    .line 74
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void
.end method

.method public a(Lcom/avast/android/generic/ui/widget/c;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c:Lcom/avast/android/generic/ui/widget/c;

    .line 139
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b:Z

    .line 174
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->m:Z

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->g:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b:Z

    invoke-interface {v1, v2, v3}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iput-boolean v4, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->m:Z

    .line 131
    :cond_0
    return-void

    .line 128
    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->m:Z

    throw v0
.end method

.method public b(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;Z)Z

    .line 193
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->n:Z

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iput-boolean v2, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->n:Z

    .line 200
    :cond_1
    return-void

    .line 197
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->n:Z

    throw v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 213
    instance-of v0, p1, Lcom/avast/android/generic/ui/widget/CheckBoxRow$SavedState;

    if-nez v0, :cond_0

    .line 214
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 228
    :goto_0
    return-void

    .line 218
    :cond_0
    check-cast p1, Lcom/avast/android/generic/ui/widget/CheckBoxRow$SavedState;

    .line 219
    invoke-virtual {p1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/avast/android/generic/ui/widget/Row;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->m:Z

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    iget-boolean v1, p1, Lcom/avast/android/generic/ui/widget/CheckBoxRow$SavedState;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iput-boolean v2, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->m:Z

    .line 227
    iget-boolean v0, p1, Lcom/avast/android/generic/ui/widget/CheckBoxRow$SavedState;->b:Z

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->m:Z

    throw v0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Lcom/avast/android/generic/ui/widget/Row;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/avast/android/generic/ui/widget/CheckBoxRow$SavedState;

    invoke-direct {v1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 206
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/avast/android/generic/ui/widget/CheckBoxRow$SavedState;->a:Z

    .line 207
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->isEnabled()Z

    move-result v0

    iput-boolean v0, v1, Lcom/avast/android/generic/ui/widget/CheckBoxRow$SavedState;->b:Z

    .line 208
    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setEnabled(Z)V

    .line 156
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setFocusable(Z)V

    .line 157
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setClickable(Z)V

    .line 159
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 160
    return-void
.end method
