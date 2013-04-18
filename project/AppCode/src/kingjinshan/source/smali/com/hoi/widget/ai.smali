.class public final Lcom/hoi/widget/ai;
.super Lcom/ijinshan/kpref/Preference;
.source "SeekBarPreference.java"


# instance fields
.field private final o:Landroid/content/SharedPreferences;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;)V

    .line 26
    const/16 v0, 0x64

    iput v0, p0, Lcom/hoi/widget/ai;->r:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/hoi/widget/ai;->s:I

    .line 31
    invoke-virtual {p0}, Lcom/hoi/widget/ai;->t()V

    .line 32
    invoke-static {p1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/hoi/widget/ai;->o:Landroid/content/SharedPreferences;

    .line 33
    return-void
.end method

.method private a(I)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/hoi/widget/ai;->s:I

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic a(Lcom/hoi/widget/ai;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/hoi/widget/ai;->s:I

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic a(Lcom/hoi/widget/ai;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hoi/widget/ai;->o:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/hoi/widget/ai;->p:Ljava/lang/String;

    .line 92
    iput p2, p0, Lcom/hoi/widget/ai;->r:I

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/hoi/widget/ai;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/hoi/widget/ai;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/hoi/widget/ai;->q:Ljava/lang/String;

    .line 97
    iput p2, p0, Lcom/hoi/widget/ai;->s:I

    .line 98
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/Preference;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lcom/hoi/widget/ai;->A()Ljava/lang/String;

    move-result-object v3

    .line 39
    const v0, 0x7f080335

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 40
    iget-object v1, p0, Lcom/hoi/widget/ai;->q:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 41
    const v1, 0x7f080338

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 43
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f080339

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    iget-object v4, p0, Lcom/hoi/widget/ai;->q:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/hoi/widget/ai;->p:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 48
    const v1, 0x7f080336

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 50
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f080337

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    iget-object v4, p0, Lcom/hoi/widget/ai;->p:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/hoi/widget/ai;->o:Landroid/content/SharedPreferences;

    const/16 v4, 0x55

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 56
    iget v4, p0, Lcom/hoi/widget/ai;->r:I

    iget v5, p0, Lcom/hoi/widget/ai;->s:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hoi/widget/ai;->b(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/hoi/widget/aj;

    invoke-direct {v1, p0, v3}, Lcom/hoi/widget/aj;-><init>(Lcom/hoi/widget/ai;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    return-object v2
.end method
