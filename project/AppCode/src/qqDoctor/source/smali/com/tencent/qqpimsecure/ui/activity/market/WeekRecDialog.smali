.class public Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lla;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljt;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmv;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lla;

.field private h:Lsl;

.field private i:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private j:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

.field private k:Lcom/tencent/tmsecure/common/BaseServiceConnection;

.field private l:LQQPIM/FeatureKey;

.field private m:[I

.field private n:Landroid/widget/LinearLayout;

.field private o:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

.field private p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

.field private q:Landroid/view/LayoutInflater;

.field private r:Lsl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->k:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->m:[I

    return-void
.end method

.method private a()Landroid/widget/LinearLayout;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->q:Landroid/view/LayoutInflater;

    const v1, 0x7f030084

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08018a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f08018d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v3, 0x7f080190

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v4, 0x7f080193

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v5, 0x7f080196

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v8, v9

    :goto_0
    iget-object v6, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x5

    if-ge v8, v6, :cond_1

    if-nez v8, :cond_2

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f08018b

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lla;

    invoke-virtual {v7}, Lla;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f08018c

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lla;

    invoke-virtual {v7}, Lla;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lagq;

    invoke-direct {v6, p0}, Lagq;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_1
    add-int/lit8 v6, v8, 0x1

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_6

    :cond_1
    return-object v0

    :cond_2
    const/4 v6, 0x1

    if-ne v8, v6, :cond_3

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f08018e

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lla;

    invoke-virtual {v7}, Lla;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f08018f

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lla;

    invoke-virtual {v7}, Lla;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lagr;

    invoke-direct {v6, p0}, Lagr;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    if-ne v8, v6, :cond_4

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f080191

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lla;

    invoke-virtual {v7}, Lla;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f080192

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lla;

    invoke-virtual {v7}, Lla;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lags;

    invoke-direct {v6, p0}, Lags;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_4
    const/4 v6, 0x3

    if-ne v8, v6, :cond_5

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f080194

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lla;

    invoke-virtual {v7}, Lla;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f080195

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lla;

    invoke-virtual {v7}, Lla;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lagt;

    invoke-direct {v6, p0}, Lagt;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_5
    if-ne v8, v10, :cond_0

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f080197

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lla;

    invoke-virtual {v7}, Lla;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f080198

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lla;

    invoke-virtual {v7}, Lla;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lagu;

    invoke-direct {v6, p0}, Lagu;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_6
    move v8, v6

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(IZ)V
    .locals 11

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f08019b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    const v2, 0x7f08019c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    invoke-direct {v2, p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lla;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->g:Lla;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->d:Ljt;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->g:Lla;

    invoke-virtual {v3}, Lla;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljt;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_4

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkw;

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_a

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmv;

    iget v3, v3, Lmv;->b:I

    if-ne v10, v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v3, 0x0

    move v5, v3

    :goto_3
    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_9

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;

    iget v3, v3, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;->b:I

    if-ne v7, v3, :cond_3

    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    :cond_4
    :try_start_0
    invoke-direct {p0, v8}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b(Ljava/util/List;)V

    invoke-direct {p0, v9}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    :cond_5
    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x2

    invoke-direct {v3, p0, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->o:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->o:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->setPointType(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->o:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    invoke-virtual {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->addSlideCallBackInterface(Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;)V

    const/4 v1, 0x0

    move v3, v1

    :goto_6
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->q:Landroid/view/LayoutInflater;

    const v2, 0x7f030086

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkw;

    invoke-direct {p0, v1, v2}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a(Landroid/widget/LinearLayout;Lkw;)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    invoke-direct {v2, p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_6
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    invoke-direct {v2, p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isAllowSlideView:Z

    :cond_7
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lagj;

    invoke-direct {v1, p0}, Lagj;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->g:Lla;

    invoke-virtual {v1}, Lla;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b()V

    return-void

    :cond_9
    move v3, v6

    goto/16 :goto_4

    :cond_a
    move v3, v7

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lis;->a(Landroid/content/Context;)Lis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lis;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Lkw;)V
    .locals 10

    const v6, 0x7f08019d

    const/16 v5, 0x8

    const/4 v3, -0x1

    const/4 v9, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-virtual {p2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmv;

    iget v0, v0, Lmv;->b:I

    if-ne v4, v0, :cond_1

    :goto_1
    if-eq v1, v3, :cond_2

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmv;

    iget-object v1, v1, Lmv;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08019e

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {p2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;

    iget v0, v0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;->b:I

    if-ne v4, v0, :cond_3

    :goto_4
    if-eq v1, v3, :cond_0

    const v0, 0x7f08019f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p2}, Lkw;->L()I

    move-result v0

    if-ne v0, v9, :cond_4

    const v0, 0x7f0801a1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    const v0, 0x7f0801a5

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {p2}, Lkw;->l()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    const v0, 0x7f0801a4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lkw;->g()I

    move-result v1

    invoke-static {p0, v1}, Lk;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " initMainView getDownLoadTimesText "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lkw;->g()I

    move-result v1

    invoke-static {p0, v1}, Lk;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const v0, 0x7f0801a6

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b09a4

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " initMainView soft_version_hit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0b09a4

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const v0, 0x7f0801a7

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b09a5

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p2}, Lkw;->getSize()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-nez v1, :cond_5

    const-string v1, "0"

    :goto_6
    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, " initMainView soft_size "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v0, 0x7f0b09a5

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b0616

    invoke-virtual {p0, v5}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lkw;->getSize()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_6

    const-string v0, "0"

    :goto_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const v0, 0x7f0801a8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lkw;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801a0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " initMainView soft_info "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lkw;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08019e

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_4
    const v0, 0x7f0801a1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_5
    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_6
    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_7
    move v1, v3

    goto/16 :goto_4

    :cond_8
    move v1, v3

    goto/16 :goto_1
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->o:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->o:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f08019b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f08019c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0, p1, v2}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a(IZ)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    const/16 v1, 0xfa

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->snapToScreen(II)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;Lkv;)V
    .locals 2

    invoke-static {p1}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->i:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0b088e

    invoke-static {p0, v0}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    new-instance v4, Llv;

    invoke-direct {v4}, Llv;-><init>()V

    iput v2, v4, Llv;->b:I

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iput v5, v4, Lmp;->g:I

    invoke-virtual {v0}, Lkw;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Llv;->d:Ljava/lang/String;

    iput v2, v4, Llv;->a:I

    iget v0, v4, Lmp;->g:I

    new-instance v5, Lagv;

    invoke-direct {v5, p0, v0}, Lagv;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;I)V

    iput-object v5, v4, Lmp;->i:Labu$a;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->r:Lsl;

    invoke-virtual {v0, v4}, Lsl;->b(Lmp;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 15

    const/4 v14, -0x2

    const/4 v13, 0x3

    const/4 v9, 0x0

    const/4 v12, 0x1

    move v8, v9

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_c

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkw;

    new-instance v0, LQQPIM/FeatureKey;

    invoke-virtual {v7}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v7}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lkw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lkw;->D()I

    move-result v4

    invoke-virtual {v7}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lkw;->getSize()J

    move-result-wide v10

    long-to-int v6, v10

    invoke-direct/range {v0 .. v6}, LQQPIM/FeatureKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->l:LQQPIM/FeatureKey;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->l:LQQPIM/FeatureKey;

    iget-object v0, v0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->j:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->getAllTasks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lof;->a(Ljava/lang/String;Ljava/util/List;)Lkv;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->l:LQQPIM/FeatureKey;

    iget-object v0, v0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-static {v0}, Lof;->a(Ljava/lang/String;)Lkv;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lkv;->d:Lkw;

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Lkv;

    invoke-direct {v0, v7}, Lkv;-><init>(Lkw;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->g:Lla;

    invoke-virtual {v1}, Lla;->b()I

    move-result v1

    iput v1, v0, Lkv;->b:I

    iput v8, v0, Lkv;->c:I

    invoke-static {v0}, Lof;->a(Lkv;)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, v0, Lkv;->d:Lkw;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->l:LQQPIM/FeatureKey;

    iget-object v1, v1, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->l:LQQPIM/FeatureKey;

    iget-object v1, v1, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    iget-object v2, v0, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lkv;->d:Lkw;

    invoke-virtual {v1}, Lkw;->D()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->l:LQQPIM/FeatureKey;

    iget v2, v2, LQQPIM/FeatureKey;->versionCode:I

    if-ge v1, v2, :cond_d

    :cond_4
    new-instance v0, Lkv;

    invoke-direct {v0}, Lkv;-><init>()V

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->i:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->l:LQQPIM/FeatureKey;

    invoke-virtual {v2}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lkw;->D()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppVersionStatus(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->m:[I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    const v3, 0x7f0801a9

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    aget v2, v2, v9

    packed-switch v2, :pswitch_data_1

    :cond_6
    :goto_3
    :pswitch_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_0

    :pswitch_1
    iget v2, v1, Lkv;->mState:I

    packed-switch v2, :pswitch_data_2

    goto :goto_2

    :pswitch_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    iget v0, v1, Lkv;->mState:I

    if-ne v0, v14, :cond_7

    new-array v0, v12, [I

    aput v9, v0, v9

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->m:[I

    goto :goto_2

    :cond_7
    iget v0, v1, Lkv;->mState:I

    const/4 v2, -0x3

    if-ne v0, v2, :cond_5

    iput v13, v1, Lkv;->mState:I

    new-array v0, v12, [I

    aput v12, v0, v9

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->m:[I

    goto :goto_2

    :cond_8
    if-eq v0, v12, :cond_9

    iget v0, v1, Lkv;->mState:I

    const/4 v2, -0x4

    if-ne v0, v2, :cond_b

    :cond_9
    iget-object v0, v1, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_a

    new-array v0, v12, [I

    aput v13, v0, v9

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->m:[I

    goto :goto_2

    :cond_a
    new-array v0, v12, [I

    aput v13, v0, v9

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->m:[I

    goto :goto_2

    :cond_b
    iget v0, v1, Lkv;->mState:I

    if-ne v0, v14, :cond_5

    :pswitch_3
    new-array v0, v12, [I

    const/16 v2, 0x9

    aput v2, v0, v9

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->m:[I

    goto :goto_2

    :pswitch_4
    new-array v0, v12, [I

    const/16 v2, 0x8

    aput v2, v0, v9

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->m:[I

    goto :goto_2

    :pswitch_5
    new-array v0, v12, [I

    const/4 v2, 0x4

    aput v2, v0, v9

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->m:[I

    goto :goto_2

    :pswitch_6
    new-array v0, v12, [I

    const/4 v2, 0x5

    aput v2, v0, v9

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->m:[I

    goto/16 :goto_2

    :pswitch_7
    new-array v0, v12, [I

    aput v12, v0, v9

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->m:[I

    goto/16 :goto_2

    :pswitch_8
    const v2, 0x7f0b0319

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    new-instance v2, Lagl;

    invoke-direct {v2, p0, v1}, Lagl;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;Lkv;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v12}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto/16 :goto_3

    :pswitch_9
    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    new-instance v2, Lagm;

    invoke-direct {v2, p0, v1}, Lagm;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;Lkv;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v12}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto/16 :goto_3

    :pswitch_a
    const v2, 0x7f0b03fb

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    new-instance v2, Lagn;

    invoke-direct {v2, p0, v1}, Lagn;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;Lkv;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v12}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto/16 :goto_3

    :pswitch_b
    const v2, 0x7f0b03e9

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    new-instance v2, Lago;

    invoke-direct {v2, p0, v1}, Lago;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;Lkv;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v12}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto/16 :goto_3

    :pswitch_c
    const v2, 0x7f0b0059

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    new-instance v2, Lagp;

    invoke-direct {v2, p0, v1}, Lagp;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;Lkv;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v12}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto/16 :goto_3

    :pswitch_d
    const v1, 0x7f0b0908

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto/16 :goto_3

    :pswitch_e
    const v1, 0x7f0b04ef

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto/16 :goto_3

    :cond_c
    return-void

    :cond_d
    move-object v1, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V
    .locals 1

    new-instance v0, Lagw;

    invoke-direct {v0, p0}, Lagw;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    new-instance v2, Llv;

    invoke-direct {v2}, Llv;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Llv;->b:I

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v2, Lmp;->g:I

    invoke-virtual {v0}, Lkw;->O()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Llv;->d:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, v2, Llv;->a:I

    iget v0, v2, Lmp;->g:I

    new-instance v3, Lagx;

    invoke-direct {v3, p0, v0}, Lagx;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;I)V

    iput-object v3, v2, Lmp;->i:Labu$a;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->h:Lsl;

    invoke-virtual {v0, v2}, Lsl;->b(Lmp;)Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V
    .locals 1

    new-instance v0, Lagk;

    invoke-direct {v0, p0}, Lagk;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->j:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    return-object v0
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->requestWindowFeature(I)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->c:Ljava/util/ArrayList;

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->d:Ljt;

    new-instance v0, Lsl;

    invoke-direct {v0}, Lsl;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->h:Lsl;

    new-instance v0, Lsl;

    invoke-direct {v0}, Lsl;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->r:Lsl;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->i:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    new-instance v0, Lof;

    invoke-direct {v0}, Lof;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    const-class v0, Lof;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->k:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->j:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->d:Ljt;

    invoke-virtual {v0}, Ljt;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->q:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->q:Landroid/view/LayoutInflater;

    const v1, 0x7f030085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a(IZ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->h:Lsl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->h:Lsl;

    invoke-virtual {v0}, Lsl;->e()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->r:Lsl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->r:Lsl;

    invoke-virtual {v0}, Lsl;->e()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->o:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->o:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    if-eqz v0, :cond_5

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->p:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->d:Ljt;

    if-eqz v0, :cond_6

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->d:Ljt;

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->e:Ljava/util/ArrayList;

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->f:Ljava/util/ArrayList;

    :cond_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->g:Lla;

    if-eqz v0, :cond_9

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->g:Lla;

    :cond_9
    const-class v0, Lof;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->k:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->unBindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->k:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {}, Lof;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Lof;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->o:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->setCurrentFourceIndex(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->finish()V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNextCanvas(I)V
    .locals 3

    const v2, 0x7f08019a

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->o:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->setCurrentFourceIndex(I)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->o:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->getCurrentFourceIndex()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b00bf

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->g:Lla;

    invoke-virtual {v1}, Lla;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b()V

    return-void
.end method

.method public onSlideStart()V
    .locals 0

    return-void
.end method

.method public onSlideStop()V
    .locals 0

    return-void
.end method
