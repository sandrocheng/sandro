.class public Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;
.super Landroid/widget/LinearLayout;
.source "WeekDaysDots.java"


# instance fields
.field private a:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->a:[Landroid/widget/ImageView;

    .line 24
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->a:[Landroid/widget/ImageView;

    .line 34
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->a:[Landroid/widget/ImageView;

    .line 29
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->a()V

    .line 30
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300ab

    invoke-static {v0, v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 43
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x7

    if-ge v1, v0, :cond_0

    .line 44
    add-int/lit8 v0, v2, -0x2

    sub-int v0, v1, v0

    rem-int/lit8 v0, v0, 0x7

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "weekDot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->a:[Landroid/widget/ImageView;

    aput-object v0, v3, v1

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 52
    const/4 v1, 0x1

    .line 53
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 54
    and-int v2, p1, v1

    if-lez v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->a:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020159

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    :goto_1
    mul-int/lit8 v1, v1, 0x2

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/WeekDaysDots;->a:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020158

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 61
    :cond_1
    return-void
.end method
