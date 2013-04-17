.class public Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;
.super Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;
    }
.end annotation


# instance fields
.field private dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

.field private itemSelectIndex:I

.field private mActivity:Landroid/app/Activity;

.field private mEntries:[Ljava/lang/String;

.field private mEntryValues:[Ljava/lang/String;

.field private mIcons:[I

.field protected preferenceChangeListener:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;)Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    return-object v0
.end method

.method private showListDialog()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mIcons:[I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mIcons:[I

    array-length v0, v0

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mIcons:[I

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mIcons:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonImageId(I)V

    :cond_3
    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntryValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    :goto_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method


# virtual methods
.method public createActionBody()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public doClickEvent()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->showListDialog()V

    :cond_0
    return-void
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    if-gez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getEntryValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntryValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntryValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    if-gez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntryValues:[Ljava/lang/String;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getIcon()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mIcons:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mIcons:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mIcons:[I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getIcons()[I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mIcons:[I

    return-object v0
.end method

.method public getItemSelectIndex()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public setEntries([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;

    return-void
.end method

.method public setEntryValues([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntryValues:[Ljava/lang/String;

    return-void
.end method

.method public setIcons([I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mIcons:[I

    return-void
.end method

.method public setItemSelectIndex(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I

    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->preferenceChangeListener:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;

    return-void
.end method
