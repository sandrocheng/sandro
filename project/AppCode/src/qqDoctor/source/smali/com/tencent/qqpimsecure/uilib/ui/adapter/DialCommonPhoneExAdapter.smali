.class public Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;
.super Landroid/widget/BaseExpandableListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneChildModeHolder;,
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;,
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;
    }
.end annotation


# instance fields
.field private formChildrenList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private morePhoneNumberSB:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->formChildrenList:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->morePhoneNumberSB:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->formChildrenList:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;-><init>()V

    const v0, 0x7f08032b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->phone_name:Landroid/widget/TextView;

    const v0, 0x7f08032c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->phone_number:Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->mLayoutchild:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->mLayoutchild:Landroid/widget/LinearLayout;

    const v3, 0x7f0200d9

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->formChildrenList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->formChildrenList:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;

    iget-object v3, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->phone_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->phone_number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    move-object v1, p4

    move-object v2, v0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->formChildrenList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->formChildrenList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->formChildrenList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v2, 0x0

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300f5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;-><init>()V

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->mLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f08032e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->mInfoGroupText:Landroid/widget/TextView;

    const v0, 0x7f08032f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->mInfoGroupMoreInfoText:Landroid/widget/TextView;

    const v0, 0x7f080330

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->mInfoGroupImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p3, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->mInfoGroupImage:Landroid/widget/ImageView;

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090026

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->formChildrenList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->formChildrenList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->mInfoGroupText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->morePhoneNumberSB:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->morePhoneNumberSB:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->formChildrenList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    const/4 v1, 0x3

    if-ge v2, v1, :cond_3

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->morePhoneNumberSB:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->formChildrenList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->morePhoneNumberSB:Ljava/lang/StringBuffer;

    const-string v4, "\u3001"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;

    move-object v3, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->mInfoGroupImage:Landroid/widget/ImageView;

    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->mInfoGroupMoreInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;->morePhoneNumberSB:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
