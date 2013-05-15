.class public Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "LanguageSelectorRow.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field a:[Ljava/lang/CharSequence;

.field b:[Ljava/lang/CharSequence;

.field c:Ljava/lang/String;

.field private m:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 53
    sget v0, Lcom/avast/android/generic/p;->a:I

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/p;->a:I

    sget v2, Lcom/avast/android/generic/aa;->c:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/aa;->c:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 50
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->by:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/avast/android/generic/ae;

    invoke-static {v0, v3}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->q()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, v1

    move v1, v2

    .line 96
    :goto_0
    iget-object v4, p0, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->a:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 97
    iget-object v4, p0, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->a:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->b:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 106
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 107
    const/high16 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 109
    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v4

    const-string v5, "ms-settings"

    const-string v6, "changeLanguage"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move-object v0, v3

    :goto_1
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v5, v6, v0, v3}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/avast/android/generic/z;->cv:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->d(Ljava/lang/String;)V

    .line 116
    return-void

    .line 110
    :cond_4
    const-string v0, "default"

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->n:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/o;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->a:[Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/o;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->b:[Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->c:Ljava/lang/String;

    .line 70
    sget v0, Lcom/avast/android/generic/t;->ac:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->m:Landroid/widget/ImageView;

    .line 72
    new-instance v0, Lcom/avast/android/generic/ui/widget/h;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/ui/widget/h;-><init>(Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->a(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->c()V

    .line 83
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    sget v1, Lcom/avast/android/generic/t;->am:I

    invoke-virtual {v0, v1, p0}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 84
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->c()V

    .line 89
    const/4 v0, 0x1

    return v0
.end method
