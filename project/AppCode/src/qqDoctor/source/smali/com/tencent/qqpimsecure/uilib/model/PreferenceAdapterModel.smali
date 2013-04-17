.class public Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;
.super Ljava/lang/Object;


# instance fields
.field private buttonText:Ljava/lang/String;

.field private canExpand:Z

.field private checkBoxType:I

.field private entries:[Ljava/lang/String;

.field private entryValues:[Ljava/lang/String;

.field private icons:[I

.field private isChecked:Z

.field private isClickCheckBox:Z

.field private isEnabled:Z

.field private isExpand:Z

.field private isOnCheckedNoClick:Z

.field private isShowLine:Z

.field private key:Ljava/lang/String;

.field private mTagKey:B

.field private preferenceViewType:B

.field private selectItemIndex:I

.field private summary:Ljava/lang/String;

.field private titlBG_ID:I

.field private title:Ljava/lang/String;

.field private titleIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isEnabled:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->canExpand:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->checkBoxType:I

    return-void
.end method


# virtual methods
.method public canExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->canExpand:Z

    return v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckBoxType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->checkBoxType:I

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->entries:[Ljava/lang/String;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->entries:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->selectItemIndex:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->entries:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->selectItemIndex:I

    if-gez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->entries:[Ljava/lang/String;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->selectItemIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getEntryValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->entryValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->selectItemIndex:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->entryValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->selectItemIndex:I

    if-gez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->entryValues:[Ljava/lang/String;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->selectItemIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->entryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->icons:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->selectItemIndex:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->icons:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->selectItemIndex:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->icons:[I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->selectItemIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getIcons()[I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->icons:[I

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceViewType()B
    .locals 1

    iget-byte v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->preferenceViewType:B

    return v0
.end method

.method public getSelectItemIndex()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->selectItemIndex:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTagKey()B
    .locals 1

    iget-byte v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->mTagKey:B

    return v0
.end method

.method public getTitlBG_ID()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->titlBG_ID:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->titleIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked:Z

    return v0
.end method

.method public isClickCheckBox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isClickCheckBox:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isEnabled:Z

    return v0
.end method

.method public isExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isExpand:Z

    return v0
.end method

.method public isOnCheckedNoClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isOnCheckedNoClick:Z

    return v0
.end method

.method public isShowLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isShowLine:Z

    return v0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->buttonText:Ljava/lang/String;

    return-void
.end method

.method public setCanExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->canExpand:Z

    return-void
.end method

.method public setCheckBoxType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->checkBoxType:I

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked:Z

    return-void
.end method

.method public setClickCheckBox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isClickCheckBox:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isEnabled:Z

    return-void
.end method

.method public setEntries([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->entries:[Ljava/lang/String;

    return-void
.end method

.method public setEntryValues([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->entryValues:[Ljava/lang/String;

    return-void
.end method

.method public setIcons([I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->icons:[I

    return-void
.end method

.method public setIsExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isExpand:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->key:Ljava/lang/String;

    return-void
.end method

.method public setOnCheckedNoClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isOnCheckedNoClick:Z

    return-void
.end method

.method public setPreferenceViewType(B)V
    .locals 0

    iput-byte p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->preferenceViewType:B

    return-void
.end method

.method public setSelectItemIndex(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->selectItemIndex:I

    return-void
.end method

.method public setShowLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isShowLine:Z

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTagKey(B)V
    .locals 0

    iput-byte p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->mTagKey:B

    return-void
.end method

.method public setTitlBG_ID(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->titlBG_ID:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->titleIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
