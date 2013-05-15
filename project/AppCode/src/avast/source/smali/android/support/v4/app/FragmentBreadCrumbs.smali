.class public Landroid/support/v4/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# static fields
.field private static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field private static final MEASURED_STATE_MASK:I = -0x1000000

.field private static final MEASURED_STATE_TOO_SMALL:I = 0x1000000


# instance fields
.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field mContainer:Landroid/widget/LinearLayout;

.field mInflater:Landroid/view/LayoutInflater;

.field mLastEntry:Landroid/support/v4/app/BackStackRecord;

.field mLastEntryListener:Landroid/view/View$OnClickListener;

.field mMaxVisible:I

.field private mOnBreadCrumbClickListener:Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field mParentEntry:Landroid/support/v4/app/BackStackRecord;

.field private mParentWidth:I

.field mTopEntry:Landroid/support/v4/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 128
    sget v0, Lcom/avast/android/generic/aa;->e:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    iput v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 104
    iput v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentWidth:I

    .line 432
    new-instance v0, Landroid/support/v4/app/FragmentBreadCrumbs$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentBreadCrumbs$1;-><init>(Landroid/support/v4/app/FragmentBreadCrumbs;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 133
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object v0
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    or-int v0, p0, p1

    return v0
.end method

.method private createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/BackStackRecord;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    .line 208
    :cond_0
    new-instance v1, Landroid/support/v4/app/BackStackRecord;

    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v1, v0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    .line 210
    invoke-virtual {v1, p1}, Landroid/support/v4/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;

    .line 211
    invoke-virtual {v1, p2}, Landroid/support/v4/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;

    move-object v0, v1

    .line 212
    goto :goto_0
.end method

.method private static final getMeasuredState(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method private getPostEntryCount()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mLastEntry:Landroid/support/v4/app/BackStackRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getPreEntry(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentEntry:Landroid/support/v4/app/BackStackRecord;

    if-eqz v0, :cond_1

    .line 366
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentEntry:Landroid/support/v4/app/BackStackRecord;

    .line 368
    :goto_0
    return-object v0

    .line 366
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackRecord;

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackRecord;

    goto :goto_0
.end method

.method private getPreEntryCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackRecord;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentEntry:Landroid/support/v4/app/BackStackRecord;

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static resolveSizeAndState(III)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    .line 68
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 70
    sparse-switch v1, :sswitch_data_0

    .line 85
    :cond_0
    :goto_0
    :sswitch_0
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    or-int/2addr v0, p0

    return v0

    .line 75
    :sswitch_1
    if-ge v0, p0, :cond_0

    .line 76
    const/high16 v1, 0x100

    or-int p0, v0, v1

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 82
    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 139
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentBreadCrumbs;->setActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 144
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentBreadCrumbs can be used only in FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 341
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingLeft()I

    move-result v1

    .line 258
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingRight()I

    move-result v2

    .line 259
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingTop()I

    move-result v3

    .line 260
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingBottom()I

    move-result v4

    .line 261
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v5

    .line 262
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 263
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 265
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    sub-int/2addr v7, v2

    .line 266
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v3

    sub-int/2addr v8, v4

    .line 267
    invoke-virtual {v6, v1, v3, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    iget v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentWidth:I

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 271
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentWidth:I

    .line 276
    :cond_1
    iget v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentWidth:I

    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 277
    const-string v0, "TOO BIG"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->e(Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 279
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 280
    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mLastEntry:Landroid/support/v4/app/BackStackRecord;

    if-eq v2, v3, :cond_4

    .line 282
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 292
    :cond_3
    return-void

    .line 279
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v4

    .line 298
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingLeft()I

    move-result v5

    .line 299
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingRight()I

    move-result v6

    .line 300
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingTop()I

    move-result v7

    .line 301
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPaddingBottom()I

    move-result v8

    move v3, v0

    move v1, v0

    move v2, v0

    .line 308
    :goto_0
    if-ge v3, v4, :cond_1

    .line 309
    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 310
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 311
    invoke-virtual {p0, v9, p1, p2}, Landroid/support/v4/app/FragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    .line 312
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 313
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 314
    invoke-static {v9}, Landroid/support/v4/app/FragmentBreadCrumbs;->getMeasuredState(Landroid/view/View;)I

    move-result v9

    invoke-static {v0, v9}, Landroid/support/v4/app/FragmentBreadCrumbs;->combineMeasuredStates(II)I

    move-result v0

    .line 308
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    :cond_1
    add-int v3, v5, v6

    add-int/2addr v1, v3

    .line 321
    add-int v3, v7, v8

    add-int/2addr v2, v3

    .line 324
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 325
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 327
    invoke-static {v1, p1, v0}, Landroid/support/v4/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v0, v0, 0x10

    invoke-static {v2, p2, v0}, Landroid/support/v4/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/FragmentBreadCrumbs;->setMeasuredDimension(II)V

    .line 336
    return-void
.end method

.method public setActivity(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 153
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 154
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    .line 155
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/avast/android/generic/v;->D:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 157
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentBreadCrumbs;->addView(Landroid/view/View;)V

    .line 158
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 159
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 161
    :cond_0
    return-void
.end method

.method public setLastTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/FragmentBreadCrumbs;->setLastTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method

.method public setLastTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mLastEntry:Landroid/support/v4/app/BackStackRecord;

    .line 236
    iput-object p3, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mLastEntryListener:Landroid/view/View$OnClickListener;

    .line 237
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 238
    return-void
.end method

.method public setMaxVisible(I)V
    .locals 2
    .parameter

    .prologue
    .line 171
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "visibleCrumbs must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iput p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 175
    return-void
.end method

.method public setOnBreadCrumbClickListener(Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 202
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentEntry:Landroid/support/v4/app/BackStackRecord;

    .line 190
    iput-object p3, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    .line 191
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 192
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackRecord;

    .line 222
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 223
    return-void
.end method

.method updateCrumbs()V
    .locals 15

    .prologue
    const v14, 0x1020016

    const v13, 0x1020006

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    .line 374
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v8

    .line 375
    invoke-direct {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPreEntryCount()I

    move-result v9

    .line 376
    invoke-direct {p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPostEntryCount()I

    move-result v10

    .line 377
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    move v5, v2

    .line 378
    :goto_0
    add-int v4, v8, v9

    add-int/2addr v4, v10

    if-ge v5, v4, :cond_5

    .line 380
    if-ge v5, v9, :cond_0

    .line 381
    invoke-direct {p0, v5}, Landroid/support/v4/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v4

    move-object v6, v4

    .line 388
    :goto_1
    if-ge v5, v0, :cond_d

    .line 389
    iget-object v4, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 390
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 391
    if-eq v4, v6, :cond_d

    move v4, v5

    .line 392
    :goto_2
    if-ge v4, v0, :cond_2

    .line 393
    iget-object v11, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 392
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 382
    :cond_0
    add-int v4, v9, v8

    if-ge v5, v4, :cond_1

    .line 383
    sub-int v4, v5, v9

    invoke-virtual {v7, v4}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v4

    move-object v6, v4

    goto :goto_1

    .line 385
    :cond_1
    iget-object v4, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mLastEntry:Landroid/support/v4/app/BackStackRecord;

    move-object v6, v4

    goto :goto_1

    :cond_2
    move v4, v5

    .line 398
    :goto_3
    if-lt v5, v4, :cond_4

    .line 399
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    sget v11, Lcom/avast/android/generic/v;->v:I

    invoke-virtual {v0, v11, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 400
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 401
    invoke-interface {v6}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 403
    if-nez v5, :cond_3

    .line 404
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_3
    iget-object v6, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    iget-object v6, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v0, v4

    goto :goto_0

    .line 410
    :cond_5
    add-int v0, v8, v9

    add-int v4, v0, v10

    .line 411
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    move v5, v0

    .line 412
    :goto_4
    if-le v5, v4, :cond_6

    .line 413
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 414
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_4

    :cond_6
    move v4, v2

    .line 417
    :goto_5
    if-ge v4, v5, :cond_c

    .line 418
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 420
    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mLastEntryListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_8

    move v0, v1

    :goto_6
    sub-int v0, v5, v0

    if-ge v4, v0, :cond_9

    move v0, v1

    :goto_7
    invoke-virtual {v7, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 422
    iget v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxVisible:I

    if-lez v0, :cond_7

    .line 424
    iget v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxVisible:I

    sub-int v0, v5, v0

    if-ge v4, v0, :cond_a

    move v0, v3

    :goto_8
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 425
    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 427
    iget v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs;->mMaxVisible:I

    sub-int v0, v5, v0

    if-le v4, v0, :cond_b

    if-eqz v4, :cond_b

    move v0, v2

    :goto_9
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    :cond_8
    move v0, v2

    .line 420
    goto :goto_6

    :cond_9
    move v0, v2

    goto :goto_7

    :cond_a
    move v0, v2

    .line 424
    goto :goto_8

    :cond_b
    move v0, v3

    .line 427
    goto :goto_9

    .line 430
    :cond_c
    return-void

    :cond_d
    move v4, v0

    goto/16 :goto_3
.end method
