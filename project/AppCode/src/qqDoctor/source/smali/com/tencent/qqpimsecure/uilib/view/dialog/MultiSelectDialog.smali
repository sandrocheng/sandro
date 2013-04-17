.class public Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;
.super Landroid/app/Dialog;


# instance fields
.field private bodyList:Landroid/widget/ListView;

.field private buttonViewGroup:Landroid/widget/LinearLayout;

.field private contentView:Landroid/view/View;

.field private contextItemPosition:I

.field private exPosition:[I

.field private mContext:Landroid/content/Context;

.field private menuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;",
            ">;"
        }
    .end annotation
.end field

.field private multiSelectDialogAdapter:Laih;

.field private negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private space_bar:Landroid/widget/LinearLayout;

.field private titleIcon:Landroid/widget/ImageView;

.field private titleLayout:Landroid/widget/LinearLayout;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0c001a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->contentView:Landroid/view/View;

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleIcon:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->contentView:Landroid/view/View;

    const v1, 0x7f080109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->contentView:Landroid/view/View;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->bodyList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->contentView:Landroid/view/View;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->contentView:Landroid/view/View;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->space_bar:Landroid/widget/LinearLayout;

    const v0, 0x7f02027f

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->setIcon(I)V

    const v0, 0x7f0b0040

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->bodyList:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->bodyList:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;)Laih;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->multiSelectDialogAdapter:Laih;

    return-object v0
.end method


# virtual methods
.method public getCheckStationArray()[Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->multiSelectDialogAdapter:Laih;

    invoke-virtual {v0}, Laih;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->multiSelectDialogAdapter:Laih;

    invoke-virtual {v0}, Laih;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->isSelected()Z

    move-result v0

    aput-boolean v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getContextItemPosition()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->contextItemPosition:I

    return v0
.end method

.method public getEXContextItemPosition()[I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->exPosition:[I

    return-object v0
.end method

.method public getItem(I)Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->menuList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    int-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->contentView:Landroid/view/View;

    invoke-super {p0, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContextItemPosition(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->contextItemPosition:I

    return-void
.end method

.method public setDataAdapter(Ljava/util/ArrayList;[Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;",
            ">;[Z)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move v1, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    aget-boolean v0, p2, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setSelected(Z)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setSelected(Z)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laih;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Laih;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->multiSelectDialogAdapter:Laih;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->bodyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->multiSelectDialogAdapter:Laih;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->bodyList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->menuList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setEXContextItemPosition(II)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->exPosition:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->exPosition:[I

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->exPosition:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->exPosition:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method

.method public setIcon(I)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;I)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, -0x2

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->space_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setNeutralButton(ILandroid/view/View$OnClickListener;I)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, -0x2

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->space_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;I)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, -0x2

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->space_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleText:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->titleText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
