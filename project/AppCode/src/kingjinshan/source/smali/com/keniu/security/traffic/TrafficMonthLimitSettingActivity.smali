.class public Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;
.super Landroid/app/Activity;
.source "TrafficMonthLimitSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/RadioGroup;

.field private h:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 48
    const v0, 0x7f08039c

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->a:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    const v0, 0x7f0803c3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->b:Landroid/widget/EditText;

    .line 52
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->b:Landroid/widget/EditText;

    iget-wide v2, v0, Lcom/keniu/security/traffic/y;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v0, 0x7f0803c5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->c:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0803c7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->d:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0803c6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->e:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0803c4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->f:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->g:Landroid/widget/RadioGroup;

    .line 67
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->f:Landroid/widget/TextView;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->g:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v6}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 70
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->g:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/keniu/security/traffic/bs;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/bs;-><init>(Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 81
    return-void

    .line 53
    :cond_0
    iget-wide v2, v0, Lcom/keniu/security/traffic/y;->d:J

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->h:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4480

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->finish()V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const v0, 0x7f0b02ad

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 97
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    :goto_1
    float-to-long v2, v0

    iput-wide v2, v1, Lcom/keniu/security/traffic/y;->d:J

    .line 102
    const v0, 0x7f0b03c3

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 103
    invoke-static {p0, v5}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 104
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->setResult(I)V

    .line 105
    invoke-static {p0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;)V

    .line 106
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->finish()V

    goto :goto_0

    .line 99
    :cond_1
    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    goto :goto_1

    .line 111
    :pswitch_2
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 112
    const v1, 0x7f030028

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 113
    const v0, 0x7f0800ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->h:Landroid/widget/EditText;

    .line 115
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->h:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/keniu/security/traffic/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 119
    const v2, 0x7f0b02b4

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 120
    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 121
    const v1, 0x7f0b02b6

    new-instance v2, Lcom/keniu/security/traffic/bt;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/bt;-><init>(Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 148
    const v1, 0x7f0b03aa

    invoke-virtual {v0, v1, v5}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 149
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x7f0803c5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->requestWindowFeature(I)Z

    .line 43
    const v0, 0x7f03010b

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f08039c

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0803c3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->b:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->b:Landroid/widget/EditText;

    iget-wide v2, v0, Lcom/keniu/security/traffic/y;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0803c5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803c7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803c6

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803c4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->g:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->f:Landroid/widget/TextView;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->g:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v6}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;->g:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/keniu/security/traffic/bs;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/bs;-><init>(Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 45
    return-void

    .line 44
    :cond_0
    iget-wide v2, v0, Lcom/keniu/security/traffic/y;->d:J

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
