.class public Lcom/avast/android/generic/ui/widget/Row;
.super Landroid/widget/LinearLayout;
.source "Row.java"


# instance fields
.field private final a:I

.field private b:Lcom/avast/android/generic/d/e;

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Landroid/view/View;

.field protected i:Landroid/view/View$OnClickListener;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/TextView;

.field protected l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/ui/widget/Row;->a:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/ui/widget/Row;->a:I

    .line 77
    sget v0, Lcom/avast/android/generic/p;->c:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/ui/widget/Row;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/ui/widget/Row;->a:I

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/Row;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->k:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/generic/ui/widget/Row;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 220
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/aa;->b:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->g:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->d:Ljava/lang/String;

    .line 94
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/ui/widget/Row;->e:I

    .line 96
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->f:Ljava/lang/String;

    .line 101
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 102
    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/Row;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->h:Landroid/view/View;

    .line 106
    :cond_2
    const/16 v0, 0xc

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/ui/widget/Row;->l:I

    .line 108
    const/4 v0, 0x6

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/Row;->setBackgroundResource(I)V

    .line 109
    const/4 v0, 0x7

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/Row;->setClickable(Z)V

    .line 110
    const/16 v0, 0x8

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/Row;->setFocusable(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/Row;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    new-instance v0, Lcom/avast/android/generic/d/b;

    invoke-direct {v0}, Lcom/avast/android/generic/d/b;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->b:Lcom/avast/android/generic/d/e;

    .line 131
    :goto_0
    :pswitch_0
    return-void

    .line 117
    :cond_3
    const/16 v0, 0xb

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 118
    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "this dao index is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_1
    new-instance v0, Lcom/avast/android/generic/d/c;

    invoke-direct {v0, p1}, Lcom/avast/android/generic/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->b:Lcom/avast/android/generic/d/e;

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/text/Spanned;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->f:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    :cond_0
    :goto_1
    return-void

    .line 284
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/Row;->i:Landroid/view/View$OnClickListener;

    .line 184
    return-void
.end method

.method public a(Lcom/avast/android/generic/d/e;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/Row;->b:Lcom/avast/android/generic/d/e;

    .line 204
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/Row;->b()V

    .line 205
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/Row;->d:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/Row;->f:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()Lcom/avast/android/generic/d/e;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->b:Lcom/avast/android/generic/d/e;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 140
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/Row;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/Row;->b()V

    .line 143
    :cond_0
    return-void
.end method

.method protected final onFinishInflate()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 154
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/Row;->a()V

    .line 156
    sget v0, Lcom/avast/android/generic/t;->aZ:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/Row;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->j:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/Row;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget v0, p0, Lcom/avast/android/generic/ui/widget/Row;->e:I

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/Row;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/avast/android/generic/ui/widget/Row;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 163
    :cond_0
    sget v0, Lcom/avast/android/generic/t;->aR:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/Row;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/Row;->setEnabled(Z)V

    .line 175
    :cond_2
    return-void

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/Row;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->i:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->i:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 196
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 237
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 238
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 239
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/Row;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 245
    :cond_1
    return-void
.end method
