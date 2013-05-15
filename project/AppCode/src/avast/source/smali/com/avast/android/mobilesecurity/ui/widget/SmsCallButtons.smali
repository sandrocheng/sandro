.class public Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "SmsCallButtons.java"


# instance fields
.field private a:Z

.field private b:Lcom/avast/android/mobilesecurity/ui/widget/r;

.field private c:Landroid/widget/ToggleButton;

.field private m:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f010072

    .line 43
    invoke-direct {p0, p1, p2, v2}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object v0, Lcom/avast/android/mobilesecurity/v;->g:[I

    const v1, 0x7f0d0084

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object v0, Lcom/avast/android/mobilesecurity/v;->g:[I

    const v1, 0x7f0d0084

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->g:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->a:Z

    .line 50
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)Lcom/avast/android/mobilesecurity/ui/widget/r;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->b:Lcom/avast/android/mobilesecurity/ui/widget/r;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->m:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300a0

    invoke-static {v0, v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    const v0, 0x7f0701cb

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->c:Landroid/widget/ToggleButton;

    .line 58
    const v0, 0x7f0701cc

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->m:Landroid/widget/ToggleButton;

    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->c:Landroid/widget/ToggleButton;

    const-string v1, "SMS"

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->m:Landroid/widget/ToggleButton;

    const-string v1, "Call"

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->c:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/avast/android/mobilesecurity/ui/widget/p;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/p;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->m:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/avast/android/mobilesecurity/ui/widget/q;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/q;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    return-void
.end method

.method public a(Lcom/avast/android/mobilesecurity/ui/widget/r;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->b:Lcom/avast/android/mobilesecurity/ui/widget/r;

    .line 100
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->c:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->c:Landroid/widget/ToggleButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->m:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 127
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->c:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->a:Z

    invoke-interface {v1, v2, v3}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->m:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->a:Z

    invoke-interface {v1, v2, v3}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 96
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->m:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 116
    return-void
.end method
