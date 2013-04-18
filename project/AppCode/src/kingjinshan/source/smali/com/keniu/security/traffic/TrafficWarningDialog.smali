.class public Lcom/keniu/security/traffic/TrafficWarningDialog;
.super Landroid/app/Activity;
.source "TrafficWarningDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficWarningDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->b:Landroid/widget/Button;

    .line 120
    if-ne p1, v0, :cond_0

    .line 122
    const-string v0, "2_1"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    const-class v1, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->startActivity(Landroid/content/Intent;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->finish()V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x140

    const/16 v7, 0xf0

    const/high16 v6, 0x4382

    const/4 v5, -0x2

    .line 32
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->setTheme(I)V

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0, v9}, Lcom/keniu/security/traffic/TrafficWarningDialog;->requestWindowFeature(I)Z

    .line 35
    const v0, 0x7f030095

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->a:Landroid/content/Intent;

    .line 37
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 39
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 40
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 41
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 42
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 43
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-ne v4, v9, :cond_2

    .line 45
    if-le v1, v7, :cond_0

    if-gt v2, v8, :cond_1

    .line 46
    :cond_0
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 47
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 70
    :goto_0
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 71
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 72
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    const v0, 0x7f080269

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->b:Landroid/widget/Button;

    .line 74
    const v0, 0x7f08026a

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->c:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->a:Landroid/content/Intent;

    const-string v1, "title1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const v0, 0x7f080268

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->d:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->a:Landroid/content/Intent;

    const-string v1, "traffic_warn_type"

    const/16 v2, -0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 82
    if-nez v0, :cond_8

    .line 83
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->b:Landroid/widget/Button;

    const v1, 0x7f0b081c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 84
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->b:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/traffic/dp;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/dp;-><init>(Lcom/keniu/security/traffic/TrafficWarningDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :goto_1
    return-void

    .line 49
    :cond_1
    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 50
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 52
    :cond_2
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-nez v4, :cond_5

    .line 53
    if-le v1, v8, :cond_3

    if-gt v2, v7, :cond_4

    .line 54
    :cond_3
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 55
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 57
    :cond_4
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 61
    :cond_5
    if-le v1, v7, :cond_6

    if-gt v2, v8, :cond_7

    .line 62
    :cond_6
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 63
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 65
    :cond_7
    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 66
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_0

    .line 112
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->b:Landroid/widget/Button;

    const v1, 0x7f0b081c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficWarningDialog;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficWarningDialog;->finish()V

    .line 135
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
