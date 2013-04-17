.class public final Lall;
.super Lakw;


# instance fields
.field private c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
            "<",
            "Lkw;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkw;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lakw;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Landroid/widget/ListView;Ljava/util/List;I)V

    new-instance v0, Lalp;

    invoke-direct {v0, p0}, Lalp;-><init>(Lall;)V

    iput-object v0, p0, Lall;->f:Landroid/os/Handler;

    iput-object p1, p0, Lall;->e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lall;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    return-void
.end method

.method static synthetic a(Lall;)Lcom/tencent/tmsecure/module/software/SoftwareManager;
    .locals 1

    iget-object v0, p0, Lall;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    return-object v0
.end method

.method static synthetic a(Lall;Lkw;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lall;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->goToInstalledAppDetails(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lall;->mContext:Landroid/content/Context;

    const v1, 0x7f0b089b

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static synthetic b(Lall;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lall;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private d(Lkw;)V
    .locals 5

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lall;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lall;->notifyDataSetChanged()V

    iget-object v0, p0, Lall;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lall;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0899

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lalo;

    invoke-direct {v0, p0, p1}, Lalo;-><init>(Lall;Lkw;)V

    invoke-virtual {v0}, Lalo;->start()V

    return-void
.end method

.method static synthetic e(Lall;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    iget-object v0, p0, Lall;->e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method

.method static synthetic f(Lall;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lall;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lakw$a;Lkw;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Lkw;->t()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    const v1, 0x7f020317

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p1, Lakw$a;->a:Landroid/view/View;

    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lakw$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lall;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lall;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lakw$a;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lakw$a;->a:Landroid/view/View;

    invoke-virtual {p2}, Lkw;->t()I

    move-result v0

    if-ne v0, v4, :cond_2

    sget v0, Lgw;->a:I

    :goto_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v2, v3, v0, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Lalq;

    invoke-direct {v0, p0, v1, p2}, Lalq;-><init>(Lall;Landroid/view/View;Lkw;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    return-void

    :cond_0
    invoke-virtual {p2}, Lkw;->t()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    const v1, 0x7f020318

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    sget v0, Lgw;->a:I

    neg-int v0, v0

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lakw$a;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public final b(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    sget-boolean v1, Lbnp;->a:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lkw;->t()I

    move-result v1

    if-ne v1, v7, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lall;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0892

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lft$a;

    invoke-direct {v1}, Lft$a;-><init>()V

    invoke-static {v1}, Lft;->a(Lft$a;)V

    invoke-virtual {v0}, Lkw;->getSize()J

    move-result-wide v2

    iget-wide v4, v1, Lft$a;->a:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-object v0, p0, Lall;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0893

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lall;->d(Lkw;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lkw;->t()I

    move-result v1

    if-ne v1, v8, :cond_0

    new-instance v1, Lft$a;

    invoke-direct {v1}, Lft$a;-><init>()V

    invoke-static {v1}, Lft;->b(Lft$a;)V

    invoke-virtual {v0}, Lkw;->getSize()J

    move-result-wide v2

    iget-wide v4, v1, Lft$a;->a:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iget-object v0, p0, Lall;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0894

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lall;->d(Lkw;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->bZ()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lall;->mContext:Landroid/content/Context;

    invoke-direct {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0452

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v1, p0, Lall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000b

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v1, 0x7f080029

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lkw;->t()I

    move-result v2

    if-ne v2, v7, :cond_6

    const v2, 0x7f0b0890

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f080013

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v1, v7}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    const v2, 0x7f08001c

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lall;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0608

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setContentView(Landroid/view/View;)V

    const v2, 0x7f0b0338

    new-instance v4, Lalm;

    invoke-direct {v4, p0, v0, v1, v3}, Lalm;-><init>(Lall;Lkw;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v3, v2, v4, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Laln;

    invoke-direct {v1, v3}, Laln;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v3, v0, v1, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :cond_6
    const v2, 0x7f0b0891

    goto :goto_1

    :cond_7
    :try_start_0
    iget-object v1, p0, Lall;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->goToInstalledAppDetails(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lall;->mContext:Landroid/content/Context;

    const v1, 0x7f0b089b

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
