.class public Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;
.super Landroid/app/Activity;
.source "TrafficZiFeiSubOperatorSettingActivity.java"


# instance fields
.field private a:Lcom/keniu/security/traffic/y;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Landroid/widget/RadioGroup;

.field private h:Landroid/widget/RadioButton;

.field private i:Landroid/widget/RadioButton;

.field private j:Landroid/widget/RadioButton;

.field private k:Lcom/keniu/security/util/aw;

.field private l:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->e:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/keniu/security/util/aw;

    invoke-direct {v0}, Lcom/keniu/security/util/aw;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->k:Lcom/keniu/security/util/aw;

    .line 83
    new-instance v0, Lcom/keniu/security/traffic/ez;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/ez;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->l:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 97
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->e:Ljava/lang/String;

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->e:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 118
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)Lcom/keniu/security/traffic/y;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a:Lcom/keniu/security/traffic/y;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->h:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->i:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->j:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    invoke-virtual {p0, v5}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03011d

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->setContentView(I)V

    .line 45
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a:Lcom/keniu/security/traffic/y;

    .line 47
    invoke-static {}, Lcn/com/wali/zft/plugin;->getcarries()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->d:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    .line 50
    const v0, 0x7f0803f7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->b:Landroid/widget/Button;

    .line 51
    const v0, 0x7f0803f8

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->c:Landroid/widget/Button;

    .line 52
    const v0, 0x7f0803a4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->g:Landroid/widget/RadioGroup;

    .line 53
    const v0, 0x7f0803a5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->h:Landroid/widget/RadioButton;

    .line 54
    const v0, 0x7f0803a6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->i:Landroid/widget/RadioButton;

    .line 55
    const v0, 0x7f0803a7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->j:Landroid/widget/RadioButton;

    .line 56
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->g:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->l:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/traffic/ex;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ex;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/traffic/ey;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ey;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->e:Ljava/lang/String;

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->e:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->a:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 34
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->k:Lcom/keniu/security/util/aw;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubOperatorSettingActivity;->k:Lcom/keniu/security/util/aw;

    invoke-virtual {v0}, Lcom/keniu/security/util/aw;->a()V

    .line 37
    :cond_0
    return-void
.end method
