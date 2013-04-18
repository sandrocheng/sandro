.class public Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;
.super Landroid/app/Activity;
.source "PreventTheftExperienceInfoActivity.java"


# static fields
.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x4


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field private c:Ljava/lang/String;

.field private i:I

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/app/ProgressDialog;

.field private s:Z

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const-string v0, "PreventTheftExperienceInfoActivity"

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->c:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->s:Z

    .line 166
    new-instance v0, Lcom/keniu/security/protection/ui/d;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/d;-><init>(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a:Landroid/view/View$OnClickListener;

    .line 177
    new-instance v0, Lcom/keniu/security/protection/ui/e;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/e;-><init>(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->b:Landroid/view/View$OnClickListener;

    .line 204
    new-instance v0, Lcom/keniu/security/protection/ui/f;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/f;-><init>(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->t:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->i:I

    return v0
.end method

.method static synthetic b(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->s:Z

    return v0
.end method

.method static synthetic c(Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0801f9

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    .line 93
    const v0, 0x7f0801fc

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    .line 94
    const v0, 0x7f0801fa

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->m:Landroid/widget/Button;

    .line 95
    const v0, 0x7f0801fb

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->n:Landroid/widget/Button;

    .line 96
    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->o:Landroid/widget/Button;

    .line 97
    const v0, 0x7f0801ff

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f080200

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->q:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b07d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0b07e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0b07e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b07da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0b07df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0b07e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b07dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0b07e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0b07e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b07db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0b07e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0b07e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b07dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0b07de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 225
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    .line 226
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    const v1, 0x7f0b07ee

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 229
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 230
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 231
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->c:Ljava/lang/String;

    const-string v1, "wait dialog dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x14

    const/16 v3, 0xa

    .line 245
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 246
    const v1, 0x7f0b07ed

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 247
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 250
    const v2, 0x7f0a000c

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 251
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 252
    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 253
    const v1, 0x7f0b021d

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 254
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 255
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 262
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    :try_start_0
    const-string v1, "getMobileDataEnabled"

    invoke-static {p0, v1}, Lcom/keniu/security/protection/ui/ag;->i(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 272
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMobileDataEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    const v2, 0x7f0b07ee

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 296
    new-instance v1, Lcom/keniu/security/protection/l;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->t:Landroid/os/Handler;

    invoke-direct {v1, p0, v0, v2}, Lcom/keniu/security/protection/l;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 299
    invoke-virtual {v1}, Lcom/keniu/security/protection/l;->a()V

    .line 301
    return-void

    .line 269
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->requestWindowFeature(I)Z

    .line 52
    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0801f9

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0801fc

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0801fa

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->m:Landroid/widget/Button;

    const v0, 0x7f0801fb

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->n:Landroid/widget/Button;

    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->o:Landroid/widget/Button;

    const v0, 0x7f0801ff

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f080200

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->q:Landroid/widget/TextView;

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->s:Z

    .line 88
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 61
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->i:I

    .line 62
    iget v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->i:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b07d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0b07e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0b07e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b07da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0b07df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0b07e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b07db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0b07e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0b07e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 74
    :pswitch_3
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b07dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0b07e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0b07e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 77
    :pswitch_4
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b07dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0b07de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftExperienceInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
