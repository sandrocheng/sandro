.class public Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "ReportFrequencyRow.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f010076

    .line 38
    invoke-direct {p0, p1, p2, v2}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object v0, Lcom/avast/android/mobilesecurity/v;->g:[I

    const v1, 0x7f0d00a1

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    sget-object v0, Lcom/avast/android/mobilesecurity/v;->g:[I

    const v1, 0x7f0d00a1

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 35
    return-void
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0018

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->d(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 78
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->B()I

    move-result v0

    .line 79
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->a(I)V

    .line 80
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03009f

    invoke-static {v0, v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/widget/o;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/ui/widget/o;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->a(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->c()V

    .line 62
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    const v1, 0x7f07002d

    invoke-virtual {v0, v1, p0}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 64
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->c()V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
