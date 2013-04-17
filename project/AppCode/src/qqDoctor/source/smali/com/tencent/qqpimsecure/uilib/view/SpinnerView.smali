.class public Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;
.super Landroid/widget/TextView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultOnClickListener:Landroid/view/View$OnClickListener;

.field private mGuidText:Ljava/lang/String;

.field private mGuidTextColor:I

.field private mModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSelectChangeListener:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;

.field private mSelectedIndex:I

.field private mTitle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mTitle:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidTextColor:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mDefaultOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mTitle:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mModeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mModeList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mDateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->initGuidText()V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mOnSelectChangeListener:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;

    return-object v0
.end method

.method private initGuidText()V
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mSelectedIndex:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidTextColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidTextColor:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setTextColor(I)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f0b071b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mDateList:Ljava/util/List;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public clickView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mDefaultOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public getSelectedIndex()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mSelectedIndex:I

    return v0
.end method

.method public init(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mTitle:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mDateList:Ljava/util/List;

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mSelectedIndex:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->initGuidText()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mDefaultOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setGuidText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidText:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setGuidTextColor(I)V
    .locals 2

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidTextColor:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidTextColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mGuidTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setOnSelectChangeListener(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mOnSelectChangeListener:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;

    return-void
.end method
