.class public final Lbmp;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Lkd;

.field private G:Labe;

.field private H:J

.field private I:Z

.field private J:Z

.field private K:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

.field private L:Ljava/lang/Thread;

.field private M:Landroid/widget/LinearLayout;

.field private N:Landroid/widget/FrameLayout;

.field private O:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private P:Landroid/widget/TextView;

.field private Q:Z

.field private R:Lod;

.field private S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private T:Z

.field private U:J

.field private V:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

.field private W:Landroid/content/BroadcastReceiver;

.field private X:Landroid/content/BroadcastReceiver;

.field private Y:Lcom/tencent/tmsecure/module/applist/AppListManager;

.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

.field private i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private j:Landroid/widget/FrameLayout;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ResultModel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private s:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

.field private u:Lalg;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0300d3

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmp;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmp;->v:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmp;->w:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmp;->x:Ljava/util/List;

    iput-boolean v1, p0, Lbmp;->y:Z

    const/16 v0, 0x28

    iput v0, p0, Lbmp;->z:I

    iput v1, p0, Lbmp;->A:I

    iput v1, p0, Lbmp;->B:I

    iput v1, p0, Lbmp;->C:I

    iput v1, p0, Lbmp;->D:I

    iput v1, p0, Lbmp;->E:I

    iput-boolean v1, p0, Lbmp;->I:Z

    iput-boolean v1, p0, Lbmp;->J:Z

    iput-boolean v1, p0, Lbmp;->Q:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmp;->S:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lbmp;->T:Z

    new-instance v0, Lbmr;

    invoke-direct {v0, p0}, Lbmr;-><init>(Lbmp;)V

    iput-object v0, p0, Lbmp;->V:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    new-instance v0, Lbms;

    invoke-direct {v0, p0}, Lbms;-><init>(Lbmp;)V

    iput-object v0, p0, Lbmp;->W:Landroid/content/BroadcastReceiver;

    new-instance v0, Lbmt;

    invoke-direct {v0, p0}, Lbmt;-><init>(Lbmp;)V

    iput-object v0, p0, Lbmp;->X:Landroid/content/BroadcastReceiver;

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    iput-object v0, p0, Lbmp;->Y:Lcom/tencent/tmsecure/module/applist/AppListManager;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    return-void
.end method

.method static synthetic A(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic B(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic C(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic D(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic E(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic F(Lbmp;)Z
    .locals 1

    iget-boolean v0, p0, Lbmp;->y:Z

    return v0
.end method

.method static synthetic G(Lbmp;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lbmp;->Q:Z

    iput v2, p0, Lbmp;->C:I

    iput v2, p0, Lbmp;->D:I

    iput v2, p0, Lbmp;->E:I

    iput v2, p0, Lbmp;->A:I

    iput v2, p0, Lbmp;->B:I

    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget v1, p0, Lbmp;->C:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->startAnimation()V

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbmp;->F:Lkd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "one_key_analysis_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbmw;

    invoke-direct {v1, p0}, Lbmw;-><init>(Lbmp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lbmp;->L:Ljava/lang/Thread;

    iget-object v0, p0, Lbmp;->L:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic H(Lbmp;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lbmp;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic I(Lbmp;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbmp;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic J(Lbmp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic K(Lbmp;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbmp;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic L(Lbmp;)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lbmz;

    invoke-direct {v1, p0}, Lbmz;-><init>(Lbmp;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lbmp;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic M(Lbmp;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, ""

    invoke-static {}, Lbmp;->g()I

    move-result v3

    const/16 v0, 0x1e

    if-lt v3, v0, :cond_0

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f020193

    iget-object v4, p0, Lbmp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b08cf

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lbmp;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lbmp;->m:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lbmp;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lbmp;->m:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lbmp;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbmp;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbmp;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f020190

    iget-object v2, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08cd

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08ce

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static synthetic N(Lbmp;)Ljava/lang/String;
    .locals 5

    new-instance v0, Lft$a;

    invoke-direct {v0}, Lft$a;-><init>()V

    invoke-static {v0}, Lft;->b(Lft$a;)V

    iget-wide v1, v0, Lft$a;->a:J

    invoke-static {v0}, Lft;->a(Lft$a;)V

    iget-wide v3, v0, Lft$a;->a:J

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lbmp;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic O(Lbmp;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method static synthetic P(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Q(Lbmp;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbmp;->T:Z

    return v0
.end method

.method static synthetic R(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic S(Lbmp;)Lalg;
    .locals 1

    iget-object v0, p0, Lbmp;->u:Lalg;

    return-object v0
.end method

.method static synthetic T(Lbmp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic U(Lbmp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic V(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic W(Lbmp;)V
    .locals 0

    invoke-direct {p0}, Lbmp;->c()V

    return-void
.end method

.method static synthetic X(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Y(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Z(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lbmp;I)I
    .locals 0

    iput p1, p0, Lbmp;->z:I

    return p1
.end method

.method private static a(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->y()Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lbmp;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lbmp;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-char v2, v1, v0

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_1

    const/16 v2, 0x20

    aput-char v2, v1, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-char v2, v1, v0

    const v3, 0xff00

    if-le v2, v3, :cond_0

    aget-char v2, v1, v0

    const v3, 0xff5f

    if-ge v2, v3, :cond_0

    aget-char v2, v1, v0

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method static synthetic a(Lbmp;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lmp;

    invoke-direct {v0}, Lmp;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmp;->g:I

    iput-object p1, v0, Lmp;->h:Ljava/lang/Object;

    new-instance v1, Lbmy;

    invoke-direct {v1, p0}, Lbmy;-><init>(Lbmp;)V

    iput-object v1, v0, Lmp;->i:Labu$a;

    iget-object v1, p0, Lbmp;->R:Lod;

    invoke-virtual {v1, v0}, Lod;->b(Lmp;)Z

    return-void
.end method

.method static synthetic a(Lbmp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbmp;->I:Z

    return p1
.end method

.method static synthetic aa(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lbmp;I)I
    .locals 0

    iput p1, p0, Lbmp;->D:I

    return p1
.end method

.method private b(Lkw;)I
    .locals 5

    const v1, 0x7f020193

    const/16 v4, 0xc

    const v0, 0x7f020190

    invoke-virtual {p1}, Lkw;->isApk()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, p1}, Lbmp;->c(Lkw;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v4}, Lkw;->e(I)V

    :cond_0
    invoke-virtual {p1}, Lkw;->n()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lkw;->n()I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v1, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lkw;->n()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    iget-object v1, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lkw;->n()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    iget-object v1, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lkw;->n()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_6

    iget-object v1, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lkw;->n()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_7

    iget-object v1, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lkw;->v()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lkw;->v()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Lkw;->v()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Lkw;->v()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_c
    invoke-virtual {p1}, Lkw;->v()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lkw;->v()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static synthetic b(Lbmp;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lbmp;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .locals 15

    const v13, 0x7f090034

    const v3, 0x7f020190

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-boolean v0, p0, Lbmp;->Q:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, ""

    const-string v1, ""

    iget-object v0, p0, Lbmp;->F:Lkd;

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v4, "one_key_analysis_time"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cC()J

    move-result-wide v6

    invoke-static {}, Lbmp;->g()I

    move-result v8

    iget-boolean v0, p0, Lbmp;->J:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-static {v0}, Lbmp;->a(Ljava/util/List;)I

    move-result v4

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-static {v0}, Lbmp;->a(Ljava/util/List;)I

    move-result v5

    const/16 v0, 0x1e

    if-ge v8, v0, :cond_9

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-boolean v2, p0, Lbmp;->T:Z

    if-eqz v2, :cond_2

    iget-wide v1, p0, Lbmp;->H:J

    invoke-direct {p0}, Lbmp;->n()J

    move-result-wide v4

    sub-long/2addr v1, v4

    iget-object v4, p0, Lbmp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b08d1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lbmp;->n()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08d3

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v4, p0, Lbmp;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lbmp;->m:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lbmp;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lbmp;->m:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lbmp;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbmp;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbmp;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08d2

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lbmp;->n()J

    move-result-wide v8

    iput-wide v8, p0, Lbmp;->H:J

    if-nez v4, :cond_3

    if-eqz v5, :cond_7

    :cond_3
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08d0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-lez v4, :cond_5

    if-lez v5, :cond_5

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v6, 0x7f0b08d4

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v11

    iget-wide v4, p0, Lbmp;->H:J

    invoke-static {v4, v5}, La;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v12

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-static {v1}, Lbmp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    if-lez v4, :cond_6

    if-gtz v5, :cond_6

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b08d6

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v10

    iget-wide v6, p0, Lbmp;->H:J

    invoke-static {v6, v7}, La;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v11

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    if-gtz v4, :cond_4

    if-lez v5, :cond_4

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08d5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    iget-wide v5, p0, Lbmp;->H:J

    invoke-static {v5, v6}, La;->b(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/32 v6, 0x13c680

    cmp-long v2, v4, v6

    if-ltz v2, :cond_8

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08dd

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08db

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v2, 0x7f020193

    iget-boolean v8, p0, Lbmp;->T:Z

    if-eqz v8, :cond_b

    iget-wide v3, p0, Lbmp;->H:J

    invoke-direct {p0}, Lbmp;->n()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b08d1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v3, v4}, La;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v10

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lbmp;->n()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_a

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08d3

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v14, v2

    move-object v2, v1

    move v1, v14

    :goto_3
    invoke-static {v2}, Lbmp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v14, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v14

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08d2

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v14, v2

    move-object v2, v1

    move v1, v14

    goto :goto_3

    :cond_b
    invoke-direct {p0}, Lbmp;->n()J

    move-result-wide v8

    iput-wide v8, p0, Lbmp;->H:J

    if-nez v4, :cond_c

    if-eqz v5, :cond_f

    :cond_c
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08d0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-lez v4, :cond_d

    if-lez v5, :cond_d

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v6, 0x7f0b08d4

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v11

    iget-wide v4, p0, Lbmp;->H:J

    invoke-static {v4, v5}, La;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v12

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v14, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v14

    goto :goto_3

    :cond_d
    if-lez v4, :cond_e

    if-gtz v5, :cond_e

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b08d6

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v10

    iget-wide v6, p0, Lbmp;->H:J

    invoke-static {v6, v7}, La;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v11

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v14, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v14

    goto/16 :goto_3

    :cond_e
    if-gtz v4, :cond_16

    if-lez v5, :cond_16

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08d5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    iget-wide v5, p0, Lbmp;->H:J

    invoke-static {v5, v6}, La;->b(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v14, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v14

    goto/16 :goto_3

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/32 v5, 0x13c680

    cmp-long v1, v3, v5

    if-gez v1, :cond_10

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08db

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08dc

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v14, v2

    move-object v2, v1

    move v1, v14

    goto/16 :goto_3

    :cond_10
    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08db

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08de

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v14, v2

    move-object v2, v1

    move v1, v14

    goto/16 :goto_3

    :cond_11
    const/16 v0, 0x1e

    if-lt v8, v0, :cond_14

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v3, 0x7f020193

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_12

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v2, Lft$a;

    invoke-direct {v2}, Lft$a;-><init>()V

    invoke-static {v2}, Lft;->b(Lft$a;)V

    iget-wide v4, v2, Lft$a;->a:J

    invoke-static {v2}, Lft;->a(Lft$a;)V

    iget-wide v6, v2, Lft$a;->a:J

    invoke-static {v4, v5}, La;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, La;->c(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lbmp;->mContext:Landroid/content/Context;

    const v7, 0x7f0b08df

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lbmp;->mContext:Landroid/content/Context;

    const v6, 0x7f0b08e0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto/16 :goto_1

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/32 v8, 0x93a80

    cmp-long v1, v6, v8

    if-lez v1, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/32 v8, 0x93a80

    cmp-long v1, v6, v8

    if-gtz v1, :cond_15

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_14
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_15
    move-object v1, v2

    goto/16 :goto_4

    :cond_16
    move v14, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v14

    goto/16 :goto_3
.end method

.method static synthetic c(Lbmp;I)I
    .locals 1

    iget v0, p0, Lbmp;->D:I

    add-int/2addr v0, p1

    iput v0, p0, Lbmp;->D:I

    return v0
.end method

.method private c()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lbmp;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-direct {p0}, Lbmp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-direct {p0}, Lbmp;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-direct {p0}, Lbmp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lbmp;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbmp;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lbmp;->F:Lkd;

    iget-object v1, v1, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "update_app_count"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-static {v1}, La;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08e6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-direct {p0}, Lbmp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-direct {p0}, Lbmp;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-direct {p0}, Lbmp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbmp;->F:Lkd;

    iget-object v1, v1, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "update_app_count"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08e3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<font color=\"#fd5f5f\">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lbmp;->F:Lkd;

    iget-object v3, v3, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v4, "update_app_count"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</font>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method static synthetic c(Lbmp;)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lbmp;->N:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v1, p0, Lbmp;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lbmp;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-direct {p0}, Lbmp;->k()V

    return-void
.end method

.method private c(Lkw;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lbmp;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lbmp;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lbmp;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lbmp;->S:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d(Lbmp;I)I
    .locals 0

    iput p1, p0, Lbmp;->E:I

    return p1
.end method

.method static synthetic d(Lbmp;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lbmp;->i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lbmp;->F:Lkd;

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v1, "low_useage_app_count"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lbmp;->F:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "low_useage_app_count"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbmp;->F:Lkd;

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v1, "low_score_app_count"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lbmp;->F:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "low_score_app_count"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbmp;->F:Lkd;

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v1, "system_app_count"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbmp;->F:Lkd;

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v1, "third_party_app_count"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lbmp;->F:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "third_party_app_count"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lbmp;->F:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "system_app_count"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic e(Lbmp;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lbmp;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lbmp;->F:Lkd;

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v1, "apk_low_version_count"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lbmp;->F:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "apk_low_version_count"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbmp;->F:Lkd;

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v1, "apk_count"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lbmp;->F:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "apk_count"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Lbmp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lbmp;->F:Lkd;

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v1, "software_move_to_sdcard_count"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lbmp;->F:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "software_move_to_sdcard_count"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static g()I
    .locals 4

    new-instance v0, Lft$a;

    invoke-direct {v0}, Lft$a;-><init>()V

    invoke-static {v0}, Lft;->b(Lft$a;)V

    iget-wide v1, v0, Lft$a;->b:J

    long-to-float v1, v1

    iget-wide v2, v0, Lft$a;->a:J

    long-to-float v0, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic g(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method static synthetic i(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lbmp;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lbmp;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lbmp;->getNotificationHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v3, v3, v3, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Lbmq;

    invoke-direct {v0, p0}, Lbmq;-><init>(Lbmp;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lbmp;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lbmp;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic j(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lbmp;->i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    iget-object v0, p0, Lbmp;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lbmp;->k()V

    invoke-direct {p0}, Lbmp;->l()V

    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    iget-object v0, p0, Lbmp;->N:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b1b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iput v3, p0, Lbmp;->C:I

    iput v3, p0, Lbmp;->D:I

    iput v3, p0, Lbmp;->E:I

    iput v3, p0, Lbmp;->A:I

    iput v3, p0, Lbmp;->B:I

    iput-boolean v3, p0, Lbmp;->J:Z

    iget-object v0, p0, Lbmp;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v1, p0, Lbmp;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0}, Lalg;->c()V

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-direct {p0}, Lbmp;->m()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalg;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0}, Lalg;->notifyDataSetChanged()V

    iget-object v0, p0, Lbmp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-wide v0, p0, Lbmp;->U:J

    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lbmp;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lbmp;->getNotificationHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v4, v4, v0, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Lbmu;

    invoke-direct {v0, p0}, Lbmu;-><init>(Lbmp;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lbmp;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic k(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private k()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lbna;

    invoke-direct {v1, p0}, Lbna;-><init>(Lbmp;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lbmp;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic l(Lbmp;)Labe;
    .locals 1

    iget-object v0, p0, Lbmp;->G:Labe;

    return-object v0
.end method

.method private l()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-boolean v0, p0, Lbmp;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmp;->i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lbmp;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->N:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbmp;->i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b089c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lbmp;->i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private m()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkw;",
            ">;>;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbmp;->w:Ljava/util/List;

    iget-object v3, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0b19

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbmp;->v:Ljava/util/List;

    iget-object v3, p0, Lbmp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0b1a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic m(Lbmp;)Z
    .locals 1

    iget-boolean v0, p0, Lbmp;->Q:Z

    return v0
.end method

.method private n()J
    .locals 7

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    move-wide v3, v0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->y()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getSize()J

    move-result-wide v0

    add-long/2addr v3, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-wide v3
.end method

.method static synthetic n(Lbmp;)Z
    .locals 1

    iget-boolean v0, p0, Lbmp;->I:Z

    return v0
.end method

.method static synthetic o(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic q(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic r(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic u(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic v(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic w(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic x(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic y(Lbmp;)I
    .locals 1

    iget v0, p0, Lbmp;->E:I

    return v0
.end method

.method static synthetic z(Lbmp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method public final a(Lkw;)Z
    .locals 12

    const/4 v11, 0x2

    const-wide/32 v9, 0x13c680

    const/4 v1, 0x0

    const-wide/32 v7, 0x278d00

    const/4 v2, 0x1

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cC()J

    move-result-wide v3

    iget-object v0, p0, Lbmp;->Y:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, LQQPIM/SoftListType;->WHITELIST_UNUSUAL:LQQPIM/SoftListType;

    invoke-virtual {v0, v5, v6}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v0, v3, v9

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const-string v5, "SoftwareManagerImpl"

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v5, :cond_2

    invoke-static {v5}, Lbor;->a(Ljava/lang/String;)Lbor;

    move-result-object v0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " useageInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    cmp-long v5, v3, v9

    if-ltz v5, :cond_4

    cmp-long v5, v3, v7

    if-gez v5, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {p1, v11}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v0, Lbor;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v9

    if-ltz v0, :cond_b

    cmp-long v0, v3, v7

    if-gez v0, :cond_b

    invoke-virtual {p1, v11}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto :goto_0

    :cond_4
    cmp-long v5, v3, v7

    if-ltz v5, :cond_7

    const-wide/32 v5, 0x4f1a00

    cmp-long v5, v3, v5

    if-gez v5, :cond_7

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v0, Lbor;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v0, v3, v7

    if-ltz v0, :cond_6

    invoke-virtual {p1, v2}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_6
    cmp-long v0, v3, v9

    if-ltz v0, :cond_b

    cmp-long v0, v3, v7

    if-gez v0, :cond_b

    invoke-virtual {p1, v11}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    const-wide/32 v5, 0x4f1a00

    cmp-long v3, v3, v5

    if-ltz v3, :cond_b

    if-nez v0, :cond_8

    invoke-virtual {p1, v1}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v0, Lbor;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/32 v5, 0x4f1a00

    cmp-long v0, v3, v5

    if-ltz v0, :cond_9

    invoke-virtual {p1, v1}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_9
    cmp-long v0, v3, v7

    if-ltz v0, :cond_a

    const-wide/32 v5, 0x4f1a00

    cmp-long v0, v3, v5

    if-gez v0, :cond_a

    invoke-virtual {p1, v2}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_a
    cmp-long v0, v3, v9

    if-ltz v0, :cond_b

    cmp-long v0, v3, v7

    if-gez v0, :cond_b

    invoke-virtual {p1, v11}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public final onBackClick()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lbmp;->y:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lbmp;->y:Z

    iput-boolean v0, p0, Lbmp;->Q:Z

    iget-object v0, p0, Lbmp;->R:Lod;

    invoke-virtual {v0}, Lod;->a()V

    invoke-direct {p0}, Lbmp;->h()V

    invoke-direct {p0}, Lbmp;->j()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lbmp;->y:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lbmp;->L:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmp;->L:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbmp;->U:J

    iput-boolean v9, p0, Lbmp;->y:Z

    iput-boolean v8, p0, Lbmp;->T:Z

    invoke-direct {p0}, Lbmp;->h()V

    invoke-direct {p0}, Lbmp;->i()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65ba

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08f4

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iput-boolean v8, p0, Lbmp;->y:Z

    invoke-direct {p0}, Lbmp;->j()V

    goto :goto_0

    :pswitch_2
    iput-boolean v8, p0, Lbmp;->y:Z

    iget-object v0, p0, Lbmp;->P:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lbmp;->j()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0}, Lalg;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01cf

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->isApk()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0452

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_a

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_a

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0495

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v10, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lbmp;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0498

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    new-instance v5, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v6, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v6, 0x7f0b0045

    new-instance v0, Lbnb;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbnb;-><init>(Lbmp;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v6, v0, v9}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lbnc;

    invoke-direct {v1, v5}, Lbnc;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v0, v1, v10}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0496

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_8

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0497

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    iput-boolean v8, p0, Lbmp;->y:Z

    iput-boolean v8, p0, Lbmp;->Q:Z

    iget-object v0, p0, Lbmp;->R:Lod;

    invoke-virtual {v0}, Lod;->a()V

    invoke-direct {p0}, Lbmp;->h()V

    invoke-direct {p0}, Lbmp;->j()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080276
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final onCreate()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f08027c

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbmp;->j:Landroid/widget/FrameLayout;

    const v0, 0x7f080280

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbmp;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f080281

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbmp;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f080272

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;

    iput-object v0, p0, Lbmp;->c:Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbmp;->d:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lbmp;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v0, p0, Lbmp;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lbmp;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lbmp;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f08027d

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbmp;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f08027e

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbmp;->g:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbmp;->g:Landroid/widget/ListView;

    iget-object v3, p0, Lbmp;->k:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/util/List;Lsl;)V

    iput-object v0, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v0, p0, Lbmp;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f08027f

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iput-object v0, p0, Lbmp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    new-instance v0, Lalg;

    invoke-direct {p0}, Lbmp;->m()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lalg;-><init>(Lbmp;Ljava/util/List;)V

    iput-object v0, p0, Lbmp;->u:Lalg;

    iget-object v0, p0, Lbmp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lbmp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lbmp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030114

    iget-object v3, p0, Lbmp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lbmp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v0, 0x7f080276

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbmp;->i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lbmp;->i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbmp;->i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    const v0, 0x7f080279

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbmp;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f08027a

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08027b

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbmp;->s:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lbmp;->s:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080283

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbmp;->P:Landroid/widget/TextView;

    const v0, 0x7f080222

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbmp;->l:Landroid/widget/TextView;

    const v0, 0x7f080275

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbmp;->n:Landroid/widget/TextView;

    const v0, 0x7f0801bb

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbmp;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f080273

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbmp;->m:Landroid/widget/ImageView;

    const v0, 0x7f080226

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iput-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbmp;->M:Landroid/widget/LinearLayout;

    const v0, 0x7f080277

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbmp;->N:Landroid/widget/FrameLayout;

    const v0, 0x7f080278

    invoke-virtual {p0, v0}, Lbmp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbmp;->O:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lbmp;->O:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    iput-object v0, p0, Lbmp;->F:Lkd;

    new-instance v0, Labe;

    invoke-direct {v0}, Labe;-><init>()V

    iput-object v0, p0, Lbmp;->G:Labe;

    new-instance v0, Lod;

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lod;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbmp;->R:Lod;

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbmp;->W:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpimsecure.NOTIFY_UI_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbmp;->X:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpimsecure.NOTIFY_UI_NULL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iput-object v0, p0, Lbmp;->K:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v0, p0, Lbmp;->K:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lbmp;->V:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbmp;->W:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbmp;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lbmp;->K:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lbmp;->V:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->removeListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.qqpimsecure.ACTION_STOP_LOADING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Laau;

    invoke-direct {v0}, Laau;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Lcom/tencent/tmsecure/common/BaseService;)Z

    iget-object v0, p0, Lbmp;->R:Lod;

    invoke-virtual {v0}, Lod;->e()V

    iget-object v0, p0, Lbmp;->c:Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->destroy()V

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 12

    const/16 v3, 0x46

    const/16 v2, 0xa

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onHandlerMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lbmp;->k:Ljava/util/List;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    const v2, 0x7f020193

    iget v3, p1, Landroid/os/Message;->arg1:I

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(IIIJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v1, p0, Lbmp;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lbmp;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbmp;->C:I

    iget v0, p0, Lbmp;->C:I

    if-le v0, v2, :cond_1

    iput v2, p0, Lbmp;->C:I

    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget v1, p0, Lbmp;->C:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget v1, p0, Lbmp;->C:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lbmp;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbmp;->C:I

    iget v0, p0, Lbmp;->C:I

    if-le v0, v3, :cond_2

    iput v3, p0, Lbmp;->C:I

    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget v1, p0, Lbmp;->C:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget v1, p0, Lbmp;->C:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lbmp;->D:I

    if-eqz v0, :cond_0

    iget v0, p0, Lbmp;->C:I

    if-ge v0, v2, :cond_3

    iput v2, p0, Lbmp;->C:I

    :cond_3
    iget v0, p0, Lbmp;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbmp;->A:I

    iget v0, p0, Lbmp;->A:I

    int-to-float v0, v0

    iget v1, p0, Lbmp;->D:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lbmp;->z:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lbmp;->C:I

    iget v0, p0, Lbmp;->C:I

    iget v1, p0, Lbmp;->z:I

    add-int/lit8 v1, v1, 0xa

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget v1, p0, Lbmp;->z:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkw;

    iget-object v1, p0, Lbmp;->k:Ljava/util/List;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0}, Lbmp;->b(Lkw;)I

    move-result v0

    invoke-direct {v2, v10, v3, v4, v0}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v1, p0, Lbmp;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget v1, p0, Lbmp;->C:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lbmp;->E:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    invoke-direct {p0}, Lbmp;->l()V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lbmp;->C:I

    if-ge v0, v3, :cond_6

    iput v3, p0, Lbmp;->C:I

    :cond_6
    iget v0, p0, Lbmp;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbmp;->B:I

    iget v0, p0, Lbmp;->B:I

    int-to-float v0, v0

    iget v1, p0, Lbmp;->E:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41f0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x46

    iput v0, p0, Lbmp;->C:I

    iget v0, p0, Lbmp;->C:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    invoke-direct {p0}, Lbmp;->l()V

    :goto_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkw;

    iget-object v1, p0, Lbmp;->k:Ljava/util/List;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0}, Lbmp;->b(Lkw;)I

    move-result v5

    invoke-direct {v2, v10, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v2, p0, Lbmp;->k:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setDataList(Ljava/util/List;)V

    iget-object v1, p0, Lbmp;->h:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lbmp;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lbmp;->E:I

    iget v1, p0, Lbmp;->B:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lbmp;->p:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget v1, p0, Lbmp;->C:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lbmp;->Q:Z

    iput-boolean v10, p0, Lbmp;->J:Z

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v11}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-direct {p0}, Lbmp;->b()V

    iget-object v0, p0, Lbmp;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-direct {p0}, Lbmp;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lalg;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0}, Lalg;->notifyDataSetChanged()V

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0}, Lalg;->d()V

    iget-object v0, p0, Lbmp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0}, Lalg;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    :goto_4
    invoke-direct {p0}, Lbmp;->l()V

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->v()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Lkw;->v()I

    move-result v8

    if-ne v8, v10, :cond_b

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Lkw;->v()I

    move-result v8

    if-nez v8, :cond_c

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Lkw;->v()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_d

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Lkw;->v()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_9

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->n()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_10

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    invoke-virtual {v0}, Lkw;->n()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_11

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Lkw;->n()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_12

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    invoke-virtual {v0}, Lkw;->n()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_f

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_14
    iget-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v10}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto/16 :goto_4

    :pswitch_6
    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-direct {p0}, Lbmp;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lalg;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0}, Lalg;->a()V

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0}, Lalg;->notifyDataSetChanged()V

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-static {v0}, Lbmp;->a(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-static {v0}, Lbmp;->a(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lbmp;->s:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v11}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    :goto_7
    iget-object v0, p0, Lbmp;->c:Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->updateStorage()V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbmp;->s:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    goto :goto_7

    :pswitch_7
    iget-object v0, p0, Lbmp;->F:Lkd;

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v2, "third_party_app_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v2, p0, Lbmp;->I:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lbmp;->F:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "system_app_count"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_16
    if-nez v0, :cond_18

    iget-object v0, p0, Lbmp;->i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x7f0b08c4

    :goto_8
    iget-object v2, p0, Lbmp;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lbmp;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lbmp;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lbmp;->m:Landroid/widget/ImageView;

    const v2, 0x7f020193

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lbmp;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lbmp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lbmp;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_17
    const v0, 0x7f0b08c3

    goto :goto_8

    :cond_18
    iget-object v0, p0, Lbmp;->i:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v10}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    invoke-direct {p0}, Lbmp;->b()V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0}, Lbmp;->b()V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lbmv;

    invoke-direct {v0, p0}, Lbmv;-><init>(Lbmp;)V

    invoke-virtual {v0}, Lbmv;->start()V

    goto/16 :goto_0

    :pswitch_a
    iget-boolean v0, p0, Lbmp;->y:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lbmp;->L:Ljava/lang/Thread;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lbmp;->L:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_19
    iput-boolean v10, p0, Lbmp;->y:Z

    iput-boolean v1, p0, Lbmp;->T:Z

    invoke-direct {p0}, Lbmp;->h()V

    invoke-direct {p0}, Lbmp;->i()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65ba

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lbmp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08f4

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_1b
    iput-boolean v1, p0, Lbmp;->y:Z

    invoke-direct {p0}, Lbmp;->j()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    const v1, 0x7f08027f

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0}, Lalg;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f08014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lbmp;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move-object v0, v1

    :goto_1
    invoke-virtual {p0}, Lbmp;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareUpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareUninstallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/ApkManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbmp;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareMoveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public final onResume()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    invoke-direct {p0}, Lbmp;->b()V

    invoke-direct {p0}, Lbmp;->c()V

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbmp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v0, p0, Lbmp;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbmp;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbmp;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbmp;->r:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-direct {p0}, Lbmp;->m()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalg;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbmp;->u:Lalg;

    invoke-virtual {v0}, Lalg;->notifyDataSetChanged()V

    :cond_1
    invoke-virtual {p0}, Lbmp;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "start_analysis"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbmp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbmp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    const v0, 0x7f0b0001

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const v0, 0x7f0b0226

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
