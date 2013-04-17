.class public final Laqf;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/service/OnTabResumeListener;
.implements Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
        ">;",
        "Lcom/tencent/qqpimsecure/uilib/service/OnTabResumeListener;",
        "Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:Z

.field private c:Lii;

.field private d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:[Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:[Ljava/lang/String;

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const v6, 0x7f0b0411

    const/4 v5, 0x2

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0412

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0413

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0414

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0415

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Laqf;->a:[Ljava/lang/String;

    iget-object v0, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laqf;->e:Ljava/lang/String;

    iget-object v0, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b040a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laqf;->f:Ljava/lang/String;

    iget-object v0, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b040b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laqf;->g:Ljava/lang/String;

    iget-object v0, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b041b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laqf;->i:Ljava/lang/String;

    iput v4, p0, Laqf;->m:I

    iput v4, p0, Laqf;->n:I

    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Laqf;->o:[Ljava/lang/String;

    iput v4, p0, Laqf;->p:I

    iput v4, p0, Laqf;->q:I

    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Laqf;->r:[Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Laqf;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    iget v1, p0, Laqf;->t:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    iget-object v1, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b0420

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    move v1, v2

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    add-int/lit8 v5, v1, -0x1

    aget-object v5, v0, v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_1
    array-length v1, v4

    if-ge v0, v1, :cond_4

    aget-object v1, v4, v0

    iget-object v5, p0, Laqf;->r:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v0, p0, Laqf;->q:I

    :goto_2
    if-nez v2, :cond_1

    iput v3, p0, Laqf;->q:I

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    array-length v1, v4

    if-ge v3, v1, :cond_3

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    aget-object v2, v4, v3

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    aget-object v2, v4, v3

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    iget v2, p0, Laqf;->q:I

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0421

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Laql;

    invoke-direct {v0, p0, v4, v1}, Laql;-><init>(Laqf;[Ljava/lang/String;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    return-void

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method static synthetic B(Laqf;)I
    .locals 1

    iget v0, p0, Laqf;->t:I

    return v0
.end method

.method static synthetic C(Laqf;)I
    .locals 1

    iget v0, p0, Laqf;->q:I

    return v0
.end method

.method static synthetic D(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic E(Laqf;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic F(Laqf;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method static synthetic G(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Laqf;I)I
    .locals 0

    iput p1, p0, Laqf;->s:I

    return p1
.end method

.method private a()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laqf;->h:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqf;->h:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Laqf;->h:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget-object v3, p0, Laqf;->h:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    iget-object v4, p0, Laqf;->h:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    iget-object v4, p0, Laqf;->h:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Laqf;->h:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v3, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Laqf;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Laqh;

    invoke-direct {v0, p0, v1}, Laqh;-><init>(Laqf;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Laqf;)Z
    .locals 1

    iget-boolean v0, p0, Laqf;->b:Z

    return v0
.end method

.method static synthetic b(Laqf;I)I
    .locals 0

    iput p1, p0, Laqf;->n:I

    return p1
.end method

.method static synthetic b(Laqf;)Lii;
    .locals 1

    iget-object v0, p0, Laqf;->c:Lii;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Laqf;->j:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Laqf;->d()V

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Laqf;->j:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Laqf;->j:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Laqf;->o:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v0, p0, Laqf;->m:I

    const/4 v0, 0x1

    :goto_1
    iput v1, p0, Laqf;->n:I

    if-nez v0, :cond_2

    iput v1, p0, Laqf;->m:I

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget-object v2, p0, Laqf;->j:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    iget-object v3, p0, Laqf;->j:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    iget-object v3, p0, Laqf;->j:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    iget v2, p0, Laqf;->m:I

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b041c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Laqi;

    invoke-direct {v0, p0, v1}, Laqi;-><init>(Laqf;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method static synthetic c(Laqf;I)I
    .locals 0

    iput p1, p0, Laqf;->m:I

    return p1
.end method

.method static synthetic c(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Laqf;->k:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Laqf;->d()V

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Laqf;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Laqf;->k:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Laqf;->r:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v0, p0, Laqf;->p:I

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iput v1, p0, Laqf;->p:I

    :cond_2
    iput v1, p0, Laqf;->q:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget-object v2, p0, Laqf;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    iget-object v3, p0, Laqf;->k:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    iget-object v3, p0, Laqf;->k:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    iget v2, p0, Laqf;->p:I

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b041f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Laqk;

    invoke-direct {v0, p0, v1}, Laqk;-><init>(Laqf;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d(Laqf;I)I
    .locals 0

    iput p1, p0, Laqf;->p:I

    return p1
.end method

.method private d()V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Laqf;->j:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqf;->j:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tccdb/TelNumberLocator;->getDefault(Landroid/content/Context;)Lcom/tencent/tccdb/TelNumberLocator;

    move-result-object v4

    const-string v0, ""

    invoke-virtual {v4, v0}, Lcom/tencent/tccdb/TelNumberLocator;->getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/tccdb/TelNumberLocator;->getProvinceNameList()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    move v0, v1

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Laqf;->l:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/tencent/tccdb/TelNumberLocator;->getCityNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    move v3, v1

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v8, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Laqf;->j:[Ljava/lang/String;

    move v2, v1

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v3, p0, Laqf;->j:[Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Laqf;->k:[Ljava/lang/String;

    iget-object v0, p0, Laqf;->k:[Ljava/lang/String;

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0419

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v0, 0x1

    :goto_5
    iget-object v1, p0, Laqf;->k:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Laqf;->k:[Ljava/lang/String;

    iget-object v2, p0, Laqf;->j:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v5, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method static synthetic d(Laqf;)V
    .locals 0

    invoke-direct {p0}, Laqf;->b()V

    return-void
.end method

.method static synthetic e(Laqf;I)I
    .locals 0

    iput p1, p0, Laqf;->t:I

    return p1
.end method

.method static synthetic e(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Laqf;I)I
    .locals 0

    iput p1, p0, Laqf;->q:I

    return p1
.end method

.method static synthetic f(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;
    .locals 1

    iget-object v0, p0, Laqf;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    return-object v0
.end method

.method static synthetic h(Laqf;)V
    .locals 6

    const/4 v5, 0x2

    iget-object v0, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08008e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Laqf;->c:Lii;

    iget-object v2, v2, Lii;->a:Landroid/content/SharedPreferences;

    const-string v3, "selfnum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ladn;

    invoke-direct {v2, v0}, Ladn;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0422

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0b0045

    new-instance v3, Laqm;

    invoke-direct {v3, p0, v0, v2}, Laqm;-><init>(Laqf;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v1, v3, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Laqn;

    invoke-direct {v1, v2}, Laqn;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0, v1, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic i(Laqf;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laqf;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Laqf;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Laqf;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laqf;->o:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Laqf;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laqf;->j:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Laqf;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laqf;->b:Z

    return v0
.end method

.method static synthetic p(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Laqf;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    iget v4, p0, Laqf;->s:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    iget v4, p0, Laqf;->s:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v1

    iget-object v4, p0, Laqf;->o:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Laqf;->n:I

    move v0, v3

    :goto_1
    if-nez v0, :cond_0

    iput v2, p0, Laqf;->n:I

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    iget v3, p0, Laqf;->s:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_2

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    iget v4, p0, Laqf;->s:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    iget-object v0, p0, Laqf;->l:Ljava/util/ArrayList;

    iget v4, p0, Laqf;->s:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    iget v2, p0, Laqf;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    iget-object v1, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b041d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Laqj;

    invoke-direct {v1, p0, v0}, Laqj;-><init>(Laqf;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    return-void

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method static synthetic r(Laqf;)I
    .locals 1

    iget v0, p0, Laqf;->s:I

    return v0
.end method

.method static synthetic s(Laqf;)I
    .locals 1

    iget v0, p0, Laqf;->m:I

    return v0
.end method

.method static synthetic t(Laqf;)I
    .locals 1

    iget v0, p0, Laqf;->n:I

    return v0
.end method

.method static synthetic u(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic w(Laqf;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laqf;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Laqf;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laqf;->k:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic z(Laqf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    new-instance v0, Laiz;

    iget-object v1, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Laiz;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getFooterView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 0

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 11

    const/4 v10, -0x2

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    const-class v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    iput-object v0, p0, Laqf;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move v0, v1

    :goto_0
    iget-object v2, p0, Laqf;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iget-object v3, p0, Laqf;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v3, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiz;

    iget-object v2, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v2}, Laiz;->a(Ljava/util/List;)V

    invoke-direct {p0}, Laqf;->d()V

    iget-object v0, p0, Laqf;->c:Lii;

    if-nez v0, :cond_1

    invoke-static {}, Lii;->a()Lii;

    move-result-object v0

    iput-object v0, p0, Laqf;->c:Lii;

    :cond_1
    iget-object v0, p0, Laqf;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Mode  before:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Laqf;->c:Lii;

    iget-object v0, v0, Lii;->a:Landroid/content/SharedPreferences;

    const-string v3, "auto"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setIpDialMode(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Mode  niddl :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Laqf;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Mode  after :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/String;

    iput-object v0, p0, Laqf;->h:[Ljava/lang/String;

    invoke-static {}, Lft;->d()I

    move-result v3

    invoke-static {v3}, Lfu;->a(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Laqf;->h:[Ljava/lang/String;

    aget-object v5, v0, v1

    aput-object v5, v4, v1

    iget-object v4, p0, Laqf;->h:[Ljava/lang/String;

    aget-object v0, v0, v7

    aput-object v0, v4, v7

    iget-object v0, p0, Laqf;->h:[Ljava/lang/String;

    iget-object v4, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0417

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v4

    if-ne v4, v8, :cond_6

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v5, p0, Laqf;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0019

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    :goto_1
    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqf;->c:Lii;

    iget-object v0, v0, Lii;->a:Landroid/content/SharedPreferences;

    const-string v4, "operator"

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v3, v0, :cond_4

    iget-object v0, p0, Laqf;->c:Lii;

    iget-object v0, v0, Lii;->a:Landroid/content/SharedPreferences;

    const-string v4, "operator"

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lfu;->a(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v4, p0, Laqf;->h:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setIpHeader(Ljava/lang/String;)V

    iget-object v0, p0, Laqf;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    :cond_4
    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v4, p0, Laqf;->h:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setIpHeader(Ljava/lang/String;)V

    iget-object v0, p0, Laqf;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    :cond_5
    iget-object v0, p0, Laqf;->c:Lii;

    iget-object v0, v0, Lii;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "operator"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laqf;->o:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getLocalPhoneLocation()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Laqf;->o:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getLocalPhoneLocation()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getCity()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Laqf;->o:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Laqf;->o:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Laqf;->mContext:Landroid/content/Context;

    const v4, 0x7f0b03cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getExcludedAreaList()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->toArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Laqf;->r:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->get(I)Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Laqf;->r:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->get(I)Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getCity()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    :goto_3
    iget-object v0, p0, Laqf;->r:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Laqf;->r:[Ljava/lang/String;

    aget-object v0, v0, v7

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0419

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getExcludedPhoneNumberList()Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0416

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqf;->c:Lii;

    iget-object v0, v0, Lii;->a:Landroid/content/SharedPreferences;

    const-string v2, "isfirst"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Laqf;->b:Z

    invoke-virtual {p0}, Laqf;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laqf;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_6
    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v5, p0, Laqf;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0018

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Laqf;->r:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v0, v1

    iget-object v0, p0, Laqf;->r:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v0, v7

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Laqf;->r:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laqf;->r:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laqf;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v0

    if-eq v0, v4, :cond_7

    move v0, v2

    :goto_1
    packed-switch p3, :pswitch_data_0

    :cond_2
    :goto_2
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Laqf;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Laqf;->c:Lii;

    iget-object v0, v0, Lii;->a:Landroid/content/SharedPreferences;

    const-string v4, "auto_cache"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setIpDialMode(I)V

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v4, p0, Laqf;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0018

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    :goto_3
    iget-object v0, p0, Laqf;->c:Lii;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v1

    iget-object v0, v0, Lii;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "auto"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laqf;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    invoke-virtual {p0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v4}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setIpDialMode(I)V

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0019

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto :goto_3

    :pswitch_1
    if-eqz v0, :cond_2

    new-array v3, v4, [Ljava/lang/String;

    iget-object v0, p0, Laqf;->f:Ljava/lang/String;

    aput-object v0, v3, v1

    iget-object v0, p0, Laqf;->g:Ljava/lang/String;

    aput-object v0, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "0"

    aput-object v0, v4, v1

    const-string v0, "1"

    aput-object v0, v4, v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_4
    array-length v6, v3

    if-ge v0, v6, :cond_4

    new-instance v6, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v6}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Laqf;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    :goto_5
    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v3, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    iget-object v1, p0, Laqf;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Laqg;

    invoke-direct {v1, p0, v0, v2}, Laqg;-><init>(Laqf;Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    goto/16 :goto_2

    :cond_6
    if-ne v3, v2, :cond_5

    move v1, v2

    goto :goto_5

    :pswitch_2
    if-eqz v0, :cond_2

    invoke-direct {p0}, Laqf;->a()V

    goto/16 :goto_2

    :pswitch_3
    if-eqz v0, :cond_2

    invoke-direct {p0}, Laqf;->b()V

    goto/16 :goto_2

    :pswitch_4
    if-eqz v0, :cond_2

    invoke-direct {p0}, Laqf;->c()V

    goto/16 :goto_2

    :pswitch_5
    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laqf;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/commontools/NOIPCallPhoneNumberActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final onListPreferenceChange(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    invoke-virtual {p0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laqf;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getExcludedPhoneNumberList()Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Laqf;->mDataList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laqf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0416

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final onTabResume()V
    .locals 0

    return-void
.end method

.method public final refreshListData()V
    .locals 0

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b008f

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
