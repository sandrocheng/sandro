.class public final Lbqb;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbqb$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:J

.field private E:Z

.field private F:J

.field private G:Z

.field private H:I

.field private I:I

.field private J:I

.field private K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private L:Z

.field private M:Z

.field private N:I

.field private O:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;

.field private P:Lvh;

.field private Q:Lzo;

.field private R:Landroid/os/Handler;

.field private S:Landroid/os/Handler;

.field a:Z

.field private b:Landroid/widget/ListView;

.field private c:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ListView;

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

.field private l:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/FrameLayout;

.field private s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

.field private t:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private u:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private v:Z

.field private w:I

.field private x:F

.field private y:Lcom/tencent/tmsecure/module/applist/AppListManager;

.field private z:Lbqb$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const v0, 0x7f0300b9

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbqb;->k:Ljava/util/List;

    iput-boolean v3, p0, Lbqb;->v:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lbqb;->z:Lbqb$a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbqb;->F:J

    iput v2, p0, Lbqb;->H:I

    iput v2, p0, Lbqb;->I:I

    iput v2, p0, Lbqb;->J:I

    iput-boolean v3, p0, Lbqb;->L:Z

    iput-boolean v3, p0, Lbqb;->M:Z

    iput v2, p0, Lbqb;->N:I

    iput-boolean v3, p0, Lbqb;->a:Z

    new-instance v0, Lbqo;

    invoke-direct {v0, p0}, Lbqo;-><init>(Lbqb;)V

    iput-object v0, p0, Lbqb;->R:Landroid/os/Handler;

    new-instance v0, Lbqh;

    invoke-direct {v0, p0}, Lbqh;-><init>(Lbqb;)V

    iput-object v0, p0, Lbqb;->S:Landroid/os/Handler;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lbqb;->u:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    iput-object v0, p0, Lbqb;->P:Lvh;

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    iput-object v0, p0, Lbqb;->Q:Lzo;

    return-void
.end method

.method static synthetic A(Lbqb;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbqb;->L:Z

    return v0
.end method

.method static synthetic B(Lbqb;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, ""

    iget-wide v1, p0, Lbqb;->D:J

    cmp-long v1, v1, v8

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b096c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Lbqb;->D:J

    const/16 v5, 0xa

    shl-long/2addr v3, v5

    invoke-static {v3, v4}, La;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v1, p0, Lbqb;->B:I

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b096d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lbqb;->B:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-wide v1, p0, Lbqb;->C:J

    cmp-long v1, v1, v8

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b096e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Lbqb;->C:J

    invoke-static {v3, v4}, La;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lbqb;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic C(Lbqb;)V
    .locals 13

    const-wide/16 v2, 0x0

    const/4 v10, 0x3

    const/4 v1, 0x0

    iput-wide v2, p0, Lbqb;->D:J

    iget-object v0, p0, Lbqb;->Q:Lzo;

    invoke-virtual {v0}, Lzo;->j()Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lbqb;->Q:Lzo;

    invoke-virtual {v0, v5}, Lzo;->b(Ljava/util/List;)I

    move-result v0

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    if-lez v0, :cond_0

    const/4 v6, 0x2

    iput v6, v4, Landroid/os/Message;->what:I

    iput v0, v4, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lbqb;->R:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v6, Lzk;

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v6, v0, v4}, Lzk;-><init>(Landroid/content/Context;Lzk$b;)V

    move v4, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    iget-boolean v0, p0, Lbqb;->E:Z

    if-nez v0, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget v7, p0, Lbqb;->N:I

    iget-object v8, v6, Lzk;->b:Lzo;

    invoke-virtual {v8, v0}, Lzo;->c(Lkw;)Z

    move-result v8

    invoke-virtual {v6, v0, v8, v7}, Lzk;->a(Lkw;ZI)J

    move-result-wide v7

    iget-object v9, p0, Lbqb;->Q:Lzo;

    invoke-virtual {v9, v0}, Lzo;->c(Lkw;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-long/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lbqb;->u:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    const/4 v8, 0x4

    invoke-virtual {v7, v0, v8}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v7, 0x1

    iput v7, v0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lbqb;->R:Landroid/os/Handler;

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v7, 0x32

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    move-wide v11, v2

    move-wide v1, v11

    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-wide v11, v1

    move-wide v2, v11

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbqb;->R:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    move v0, v1

    move-wide v11, v2

    move-wide v1, v11

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbqb;->P:Lvh;

    invoke-virtual {v0}, Lvh;->b()V

    const-wide/16 v0, 0x400

    div-long v0, v2, v0

    iput-wide v0, p0, Lbqb;->D:J

    iget-object v0, p0, Lbqb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method static synthetic D(Lbqb;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x7

    iget v0, p0, Lbqb;->N:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbqb;->R:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lpn;->a()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lpn;->a:Lpn;

    if-nez v2, :cond_2

    new-instance v2, Lpn;

    invoke-direct {v2}, Lpn;-><init>()V

    sput-object v2, Lpn;->a:Lpn;

    :cond_2
    sget-object v2, Lpn;->a:Lpn;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v2, v0}, Lpn;->a(Lkw;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lkw;->m()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v0}, Lbqb;->a(Lkw;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbqb;->R:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lbqb;->R:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_7

    iget-boolean v0, p0, Lbqb;->E:Z

    if-nez v0, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-static {v0}, Lpn;->b(Lkw;)Z

    move-result v5

    iget-object v6, p0, Lbqb;->u:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    const/4 v7, 0x4

    invoke-virtual {v6, v0, v7}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x5

    iput v0, v6, Landroid/os/Message;->what:I

    add-int/lit8 v0, v2, 0x1

    iput v0, v6, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_6

    move v0, v1

    :goto_3
    iput v0, v6, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lbqb;->R:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v5, 0x32

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lbqb;->R:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method static synthetic E(Lbqb;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbqb;->K:Ljava/util/ArrayList;

    new-instance v0, Lbqf;

    invoke-direct {v0, p0}, Lbqf;-><init>(Lbqb;)V

    invoke-static {}, Lpt;->a()Lpt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpt;->a(Lpt$a;)V

    return-void
.end method

.method static synthetic F(Lbqb;)Z
    .locals 1

    iget-boolean v0, p0, Lbqb;->v:Z

    return v0
.end method

.method static synthetic G(Lbqb;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lbqb;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic H(Lbqb;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic I(Lbqb;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbqb;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic J(Lbqb;)V
    .locals 5

    const v4, 0x7f090035

    const v2, 0x7f020193

    const/4 v3, 0x0

    iget-object v0, p0, Lbqb;->Q:Lzo;

    invoke-virtual {v0}, Lzo;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqb;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    const v1, 0x7f0b094c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbqb;->o:Landroid/widget/TextView;

    const v1, 0x7f0b0950

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lbqb;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f080223

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget v0, p0, Lbqb;->w:I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lbqb;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    const v1, 0x7f0b094b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbqb;->o:Landroid/widget/TextView;

    const v1, 0x7f0b094f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lbqb;->w:I

    const/16 v1, 0x50

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lbqb;->p:Landroid/widget/ImageView;

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    const v1, 0x7f0b094a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbqb;->o:Landroid/widget/TextView;

    const v1, 0x7f0b094e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbqb;->p:Landroid/widget/ImageView;

    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    const v1, 0x7f0b0949

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbqb;->o:Landroid/widget/TextView;

    const v1, 0x7f0b094d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method static synthetic K(Lbqb;)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lbqr;

    invoke-direct {v1}, Lbqr;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lbqb;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic L(Lbqb;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lbqb;->I:I

    return v0
.end method

.method static synthetic M(Lbqb;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lbqb;->K:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic N(Lbqb;)Lcom/tencent/tmsecure/module/software/SoftwareManager;
    .locals 1

    iget-object v0, p0, Lbqb;->u:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    return-object v0
.end method

.method static synthetic O(Lbqb;)I
    .locals 1

    iget v0, p0, Lbqb;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbqb;->I:I

    return v0
.end method

.method static synthetic P(Lbqb;)I
    .locals 1

    iget v0, p0, Lbqb;->I:I

    return v0
.end method

.method static synthetic Q(Lbqb;)I
    .locals 1

    iget v0, p0, Lbqb;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbqb;->J:I

    return v0
.end method

.method static synthetic R(Lbqb;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbqb;->R:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic S(Lbqb;)I
    .locals 1

    iget v0, p0, Lbqb;->w:I

    return v0
.end method

.method static synthetic T(Lbqb;)V
    .locals 1

    invoke-static {}, Lvh;->g()I

    move-result v0

    iput v0, p0, Lbqb;->w:I

    return-void
.end method

.method static synthetic U(Lbqb;)V
    .locals 0

    invoke-direct {p0}, Lbqb;->b()V

    return-void
.end method

.method static synthetic V(Lbqb;)V
    .locals 3

    iget-object v0, p0, Lbqb;->O:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;

    const/4 v1, 0x1

    iget v2, p0, Lbqb;->w:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->changeBMW(II)V

    :try_start_0
    new-instance v0, Lbqj;

    invoke-direct {v0, p0}, Lbqj;-><init>(Lbqb;)V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getCPUscale(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lbqb;->z:Lbqb$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqb;->z:Lbqb$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lbqb$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic W(Lbqb;)F
    .locals 1

    iget v0, p0, Lbqb;->x:F

    return v0
.end method

.method static synthetic X(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;
    .locals 1

    iget-object v0, p0, Lbqb;->O:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;

    return-object v0
.end method

.method static synthetic Y(Lbqb;)Z
    .locals 1

    iget-boolean v0, p0, Lbqb;->L:Z

    return v0
.end method

.method static synthetic Z(Lbqb;)Z
    .locals 1

    iget-boolean v0, p0, Lbqb;->M:Z

    return v0
.end method

.method static synthetic a(Lbqb;F)F
    .locals 0

    iput p1, p0, Lbqb;->x:F

    return p1
.end method

.method static synthetic a(Lbqb;I)I
    .locals 0

    iput p1, p0, Lbqb;->H:I

    return p1
.end method

.method static synthetic a(Lbqb;J)J
    .locals 2

    iget-wide v0, p0, Lbqb;->C:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbqb;->C:J

    return-wide v0
.end method

.method static synthetic a(Lbqb;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lbqb;->L:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lbqb;->B:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    const v1, 0x7f0b092d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    iget v3, p0, Lbqb;->B:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    const v1, 0x7f0b092e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lpn;->a()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lpn;->a:Lpn;

    if-nez v1, :cond_2

    new-instance v1, Lpn;

    invoke-direct {v1}, Lpn;-><init>()V

    sput-object v1, Lpn;->a:Lpn;

    :cond_2
    sget-object v4, Lpn;->a:Lpn;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->m()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v0}, Lbqb;->a(Lkw;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4, v0}, Lpn;->a(Lkw;)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v3

    :goto_2
    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lbqb;->N:I

    if-nez v0, :cond_5

    if-lez v3, :cond_5

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b067b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    const v3, 0x7f0b067a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v1

    move v1, v3

    goto :goto_2
.end method

.method static synthetic a(Lbqb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbqb;->M:Z

    return p1
.end method

.method private a(Lkw;)Z
    .locals 3

    iget-object v0, p0, Lbqb;->y:Lcom/tencent/tmsecure/module/applist/AppListManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    iput-object v0, p0, Lbqb;->y:Lcom/tencent/tmsecure/module/applist/AppListManager;

    :cond_0
    iget-object v0, p0, Lbqb;->y:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LQQPIM/SoftListType;->WHITELIST_COMMON:LQQPIM/SoftListType;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v0

    return v0
.end method

.method static synthetic aa(Lbqb;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbqb;->S:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lbqb;I)I
    .locals 0

    iput p1, p0, Lbqb;->J:I

    return p1
.end method

.method static synthetic b(Lbqb;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;
    .locals 1

    iget-object v0, p0, Lbqb;->c:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    return-object v0
.end method

.method private b()V
    .locals 13

    const-wide/16 v11, 0x0

    const v10, 0x7f0b096a

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v0, p0, Lbqb;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqb;->d:Landroid/widget/TextView;

    const v1, 0x7f0b0957

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-static {}, Lvh;->g()I

    move-result v0

    iput v0, p0, Lbqb;->w:I

    iget-object v0, p0, Lbqb;->c:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-boolean v1, p0, Lbqb;->L:Z

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lbqb;->D:J

    cmp-long v1, v3, v11

    if-lez v1, :cond_1

    iget v1, p0, Lbqb;->A:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const v3, 0x7f0b092b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, p0, Lbqb;->A:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    iget-wide v4, p0, Lbqb;->D:J

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, La;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const v3, 0x7f0b096f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lbqb;->L:Z

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lbqb;->C:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_4

    iget-wide v0, p0, Lbqb;->C:J

    invoke-static {v0, v1}, La;->b(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const v3, 0x7f0b092f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :goto_3
    iget v0, p0, Lbqb;->N:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lbqb;->c:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbqb;->c:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lbqb;->d:Landroid/widget/TextView;

    const v1, 0x7f0b0956

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const v3, 0x7f0b092c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lbqb;->w:I

    invoke-static {v1}, Lvh;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0958

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lbqb;->w:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    const-string v1, "<font color=\"#FF0000\">"

    const-string v3, "</font>"

    iget-object v4, p0, Lbqb;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0959

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lbqb;->w:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0930

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    :cond_5
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0968

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbqc;

    invoke-direct {v1, p0}, Lbqc;-><init>(Lbqb;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4
.end method

.method static synthetic c(Lbqb;I)I
    .locals 0

    iput p1, p0, Lbqb;->A:I

    return p1
.end method

.method static synthetic c(Lbqb;)Lbqb$a;
    .locals 1

    iget-object v0, p0, Lbqb;->z:Lbqb$a;

    return-object v0
.end method

.method private c()V
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lbqb;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbqb;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbqb;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbqb;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lbqb;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lbqb;->getNotificationHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Lbql;

    invoke-direct {v2, p0}, Lbql;-><init>(Lbqb;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lbqb;->j:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v2, Lbqm;

    invoke-direct {v2, p0}, Lbqm;-><init>(Lbqb;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lbqb;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v4, v4, v0, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Lbqn;

    invoke-direct {v0, p0}, Lbqn;-><init>(Lbqb;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lbqb;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic d(Lbqb;I)I
    .locals 0

    iput p1, p0, Lbqb;->N:I

    return p1
.end method

.method static synthetic d(Lbqb;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lbqb;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lbqe;

    invoke-direct {v1, p0}, Lbqe;-><init>(Lbqb;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lbqb;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic e(Lbqb;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lbqb;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lbqb;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lbqb;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lbqb;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method static synthetic h(Lbqb;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lbqb;->r:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic i(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;
    .locals 1

    iget-object v0, p0, Lbqb;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    return-object v0
.end method

.method static synthetic j(Lbqb;)V
    .locals 2

    invoke-direct {p0}, Lbqb;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbqb;->E:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbqq;

    invoke-direct {v1, p0}, Lbqq;-><init>(Lbqb;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65f8

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

.method static synthetic k(Lbqb;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lbqb;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic l(Lbqb;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lbqb;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic m(Lbqb;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqb;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lbqb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lbqb;)I
    .locals 1

    iget v0, p0, Lbqb;->H:I

    return v0
.end method

.method static synthetic p(Lbqb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lbqb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lbqb;)I
    .locals 1

    iget v0, p0, Lbqb;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbqb;->B:I

    return v0
.end method

.method static synthetic s(Lbqb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic t(Lbqb;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;
    .locals 1

    iget-object v0, p0, Lbqb;->l:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    return-object v0
.end method

.method static synthetic u(Lbqb;)I
    .locals 1

    iget v0, p0, Lbqb;->J:I

    return v0
.end method

.method static synthetic v(Lbqb;)Z
    .locals 1

    iget-boolean v0, p0, Lbqb;->E:Z

    return v0
.end method

.method static synthetic w(Lbqb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic x(Lbqb;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lbqb;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f080223

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lbqb;->p:Landroid/widget/ImageView;

    const v1, 0x7f020193

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    const v1, 0x7f0b0951

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fd51eb851eb851fL

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v0, p0, Lbqb;->o:Landroid/widget/TextView;

    const v1, 0x7f0b0952

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    const-wide v2, 0x3fe51eb851eb851fL

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lbqb;->o:Landroid/widget/TextView;

    const v1, 0x7f0b0953

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbqb;->o:Landroid/widget/TextView;

    const v1, 0x7f0b0954

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic y(Lbqb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic z(Lbqb;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbqb;->h:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-direct {p0}, Lbqb;->d()V

    const/4 v0, -0x1

    iput v0, p0, Lbqb;->J:I

    iget-object v0, p0, Lbqb;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbqb;->l:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v1, p0, Lbqb;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbqb;->l:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->notifyDataSetChanged()V

    iget-boolean v0, p0, Lbqb;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbqb;->G:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-wide v0, p0, Lbqb;->F:J

    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    :cond_0
    return-void
.end method

.method public final onBackClick()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lbqb;->N:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lbqb;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbqb;->v:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbqb;->F:J

    iput-boolean v3, p0, Lbqb;->G:Z

    iput-boolean v3, p0, Lbqb;->a:Z

    iput-boolean v3, p0, Lbqb;->v:Z

    iput v2, p0, Lbqb;->A:I

    iput v2, p0, Lbqb;->B:I

    iput-wide v6, p0, Lbqb;->C:J

    iput-wide v6, p0, Lbqb;->D:J

    iget-object v0, p0, Lbqb;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbqb;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbqb;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbqb;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbqb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lbqb;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lbqb;->getNotificationHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v5, v5, v5, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v2, Lbqk;

    invoke-direct {v2, p0}, Lbqk;-><init>(Lbqb;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lbqb;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v4, v4, v4, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lbqb;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lbqb;->a:Z

    iput-boolean v2, p0, Lbqb;->v:Z

    iget-object v0, p0, Lbqb;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0928

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lbqb;->b()V

    iget-object v0, p0, Lbqb;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    invoke-direct {p0}, Lbqb;->c()V

    goto/16 :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lbqb;->M:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lbqb;->a:Z

    iput-boolean v3, p0, Lbqb;->E:Z

    iput-boolean v2, p0, Lbqb;->v:Z

    iget-object v0, p0, Lbqb;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    invoke-direct {p0}, Lbqb;->c()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f080031 -> :sswitch_1
        0x7f080224 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f0801e2

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbqb;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lbqb;->d:Landroid/widget/TextView;

    const v1, 0x7f0b0956

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbqb;->b:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lbqb;->c:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v0, p0, Lbqb;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lbqb;->c:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lbqb;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f080224

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbqb;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lbqb;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080225

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbqb;->r:Landroid/widget/FrameLayout;

    const v0, 0x7f080226

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iput-object v0, p0, Lbqb;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbqb;->t:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lbqb;->t:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080227

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbqb;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f080228

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbqb;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f080229

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbqb;->h:Landroid/widget/TextView;

    const v0, 0x7f08022a

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbqb;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f080176

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbqb;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbqb;->j:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbqb;->j:Landroid/widget/ListView;

    iget-object v3, p0, Lbqb;->k:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/util/List;Lsl;)V

    iput-object v0, p0, Lbqb;->l:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v0, p0, Lbqb;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lbqb;->l:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lbqb;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    iget-object v0, p0, Lbqb;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setTranscriptMode(I)V

    const v0, 0x7f080221

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbqb;->p:Landroid/widget/ImageView;

    const v0, 0x7f080222

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbqb;->n:Landroid/widget/TextView;

    const v0, 0x7f0801e1

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbqb;->o:Landroid/widget/TextView;

    const v0, 0x7f0801bb

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbqb;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f080220

    invoke-virtual {p0, v0}, Lbqb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;

    iput-object v0, p0, Lbqb;->O:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;

    iget-object v0, p0, Lbqb;->O:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;

    invoke-virtual {v0, v5, v6}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->changeBMW(II)V

    iget-object v0, p0, Lbqb;->O:Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;

    invoke-virtual {v0, v7, v6}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView;->changeBMW(II)V

    iget-object v0, p0, Lbqb;->S:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-boolean v0, p0, Lbqb;->v:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    iget-object v0, p0, Lbqb;->c:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lbqb;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/RunningProcessesActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lbqb;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v0, 0x65d1

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lbqb;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/BootOptimizeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lbpp;->a:Ljava/lang/String;

    iget v3, p0, Lbqb;->N:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lbqb;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v0, 0x65d2

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lbqb;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/DataClearActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lbqb;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v0, 0x65d3

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbqb;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/systemoptimize/DeepCleanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lbqb;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
        0x2e -> :sswitch_3
    .end sparse-switch
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    iget-object v0, p0, Lbqb;->z:Lbqb$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbqb$a;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbqb;->z:Lbqb$a;

    return-void
.end method

.method public final onResume()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbqb;->L:Z

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget-object v0, p0, Lbqb;->Q:Lzo;

    invoke-virtual {v0}, Lzo;->e()V

    iget-object v0, p0, Lbqb;->P:Lvh;

    invoke-virtual {v0}, Lvh;->d()V

    iget-object v0, p0, Lbqb;->z:Lbqb$a;

    if-nez v0, :cond_0

    new-instance v0, Lbqb$a;

    invoke-direct {v0, p0, v1}, Lbqb$a;-><init>(Lbqb;B)V

    iput-object v0, p0, Lbqb;->z:Lbqb$a;

    iget-object v0, p0, Lbqb;->z:Lbqb$a;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lbqb$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lbqb;->b()V

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

    const v0, 0x7f0b0955

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
