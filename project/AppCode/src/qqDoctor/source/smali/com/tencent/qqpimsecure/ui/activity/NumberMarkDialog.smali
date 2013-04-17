.class public Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljb;

.field private b:Lhi;

.field private c:Ljm;

.field private d:Lzs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;)Ljb;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->a:Ljb;

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V
    .locals 5

    new-instance v0, Lky;

    invoke-direct {v0, p1}, Lky;-><init>(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    iget v1, v0, Lky;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-wide v1, v0, Lky;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lky;->duration:J

    iget-wide v1, v0, Lky;->duration:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, v0, Lky;->duration:J

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->b:Lhi;

    invoke-virtual {v1, v0}, Lhi;->a(Lky;)J

    return-void
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lmh;

    invoke-direct {v0}, Lmh;-><init>()V

    iput v3, v0, Lmh;->a:I

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

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->c:Ljm;

    invoke-virtual {v1, v0}, Ljm;->a(Lmh;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->c:Ljm;

    invoke-virtual {v0, v3}, Ljm;->c(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->d:Lzs;

    new-instance v1, Ladt;

    invoke-direct {v1}, Ladt;-><init>()V

    new-instance v2, Laaa;

    invoke-direct {v2, v0, v3, p1, v1}, Laaa;-><init>(Lzs;ZLcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ldv;)V

    invoke-virtual {v2}, Laaa;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v9}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_CALL_LOG_ENTITY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-static {}, Ljb;->a()Ljb;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->a:Ljb;

    new-instance v1, Lhi;

    invoke-direct {v1, v3}, Lhi;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->b:Lhi;

    sget-object v1, Ljm;->b:Ljm;

    if-nez v1, :cond_0

    new-instance v1, Ljm;

    invoke-direct {v1}, Ljm;-><init>()V

    sput-object v1, Ljm;->b:Ljm;

    :cond_0
    sget-object v1, Ljm;->b:Ljm;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->c:Ljm;

    new-instance v1, Lzs;

    invoke-direct {v1}, Lzs;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->d:Lzs;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030097

    invoke-virtual {v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0801d0

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0b0650

    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x4170

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, 0x7f0801cf

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v4, 0x7f02027e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f080153

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    const v4, 0x7f0801d1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v2, v9}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setClickable(Z)V

    invoke-virtual {v2, v9}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setFocusable(Z)V

    new-instance v4, Ladr;

    invoke-direct {v4, p0}, Ladr;-><init>(Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;)V

    invoke-virtual {v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07002d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_1

    new-instance v6, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v6}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v7, v4, v2

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v8, v7, v9

    iput-object v8, v6, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    new-instance v7, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;

    invoke-direct {v7}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;->setContextMenuName(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->markType:I

    invoke-virtual {v7, v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuListMode;->setMarkType(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    invoke-direct {v4, v6, v10, v9, v3}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter;

    invoke-direct {v3, p0, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/ContextMenuAdapter;->notifyDataSetChanged()V

    new-instance v2, Lads;

    invoke-direct {v2, p0, v5, v0}, Lads;-><init>(Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6764

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->finish()V

    return-void
.end method
