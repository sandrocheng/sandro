.class public Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final KCSRRingDipX:F

.field private final KCSRRingDipY:F

.field private final KPSRRingDipX:F

.field private final KPSRRingDipY:F

.field private mCardStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

.field private mPhoneStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x4228

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->KPSRRingDipX:F

    const/high16 v0, 0x4224

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->KPSRRingDipY:F

    const/high16 v0, 0x41e4

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->KCSRRingDipX:F

    const/high16 v0, 0x423a

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->KCSRRingDipY:F

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->updateStorage()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 9

    const/4 v8, -0x2

    const/high16 v7, 0x3f00

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4228

    mul-float/2addr v0, v1

    add-float/2addr v0, v7

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4224

    mul-float/2addr v0, v1

    add-float/2addr v0, v7

    float-to-int v5, v0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    invoke-direct {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mPhoneStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mPhoneStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    const v1, 0x7f02025c

    const v2, 0x7f02025d

    const v3, 0x7f0b0228

    int-to-float v4, v4

    int-to-float v5, v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setRes(IIIFFZ)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mPhoneStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41e4

    mul-float/2addr v0, v1

    add-float/2addr v0, v7

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x423a

    mul-float/2addr v0, v1

    add-float/2addr v0, v7

    float-to-int v5, v0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    invoke-direct {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mCardStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mCardStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    const v1, 0x7f02004b

    const v2, 0x7f02004c

    const v3, 0x7f0b0229

    int-to-float v4, v4

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setRes(IIIFFZ)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mCardStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mPhoneStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->recycleBitmap()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mCardStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->recycleBitmap()V

    return-void
.end method

.method public updateStorage()V
    .locals 12

    const-wide/16 v10, 0x64

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lft$a;

    invoke-direct {v0}, Lft$a;-><init>()V

    invoke-static {v0}, Lft;->b(Lft$a;)V

    iget-wide v1, v0, Lft$a;->b:J

    cmp-long v1, v1, v8

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mPhoneStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    iget-wide v2, v0, Lft$a;->b:J

    iget-wide v4, v0, Lft$a;->a:J

    sub-long/2addr v2, v4

    mul-long/2addr v2, v10

    iget-wide v4, v0, Lft$a;->b:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-virtual {v1, v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setPercent(IZ)V

    :goto_0
    new-instance v0, Lft$a;

    invoke-direct {v0}, Lft$a;-><init>()V

    invoke-static {v0}, Lft;->a(Lft$a;)V

    iget-wide v1, v0, Lft$a;->b:J

    cmp-long v1, v1, v8

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mCardStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    iget-wide v2, v0, Lft$a;->b:J

    iget-wide v4, v0, Lft$a;->a:J

    sub-long/2addr v2, v4

    mul-long/2addr v2, v10

    iget-wide v4, v0, Lft$a;->b:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-virtual {v1, v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setPercent(IZ)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mPhoneStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    invoke-virtual {v0, v6, v6}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setPercent(IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/StorageTable;->mCardStorageRing:Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;

    invoke-virtual {v0, v6, v6}, Lcom/tencent/qqpimsecure/uilib/view/software/StorageRingView;->setPercent(IZ)V

    goto :goto_1
.end method
