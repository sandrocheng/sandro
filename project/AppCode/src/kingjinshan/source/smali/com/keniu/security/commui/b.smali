.class public final Lcom/keniu/security/commui/b;
.super Lcom/keniu/security/commui/c;
.source "SysWarningDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 28
    invoke-direct {p0, p1}, Lcom/keniu/security/commui/c;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/keniu/security/commui/b;->b:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 33
    iget-object v1, p0, Lcom/keniu/security/commui/b;->c:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, 0x41a0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, v2, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 34
    iget-object v0, p0, Lcom/keniu/security/commui/b;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f02021b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f0802e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f0802e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f080267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f0802e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/commui/b;->a:Landroid/widget/Button;

    .line 43
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/commui/b;->g:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f0802e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/commui/b;->h:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f080270

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/commui/b;->i:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f0802df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/commui/b;->j:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f0802e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/keniu/security/commui/b;->a(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method private a(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/keniu/security/commui/b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    :cond_0
    if-eqz p2, :cond_1

    .line 81
    iget-object v0, p0, Lcom/keniu/security/commui/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    :cond_1
    if-eqz p3, :cond_2

    .line 86
    iget-object v0, p0, Lcom/keniu/security/commui/b;->a:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(I)V

    .line 89
    :cond_2
    if-eqz p4, :cond_3

    .line 91
    iget-object v0, p0, Lcom/keniu/security/commui/b;->g:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(I)V

    .line 93
    :cond_3
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    .line 60
    check-cast p1, Landroid/widget/LinearLayout;

    .line 61
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/keniu/security/commui/b;->a(Landroid/view/View;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/keniu/security/commui/b;->j:Landroid/widget/ImageView;

    const v1, 0x7f02013d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/keniu/security/commui/b;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_0
    if-eqz p2, :cond_1

    .line 135
    iget-object v0, p0, Lcom/keniu/security/commui/b;->g:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/keniu/security/commui/b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    if-eqz p2, :cond_1

    .line 104
    iget-object v0, p0, Lcom/keniu/security/commui/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_1
    if-eqz p3, :cond_2

    .line 109
    iget-object v0, p0, Lcom/keniu/security/commui/b;->a:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_2
    if-eqz p4, :cond_3

    .line 114
    iget-object v0, p0, Lcom/keniu/security/commui/b;->g:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/keniu/security/commui/b;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f0802b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/keniu/security/commui/b;->e:Landroid/view/View;

    const v1, 0x7f0802b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 143
    iget-object v0, p0, Lcom/keniu/security/commui/b;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/keniu/security/commui/b;->c()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/commui/b;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/keniu/security/commui/b;->c()V

    goto :goto_0
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/keniu/security/commui/b;->c()V

    .line 157
    const/4 v0, 0x1

    return v0
.end method
