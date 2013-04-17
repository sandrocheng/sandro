.class public final Lamp;
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

.field private i:Ljp;

.field private j:Lhi;

.field private k:Lki;

.field private l:Ljm;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamp;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lamp;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lamp;->f:Z

    iput p2, p0, Lamp;->d:I

    return-void
.end method

.method private a()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lamp;->mDataList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

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

    iget-object v0, p0, Lamp;->h:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

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

    iget-object v0, p0, Lamp;->mContext:Landroid/content/Context;

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

.method static synthetic a(Lamp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    return-object v0
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

    iget-object v0, p0, Lamp;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b000c

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v0, 0x7f0b020c

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v6, 0x7f0b0045

    new-instance v0, Lamq;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lamq;-><init>(Lamp;ILjava/util/List;Landroid/os/Handler;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v6, v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lamr;

    invoke-direct {v1, v5}, Lamr;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v0, v1, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lamp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b04ed

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0
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

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

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

.method static synthetic b(Lamp;)Lsy;
    .locals 1

    iget-object v0, p0, Lamp;->g:Lsy;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Lahw;

    iget-object v1, p0, Lamp;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lamp;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2, v7}, Lahw;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    return-object v0
.end method

.method public final createOperatingBarDataList()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lamp;->d:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lamp;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/16 v2, 0x3ea

    const v3, 0x7f0b052d

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    iput-object v1, p0, Lamp;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    iget-object v1, p0, Lamp;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    iget v1, p0, Lamp;->d:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lamp;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lamp;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setVisible(I)V

    :cond_1
    iget-object v1, p0, Lamp;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :pswitch_0
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/16 v2, 0x3e8

    const v3, 0x7f0b0031

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    iput-object v1, p0, Lamp;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/16 v2, 0x3e9

    const v3, 0x7f0b0053

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    iput-object v1, p0, Lamp;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final loadDataList()V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lamp;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lamp;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lamp;->n:Z

    :cond_0
    iget-boolean v0, p0, Lamp;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lamp;->n:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lamp;->d:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lamp;->m:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lamp;->m:Z

    :cond_3
    iget-object v0, p0, Lamp;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lamp;->i:Ljp;

    invoke-virtual {v0}, Ljp;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lamp;->a:Ljava/util/List;

    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    :goto_1
    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    new-instance v3, Lle;

    iget v4, v0, Lmk;->id:I

    iget-object v4, v0, Lmk;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lamp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lmk;->date:J

    invoke-static {v5, v6}, La;->a(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lmk;->body:Ljava/lang/String;

    iget-object v7, p0, Lamp;->l:Ljm;

    invoke-virtual {v7, v0}, Ljm;->a(Lmk;)Z

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Lle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lamp;->j:Lhi;

    invoke-virtual {v0}, Lhi;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lamp;->a:Ljava/util/List;

    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    :goto_2
    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    new-instance v3, Lle;

    iget v4, v0, Lky;->id:I

    iget-object v4, v0, Lky;->name:Ljava/lang/String;

    iget-object v5, v0, Lky;->phonenum:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lamp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lky;->date:J

    invoke-static {v5, v6}, La;->a(J)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lky;->phonenum:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0, v2}, Lle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lamp;->k:Lki;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lki;->c(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lamp;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v3, p0, Lamp;->mDataList:Ljava/util/List;

    monitor-enter v3

    move v1, v2

    :goto_4
    :try_start_1
    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lamp;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    new-instance v4, Lle;

    iget v5, v0, Lmk;->id:I

    iget-object v5, v0, Lmk;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lamp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lmk;->date:J

    invoke-static {v6, v7}, La;->a(J)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lmk;->body:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v0, v7}, Lle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lamp;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_3

    :cond_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    invoke-virtual {p0}, Lamp;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-static {v0}, Lsy;->b(Landroid/app/Activity;)Lsy;

    move-result-object v0

    iput-object v0, p0, Lamp;->g:Lsy;

    const-class v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    iput-object v0, p0, Lamp;->h:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v3, "mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lamp;->i:Ljp;

    new-instance v0, Lhi;

    invoke-direct {v0, v4}, Lhi;-><init>(I)V

    iput-object v0, p0, Lamp;->j:Lhi;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Lamp;->k:Lki;

    sget-object v0, Ljm;->b:Ljm;

    if-nez v0, :cond_0

    new-instance v0, Ljm;

    invoke-direct {v0}, Ljm;-><init>()V

    sput-object v0, Ljm;->b:Ljm;

    :cond_0
    sget-object v0, Ljm;->b:Ljm;

    iput-object v0, p0, Lamp;->l:Ljm;

    iput-boolean v5, p0, Lamp;->m:Z

    iget v0, p0, Lamp;->d:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lhi;

    invoke-direct {v0, v4}, Lhi;-><init>(I)V

    iput-object v0, p0, Lamp;->j:Lhi;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lhi;

    invoke-direct {v0, v5}, Lhi;-><init>(I)V

    iput-object v0, p0, Lamp;->j:Lhi;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p3, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    iget-boolean v1, v0, Lle;->d:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lle;->d:Z

    invoke-direct {p0}, Lamp;->a()I

    move-result v0

    iget-object v1, p0, Lamp;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setNumber(I)V

    iget-object v1, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iput-boolean v3, p0, Lamp;->e:Z

    invoke-virtual {p0}, Lamp;->refreshListData()V

    :goto_2
    iget-object v0, p0, Lamp;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lamp;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    invoke-virtual {p0}, Lamp;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lamp;->e:Z

    invoke-virtual {p0}, Lamp;->refreshListData()V

    goto :goto_2
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lamp;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lamp;->d:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lamp;->b()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lamp;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1, v0, v2}, Lamp;->a(ILjava/util/List;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lamp;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lamp;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v2, v0, v1}, Lamp;->a(ILjava/util/List;Landroid/os/Handler;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lamp;->e:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lamp;->e:Z

    :goto_1
    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    iput-boolean v2, v0, Lle;->d:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lamp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lamp;->e:Z

    move v2, v1

    :goto_2
    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    iput-boolean v1, v0, Lle;->d:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lamp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Lamp;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final refreshListData()V
    .locals 9

    const v2, 0x7f0b05c5

    const/4 v1, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lamp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lamp;->hideEmptyView()V

    :goto_0
    iput-boolean v1, p0, Lamp;->f:Z

    invoke-virtual {p0}, Lamp;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lamp;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lahw;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lamp;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lahw;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lamp;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v8}, Lamp;->setReloadData(Z)V

    iget-object v0, p0, Lamp;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-direct {p0}, Lamp;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setNumber(I)V

    iget-object v0, p0, Lamp;->b:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lamp;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    iget-boolean v0, p0, Lamp;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lamp;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    iget-object v1, p0, Lamp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b052d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lamp;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lamp;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    return-void

    :cond_0
    iget v0, p0, Lamp;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v2}, Lamp;->setEmptyText(I)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b05c6

    invoke-virtual {p0, v0}, Lamp;->setEmptyText(I)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b05c8

    invoke-virtual {p0, v0}, Lamp;->setEmptyText(I)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b05ca

    invoke-virtual {p0, v0}, Lamp;->setEmptyText(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v2}, Lamp;->setEmptyText(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v0, p0, Lamp;->c:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    iget-object v1, p0, Lamp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b052f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setText(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 3

    const v2, 0x7f0b052b

    const v1, 0x7f0b0031

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    iget v0, p0, Lamp;->d:I

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
