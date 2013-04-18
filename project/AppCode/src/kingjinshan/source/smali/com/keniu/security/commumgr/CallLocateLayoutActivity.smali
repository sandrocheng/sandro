.class public Lcom/keniu/security/commumgr/CallLocateLayoutActivity;
.super Landroid/app/Activity;
.source "CallLocateLayoutActivity.java"


# instance fields
.field private a:Lcom/keniu/security/commumgr/c;

.field private b:F

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 127
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/a;->a(II)V

    .line 133
    return-void
.end method

.method private static a(Landroid/widget/TextView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 88
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 91
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    const v0, 0x7f020010

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    const v0, 0x7f02000f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    const v0, 0x7f02000c

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 106
    :pswitch_3
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    const v0, 0x7f02000d

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 111
    :pswitch_4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    const v0, 0x7f02000e

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 22
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/a;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->requestWindowFeature(I)Z

    .line 36
    const v0, 0x7f0300b6

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f080262

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->c:Landroid/view/View;

    .line 39
    const v0, 0x7f0802a1

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->d:Landroid/view/View;

    .line 40
    const v0, 0x7f0802a2

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->e:Landroid/view/View;

    .line 41
    const v0, 0x7f0802a3

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    const v1, 0x7f0802a4

    invoke-virtual {p0, v1}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 43
    new-instance v2, Lcom/keniu/security/commumgr/a;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/a;-><init>(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance v0, Lcom/keniu/security/commumgr/b;

    invoke-direct {v0, p0}, Lcom/keniu/security/commumgr/b;-><init>(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 64
    iget-object v0, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 65
    invoke-static {}, Lcom/keniu/security/e;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "KINGSOFT"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/keniu/security/a;->am()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 70
    :goto_0
    new-instance v0, Lcom/keniu/security/commumgr/c;

    invoke-direct {v0, p0}, Lcom/keniu/security/commumgr/c;-><init>(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)V

    iput-object v0, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->a:Lcom/keniu/security/commumgr/c;

    .line 71
    iget-object v0, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->a:Lcom/keniu/security/commumgr/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 74
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 75
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 76
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->b:F

    .line 78
    invoke-virtual {v1, v2}, Lcom/keniu/security/a;->a(Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 79
    invoke-virtual {v1, v2}, Lcom/keniu/security/a;->b(Landroid/util/DisplayMetrics;)I

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->c:Landroid/view/View;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    return-void

    .line 68
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f020010

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f02000f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f02000c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_3
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f02000d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f02000e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
