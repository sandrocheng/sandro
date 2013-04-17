.class public final Lams;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

.field private c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Lsy;

.field private h:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

.field private i:Lzs;

.field private j:Ljp;

.field private k:Lhi;

.field private l:Lki;

.field private m:Lho;

.field private n:Ljm;

.field private o:Z

.field private p:Z

.field private q:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private r:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lams;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lams;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lams;->f:Z

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lamt;

    invoke-direct {v1, p0}, Lamt;-><init>(Lams;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lams;->s:Landroid/os/Handler;

    iput p3, p0, Lams;->d:I

    iput-object p2, p0, Lams;->q:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-void
.end method

.method static synthetic A(Lams;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lams;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic B(Lams;)Ljp;
    .locals 1

    iget-object v0, p0, Lams;->j:Ljp;

    return-object v0
.end method

.method static synthetic C(Lams;)Lki;
    .locals 1

    iget-object v0, p0, Lams;->l:Lki;

    return-object v0
.end method

.method static synthetic D(Lams;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic E(Lams;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lams;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic F(Lams;)Lhi;
    .locals 1

    iget-object v0, p0, Lams;->k:Lhi;

    return-object v0
.end method

.method static synthetic G(Lams;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic H(Lams;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lams;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private a()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lams;->mDataList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    iget-boolean v0, v0, Lle;->d:Z

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method static synthetic a(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lams;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 0

    iput-object p1, p0, Lams;->r:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    const/4 p2, 0x0

    move-object v1, p2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-eqz v1, :cond_0

    iget-object v0, p0, Lams;->h:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0409

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v1, p2

    goto :goto_0
.end method

.method private a(ILjava/util/List;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b000c

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v0, 0x7f0b020c

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v6, 0x7f0b0045

    new-instance v0, Lamv;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lamv;-><init>(Lams;ILjava/util/List;Landroid/os/Handler;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v6, v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lamw;

    invoke-direct {v1, v5}, Lamw;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v0, v1, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    const v1, 0x7f0b04ed

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static synthetic a(Lams;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V
    .locals 3

    new-instance v0, Lmh;

    invoke-direct {v0}, Lmh;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lmh;->a:I

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-static {v1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmh;->b:I

    iget-wide v1, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    iput-wide v1, v0, Lmh;->c:J

    const/4 v1, 0x0

    iput v1, v0, Lmh;->d:I

    iget-object v1, p0, Lams;->mContext:Landroid/content/Context;

    invoke-static {v1}, La;->h(Landroid/content/Context;)Z

    iget-object v1, p0, Lams;->n:Ljm;

    invoke-virtual {v1, v0}, Ljm;->a(Lmh;)V

    return-void
.end method

.method static synthetic a(Lams;Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lanb;

    invoke-direct {v1, p0, p1}, Lanb;-><init>(Lams;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lams;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lams;->s:Landroid/os/Handler;

    iget-object v1, p0, Lams;->s:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lanc;

    invoke-direct {v1, p0, p1, p2}, Lanc;-><init>(Lams;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lams;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0546

    invoke-static {v1, v2}, Lha;->c(Landroid/content/Context;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lams;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b05d1

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v0, 0x7f0b05cf

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v6, 0x7f0b0045

    new-instance v0, Lamu;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lamu;-><init>(Lams;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v6, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Lams;Lmk;)V
    .locals 3

    new-instance v0, Lmh;

    invoke-direct {v0}, Lmh;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lmh;->a:I

    iget-object v1, p1, Lmk;->phonenum:Ljava/lang/String;

    invoke-static {v1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmh;->b:I

    iget-wide v1, p1, Lmk;->date:J

    iput-wide v1, v0, Lmh;->c:J

    iget-object v1, p1, Lmk;->body:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lmk;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmh;->d:I

    :cond_0
    iget-object v1, p0, Lams;->mContext:Landroid/content/Context;

    invoke-static {v1}, La;->h(Landroid/content/Context;)Z

    iget-object v1, p0, Lams;->n:Ljm;

    invoke-virtual {v1, v0}, Ljm;->a(Lmh;)V

    return-void
.end method

.method static synthetic b(Lams;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lams;->r:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    iget-boolean v0, v0, Lle;->d:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static synthetic b(Lams;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lams;->s:Landroid/os/Handler;

    iget-object v1, p0, Lams;->s:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lana;

    invoke-direct {v1, p0, p1}, Lana;-><init>(Lams;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lams;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lams;->s:Landroid/os/Handler;

    iget-object v1, p0, Lams;->s:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Land;

    invoke-direct {v1, p0, p1, p2}, Land;-><init>(Lams;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lams;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0546

    invoke-static {v1, v2}, Lha;->c(Landroid/content/Context;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lams;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b05d1

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v0, 0x7f0b05d0

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v6, 0x7f0b0045

    new-instance v0, Lane;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lane;-><init>(Lams;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v6, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic c(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lams;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lams;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lams;)Lsy;
    .locals 1

    iget-object v0, p0, Lams;->g:Lsy;

    return-object v0
.end method

.method static synthetic j(Lams;)I
    .locals 1

    iget v0, p0, Lams;->d:I

    return v0
.end method

.method static synthetic k(Lams;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lams;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lams;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lams;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lams;)Lho;
    .locals 1

    iget-object v0, p0, Lams;->m:Lho;

    return-object v0
.end method

.method static synthetic p(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic t(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic u(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic v(Lams;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic w(Lams;)Ljm;
    .locals 1

    iget-object v0, p0, Lams;->n:Ljm;

    return-object v0
.end method

.method static synthetic x(Lams;)Lzs;
    .locals 1

    iget-object v0, p0, Lams;->i:Lzs;

    return-object v0
.end method

.method static synthetic y(Lams;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lams;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic z(Lams;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lams;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 8

    const/4 v7, 0x1

    new-instance v0, Lahw;

    iget-object v1, p0, Lams;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lams;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v7, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2, v7}, Lahw;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    return-object v0
.end method

.method public final createOperatingBarDataList()Ljava/util/List;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lams;->d:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/16 v2, 0x3ea

    const v3, 0x7f0b052d

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    iput-object v1, p0, Lams;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    iget-object v1, p0, Lams;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    iget-object v1, p0, Lams;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    iget v1, p0, Lams;->d:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lams;->d:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lams;->d:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lams;->d:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lams;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setVisible(I)V

    :cond_1
    iget-object v1, p0, Lams;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :pswitch_0
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/16 v2, 0x3e8

    const v3, 0x7f0b0031

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    iput-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/16 v2, 0x3e9

    const v3, 0x7f0b0053

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    iput-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    iget-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    iget-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setButtonIconid(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lams;->q:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lams;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 16

    const/4 v12, 0x0

    const v11, 0x7f0b0086

    const v10, 0x7f0b044c

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lams;->o:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lams;->d:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lams;->d:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lams;->p:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lams;->o:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lams;->p:Z

    if-nez v1, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget v1, v0, Lams;->d:I

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lams;->o:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lams;->o:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->j:Ljp;

    invoke-virtual {v1}, Ljp;->a()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lams;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v2, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    iget v4, v1, Lmk;->protocolType:I

    if-ne v4, v5, :cond_6

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lams;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\uff1a"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    new-instance v4, Lle;

    iget v7, v1, Lmk;->id:I

    const-string v7, ""

    invoke-virtual {v1}, Lmk;->a()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lams;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v1, Lmk;->date:J

    invoke-static {v8, v9}, La;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lams;->n:Ljm;

    invoke-virtual {v9, v1}, Ljm;->a(Lmk;)Z

    move-result v1

    invoke-direct {v4, v7, v8, v6, v1}, Lle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lams;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lams;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    new-instance v4, Lle;

    iget v6, v1, Lmk;->id:I

    const-string v6, ""

    invoke-virtual {v1}, Lmk;->a()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lams;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v1, Lmk;->date:J

    invoke-static {v7, v8}, La;->a(J)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lmk;->body:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lams;->n:Ljm;

    invoke-virtual {v9, v1}, Ljm;->a(Lmk;)Z

    move-result v1

    invoke-direct {v4, v6, v7, v8, v1}, Lle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v4

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->k:Lhi;

    invoke-virtual {v1}, Lhi;->b()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lams;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move v2, v3

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lky;

    iget-object v7, v1, Lky;->phonenum:Ljava/lang/String;

    invoke-static {v7}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lams;->l:Lki;

    iget-object v9, v1, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lki;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    new-instance v8, Lle;

    iget v9, v1, Lky;->id:I

    iget-object v9, v1, Lky;->name:Ljava/lang/String;

    iget-object v10, v1, Lky;->phonenum:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lams;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v1, Lky;->date:J

    invoke-static {v10, v11}, La;->a(J)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lky;->phonenum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lams;->n:Ljm;

    iget-object v13, v12, Ljm;->a:Ljava/util/HashMap;

    if-nez v13, :cond_7

    invoke-virtual {v12, v5}, Ljm;->d(I)Ljava/util/HashMap;

    move-result-object v13

    iput-object v13, v12, Ljm;->a:Ljava/util/HashMap;

    :cond_7
    iget-wide v13, v1, Lky;->date:J

    iget-object v1, v1, Lky;->phonenum:Ljava/lang/String;

    invoke-static {v1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    iget-object v1, v12, Ljm;->a:Ljava/util/HashMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljm$a;

    if-eqz v1, :cond_8

    iget v12, v1, Ljm$a;->a:I

    if-ne v12, v15, :cond_8

    iget v1, v1, Ljm$a;->b:I

    if-nez v1, :cond_8

    move v1, v5

    :goto_5
    invoke-direct {v8, v9, v10, v11, v1}, Lle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_4

    :cond_8
    move v1, v3

    goto :goto_5

    :cond_9
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :pswitch_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->l:Lki;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lki;->c(I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lams;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->l:Lki;

    invoke-virtual {v1}, Lki;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmk;

    move-object v2, v0

    move v4, v3

    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    iget-wide v7, v2, Lmk;->date:J

    iget-wide v9, v1, Lmk;->date:J

    cmp-long v1, v7, v9

    if-lez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v1, v5

    :goto_9
    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    move-object/from16 v0, p0

    iput-object v12, v0, Lams;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_c
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lams;->mDataList:Ljava/util/List;

    monitor-enter v6

    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    move-object/from16 v0, p0

    iget-object v2, v0, Lams;->l:Lki;

    iget-object v8, v1, Lmk;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lki;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    iget v2, v1, Lmk;->protocolType:I

    if-ne v2, v5, :cond_10

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v2

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lams;->mContext:Landroid/content/Context;

    const v9, 0x7f0b044c

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\uff1a"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_c
    new-instance v2, Lle;

    iget v9, v1, Lmk;->id:I

    const-string v9, ""

    invoke-virtual {v1}, Lmk;->a()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lams;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v1, Lmk;->date:J

    invoke-static {v10, v11}, La;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-direct {v2, v9, v1, v8, v10}, Lle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_e
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_b

    :cond_d
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_8

    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    iput-object v1, v0, Lams;->a:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_a

    :cond_f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lams;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0086

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lams;->mContext:Landroid/content/Context;

    const v12, 0x7f0b044c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1

    :cond_10
    :try_start_4
    new-instance v2, Lle;

    iget v8, v1, Lmk;->id:I

    const-string v8, ""

    invoke-virtual {v1}, Lmk;->a()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lams;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v1, Lmk;->date:J

    invoke-static {v9, v10}, La;->a(J)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v1, Lmk;->body:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v2, v8, v9, v1, v10}, Lle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    goto :goto_d

    :cond_11
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_12
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_13
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :pswitch_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->l:Lki;

    invoke-virtual {v1}, Lki;->getAllCallLog()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lams;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move v2, v3

    :goto_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v6, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-static {v6}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lams;->l:Lki;

    iget-object v8, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lki;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    new-instance v7, Lle;

    iget v8, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->id:I

    iget-object v8, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->name:Ljava/lang/String;

    iget-object v9, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lams;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    invoke-static {v9, v10}, La;->a(J)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v1, v10}, Lle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_10
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f

    :cond_14
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_10

    :catch_1
    move-exception v1

    move-object/from16 v0, p0

    iput-object v12, v0, Lams;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    :try_start_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lams;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :cond_16
    move v1, v3

    goto/16 :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    return-void
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    invoke-virtual {p0}, Lams;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-static {v0}, Lsy;->b(Landroid/app/Activity;)Lsy;

    move-result-object v0

    iput-object v0, p0, Lams;->g:Lsy;

    const-class v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    iput-object v0, p0, Lams;->h:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v3, "mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lams;->j:Ljp;

    new-instance v0, Lhi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhi;-><init>(I)V

    iput-object v0, p0, Lams;->k:Lhi;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Lams;->l:Lki;

    new-instance v0, Lzs;

    iget-object v1, p0, Lams;->mContext:Landroid/content/Context;

    invoke-direct {v0}, Lzs;-><init>()V

    iput-object v0, p0, Lams;->i:Lzs;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lams;->m:Lho;

    sget-object v0, Ljm;->b:Ljm;

    if-nez v0, :cond_0

    new-instance v0, Ljm;

    invoke-direct {v0}, Ljm;-><init>()V

    sput-object v0, Ljm;->b:Ljm;

    :cond_0
    sget-object v0, Ljm;->b:Ljm;

    iput-object v0, p0, Lams;->n:Ljm;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lams;->o:Z

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    iget-boolean v1, v0, Lle;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lle;->d:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lle;->d:Z

    invoke-direct {p0}, Lams;->a()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    iget-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    iget-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v4, 0x7f02005b

    invoke-virtual {v1, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setButtonIconid(I)V

    :goto_2
    iget-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setNumber(I)V

    iget-boolean v1, p0, Lams;->e:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    iput-boolean v2, p0, Lams;->e:Z

    invoke-virtual {p0}, Lams;->refreshListData()V

    :cond_2
    :goto_3
    iget-object v0, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lams;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    invoke-virtual {p0}, Lams;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    iget-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    iget-object v1, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v4, 0x7f02005c

    invoke-virtual {v1, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setButtonIconid(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iput-boolean v3, p0, Lams;->e:Z

    invoke-virtual {p0}, Lams;->refreshListData()V

    goto :goto_3
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 7

    const/4 v3, -0x2

    const-wide/high16 v5, 0x4000

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lams;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lams;->d:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lams;->b()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lams;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1, v0, v2}, Lams;->a(ILjava/util/List;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lams;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lams;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v2, v0, v1}, Lams;->a(ILjava/util/List;Landroid/os/Handler;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lams;->e:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lams;->e:Z

    :goto_1
    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    iput-boolean v2, v0, Lle;->d:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lams;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lams;->e:Z

    move v2, v1

    :goto_2
    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    iput-boolean v1, v0, Lle;->d:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lams;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lams;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f02027c

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIcon(I)V

    const v0, 0x7f0b0486

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const/4 v0, 0x0

    iget v3, p0, Lams;->d:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    iget v3, p0, Lams;->d:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    :cond_5
    iget-object v0, p0, Lams;->m:Lho;

    invoke-virtual {v0}, Lho;->aH()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    const v3, 0x7f0b048a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0045

    new-instance v3, Lamx;

    invoke-direct {v3, p0, v1, v2}, Lamx;-><init>(Lams;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v0, v3

    if-nez v0, :cond_8

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    const v3, 0x7f0b048b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    const v3, 0x7f0b048c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    iget v3, p0, Lams;->d:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_a

    iget v3, p0, Lams;->d:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    :cond_a
    iget-object v0, p0, Lams;->m:Lho;

    invoke-virtual {v0}, Lho;->aJ()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    const v3, 0x7f0b048d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v0, v3

    if-nez v0, :cond_c

    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    const v3, 0x7f0b048e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lams;->mContext:Landroid/content/Context;

    const v3, 0x7f0b048f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget-object v0, p0, Lams;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final refreshListData()V
    .locals 10

    const v2, 0x7f0b05c6

    const v1, 0x7f0b05c5

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lams;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lams;->hideEmptyView()V

    :goto_0
    iput-boolean v9, p0, Lams;->f:Z

    invoke-virtual {p0}, Lams;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lams;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lahw;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lams;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lahw;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lams;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v8}, Lams;->setReloadData(Z)V

    iget-object v0, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-direct {p0}, Lams;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setNumber(I)V

    invoke-direct {p0}, Lams;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v8}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    iget-object v0, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v8}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    iget-object v0, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setButtonIconid(I)V

    :goto_1
    iget-object v0, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lams;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    iget-boolean v0, p0, Lams;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lams;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    iget-object v1, p0, Lams;->mContext:Landroid/content/Context;

    const v2, 0x7f0b052d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setText(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lams;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lams;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    return-void

    :cond_0
    iget v0, p0, Lams;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lams;->setEmptyText(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2}, Lams;->setEmptyText(I)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b05c8

    invoke-virtual {p0, v0}, Lams;->setEmptyText(I)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b05ca

    invoke-virtual {p0, v0}, Lams;->setEmptyText(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Lams;->setEmptyText(I)V

    goto/16 :goto_0

    :pswitch_5
    const v0, 0x7f0b05cb

    invoke-virtual {p0, v0}, Lams;->setEmptyText(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0, v2}, Lams;->setEmptyText(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v0, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v9}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    iget-object v0, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v9}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    iget-object v0, p0, Lams;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setButtonIconid(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lams;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    iget-object v1, p0, Lams;->mContext:Landroid/content/Context;

    const v2, 0x7f0b052f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setText(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 3

    const v2, 0x7f0b052b

    const v1, 0x7f0b0031

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    iget v0, p0, Lams;->d:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    goto :goto_0

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
