.class public Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/widget/EditText;

.field private i:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private j:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private k:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private l:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

.field private m:Lho;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->a:Ljava/util/Timer;

    new-instance v0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;B)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->c:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->f:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->g:Z

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 7

    const v4, -0x666667

    const/16 v6, 0x22

    const/4 v5, 0x0

    invoke-static {p0}, Lft;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const v1, 0x7f0b07fb

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->f:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0b07fc

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0b07fa

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->f:Z

    return v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->l:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lho;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->m:Lho;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->i:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->c:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->m:Lho;

    invoke-virtual {v2}, Lho;->bJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lft;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e:Z

    move v0, v1

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->d:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->a:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->c:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;->cancel()Z

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/high16 v10, 0x41a0

    const/high16 v9, 0x3f00

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sim_change"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->g:Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->m:Lho;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->m:Lho;

    iput-boolean v7, v0, Lho;->b:Z

    const-class v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->l:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->m:Lho;

    invoke-virtual {v0}, Lho;->bG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->c:Z

    iput-boolean v7, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->d:Z

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->a:Ljava/util/Timer;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity$a;

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->l:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->f:Z

    const v0, 0x7f030081

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->setContentView(I)V

    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->i:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v0, 0x7f08016f

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->j:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->k:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->j:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lahl;

    invoke-direct {v1, p0}, Lahl;-><init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->k:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lahm;

    invoke-direct {v1, p0}, Lahm;-><init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->i:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    new-instance v1, Lahn;

    invoke-direct {v1, p0}, Lahn;-><init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b()V

    return-void

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->j:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v10

    add-float/2addr v1, v9

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v10

    add-float/2addr v1, v9

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->j:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->h:Landroid/widget/EditText;

    const v1, 0x7f0b085f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->k:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b07fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->i:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    const v0, 0x7f08016e

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->h:Landroid/widget/EditText;

    const v1, 0x7f0b0853

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->l:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
