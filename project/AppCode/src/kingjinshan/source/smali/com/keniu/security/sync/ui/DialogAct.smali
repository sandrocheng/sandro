.class public Lcom/keniu/security/sync/ui/DialogAct;
.super Landroid/app/Activity;
.source "DialogAct.java"


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:I

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->b:I

    .line 114
    new-instance v0, Lcom/keniu/security/sync/ui/f;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/f;-><init>(Lcom/keniu/security/sync/ui/DialogAct;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const v7, 0x7f0b03ca

    const v6, 0x7f0b0219

    const/16 v5, 0x8

    .line 51
    const v0, 0x7f080270

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0802e6

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    .line 53
    const v1, 0x7f0802e8

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    .line 54
    const v1, 0x7f0802e0

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    const v2, 0x7f0802e7

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 57
    const v2, 0x7f0802e3

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    const v2, 0x7f0802e2

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    const v2, 0x7f080267

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "dialog_type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/keniu/security/sync/ui/DialogAct;->b:I

    .line 64
    iget v2, p0, Lcom/keniu/security/sync/ui/DialogAct;->b:I

    packed-switch v2, :pswitch_data_0

    .line 90
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/sync/ui/d;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/d;-><init>(Lcom/keniu/security/sync/ui/DialogAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/sync/ui/e;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/e;-><init>(Lcom/keniu/security/sync/ui/DialogAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_0
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v1, 0x7f0b0865

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    const v1, 0x7f0b042e

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :pswitch_1
    const v2, 0x7f0b0841

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v1, 0x7f0b085d

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 78
    :pswitch_2
    const v2, 0x7f0b08a9

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v1, 0x7f0b085f

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 84
    :pswitch_3
    invoke-virtual {p0, v6}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v1, 0x7f0b08f3

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    const v1, 0x7f0b08f4

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    const v1, 0x7f0b08f5

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/DialogAct;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/DialogAct;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b()V
    .locals 5

    .prologue
    .line 171
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 172
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 174
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 175
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 177
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 178
    const/16 v4, 0xf0

    if-le v2, v4, :cond_0

    const/16 v4, 0x140

    if-gt v0, v4, :cond_1

    .line 179
    :cond_0
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 183
    :goto_0
    const/16 v0, 0x11

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 184
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 185
    return-void

    .line 181
    :cond_1
    const/high16 v0, 0x4396

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f0b03ca

    const v8, 0x7f0b0219

    const/high16 v2, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 40
    const v0, 0x7f0300c0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/DialogAct;->setContentView(I)V

    .line 42
    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v2, 0x101005d

    invoke-virtual {p0, v0, v1, v2, v7}, Lcom/keniu/security/sync/ui/DialogAct;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 44
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/16 v5, 0xf0

    if-le v3, v5, :cond_0

    const/16 v5, 0x140

    if-gt v0, v5, :cond_2

    :cond_0
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    const/16 v0, 0x11

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 45
    const v0, 0x7f080270

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802e6

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    const v1, 0x7f0802e8

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    const v1, 0x7f0802e0

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0802e7

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0802e3

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0802e2

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f080267

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dialog_type"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/keniu/security/sync/ui/DialogAct;->b:I

    iget v3, p0, Lcom/keniu/security/sync/ui/DialogAct;->b:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/sync/ui/d;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/d;-><init>(Lcom/keniu/security/sync/ui/DialogAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/sync/ui/e;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/e;-><init>(Lcom/keniu/security/sync/ui/DialogAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void

    .line 44
    :cond_2
    const/high16 v0, 0x4396

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0

    .line 45
    :pswitch_0
    invoke-virtual {p0, v8}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0865

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    const v1, 0x7f0b042e

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    const v3, 0x7f0b0841

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b085d

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    invoke-virtual {p0, v9}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    const v3, 0x7f0b08a9

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b085f

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    invoke-virtual {p0, v9}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b08f3

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    const v1, 0x7f0b08f4

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    const v1, 0x7f0b08f5

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/DialogAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/DialogAct;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/DialogAct;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x1000

    const/4 v5, 0x4

    .line 148
    iget v0, p0, Lcom/keniu/security/sync/ui/DialogAct;->b:I

    if-ne v0, v5, :cond_1

    if-eq p1, v5, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 150
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/DialogAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 152
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/keniu/security/sync/ui/DialogAct;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    const-string v3, "dialog_type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 157
    const v3, 0x7f0b08f7

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f02020f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 159
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 160
    const v5, 0x7f0b08f6

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 162
    const/16 v1, 0x1314

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 164
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/DialogAct;->finish()V

    .line 166
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
