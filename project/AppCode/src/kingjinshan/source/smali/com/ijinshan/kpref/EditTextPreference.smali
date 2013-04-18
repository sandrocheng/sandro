.class public Lcom/ijinshan/kpref/EditTextPreference;
.super Lcom/ijinshan/kpref/DialogPreference;
.source "EditTextPreference.java"


# instance fields
.field private o:Landroid/widget/EditText;

.field private p:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kpref/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/ijinshan/kpref/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/ijinshan/kpref/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/ijinshan/kpref/EditTextPreference;->o:Landroid/widget/EditText;

    .line 61
    iget-object v0, p0, Lcom/ijinshan/kpref/EditTextPreference;->o:Landroid/widget/EditText;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 69
    iget-object v0, p0, Lcom/ijinshan/kpref/EditTextPreference;->o:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 70
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    const v0, 0x7f080272

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 131
    if-eqz p0, :cond_0

    .line 132
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 135
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/ijinshan/kpref/EditTextPreference;->c()Z

    move-result v0

    .line 88
    iput-object p1, p0, Lcom/ijinshan/kpref/EditTextPreference;->p:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Lcom/ijinshan/kpref/EditTextPreference;->f(Ljava/lang/String;)Z

    .line 92
    invoke-virtual {p0}, Lcom/ijinshan/kpref/EditTextPreference;->c()Z

    move-result v1

    .line 93
    if-eq v1, v0, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Lcom/ijinshan/kpref/EditTextPreference;->d(Z)V

    .line 96
    :cond_0
    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ijinshan/kpref/EditTextPreference;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 195
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ijinshan/kpref/EditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/DialogPreference;->a(Landroid/os/Parcelable;)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_1
    check-cast p1, Lcom/ijinshan/kpref/EditTextPreference$SavedState;

    .line 202
    invoke-virtual {p1}, Lcom/ijinshan/kpref/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/ijinshan/kpref/DialogPreference;->a(Landroid/os/Parcelable;)V

    .line 203
    iget-object v0, p1, Lcom/ijinshan/kpref/EditTextPreference$SavedState;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/EditTextPreference;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/DialogPreference;->a(Z)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/ijinshan/kpref/EditTextPreference;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/EditTextPreference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/EditTextPreference;->b(Ljava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method

.method protected final a(ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/EditTextPreference;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/EditTextPreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/EditTextPreference;->b(Ljava/lang/String;)V

    .line 157
    return-void

    .line 156
    :cond_0
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method protected final b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/DialogPreference;->b(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/ijinshan/kpref/EditTextPreference;->o:Landroid/widget/EditText;

    .line 112
    iget-object v1, p0, Lcom/ijinshan/kpref/EditTextPreference;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 115
    if-eq p0, p1, :cond_1

    .line 116
    if-eqz p0, :cond_0

    .line 117
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    :cond_0
    const v1, 0x7f080272

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 121
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ijinshan/kpref/EditTextPreference;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/ijinshan/kpref/DialogPreference;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/ijinshan/kpref/DialogPreference;->d()Landroid/os/Parcelable;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Lcom/ijinshan/kpref/EditTextPreference;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    :goto_0
    return-object v0

    .line 188
    :cond_0
    new-instance v1, Lcom/ijinshan/kpref/EditTextPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/ijinshan/kpref/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 189
    iget-object v0, p0, Lcom/ijinshan/kpref/EditTextPreference;->p:Ljava/lang/String;

    iput-object v0, v1, Lcom/ijinshan/kpref/EditTextPreference$SavedState;->a:Ljava/lang/String;

    move-object v0, v1

    .line 190
    goto :goto_0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public final l()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ijinshan/kpref/EditTextPreference;->o:Landroid/widget/EditText;

    return-object v0
.end method
