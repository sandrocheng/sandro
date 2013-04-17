.class final Laqk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

.field private synthetic b:Laqf;


# direct methods
.method constructor <init>(Laqf;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V
    .locals 0

    iput-object p1, p0, Laqk;->b:Laqf;

    iput-object p2, p0, Laqk;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Laqk;->b:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v1

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;-><init>()V

    if-nez p3, :cond_0

    iget-object v2, p0, Laqk;->b:Laqf;

    invoke-static {v2}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Laqk;->b:Laqf;

    invoke-static {v3}, Laqf;->x(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    aput-object v3, v2, v5

    iget-object v2, p0, Laqk;->b:Laqf;

    invoke-static {v2, v5}, Laqf;->d(Laqf;I)I

    iget-object v2, p0, Laqk;->b:Laqf;

    invoke-static {v2}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    aput-object v3, v2, v6

    new-instance v2, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    iget-object v3, p0, Laqk;->b:Laqf;

    invoke-static {v3}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    iget-object v4, p0, Laqk;->b:Laqf;

    invoke-static {v4}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->add(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)V

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setExcludedAreaList(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;)V

    iget-object v0, p0, Laqk;->b:Laqf;

    invoke-static {v0}, Laqf;->y(Laqf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Laqk;->b:Laqf;

    invoke-static {v3}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laqk;->b:Laqf;

    invoke-static {v3}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqk;->b:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    iget-object v0, p0, Laqk;->b:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v1, p0, Laqk;->b:Laqf;

    invoke-static {v1}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    iget-object v2, p0, Laqk;->b:Laqf;

    invoke-static {v2}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lii;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Laqk;->b:Laqf;

    invoke-virtual {v0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    const v0, 0x7f08009c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Laqk;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    return-void

    :cond_0
    iget-object v2, p0, Laqk;->b:Laqf;

    invoke-static {v2}, Laqf;->k(Laqf;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Laqk;->b:Laqf;

    invoke-static {v2}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Laqk;->b:Laqf;

    invoke-static {v3}, Laqf;->x(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    aput-object v3, v2, v5

    iget-object v2, p0, Laqk;->b:Laqf;

    invoke-static {v2, p3}, Laqf;->d(Laqf;I)I

    iget-object v2, p0, Laqk;->b:Laqf;

    invoke-static {v2}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    aput-object v3, v2, v6

    new-instance v2, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    iget-object v3, p0, Laqk;->b:Laqf;

    invoke-static {v3}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    iget-object v4, p0, Laqk;->b:Laqf;

    invoke-static {v4}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->add(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)V

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setExcludedAreaList(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;)V

    iget-object v0, p0, Laqk;->b:Laqf;

    invoke-static {v0}, Laqf;->z(Laqf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Laqk;->b:Laqf;

    invoke-static {v3}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laqk;->b:Laqf;

    invoke-static {v3}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Laqk;->b:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v2, p0, Laqk;->b:Laqf;

    invoke-static {v2}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    iget-object v3, p0, Laqk;->b:Laqf;

    invoke-static {v3}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v0, v2, v3}, Lii;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Laqk;->b:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    iget-object v0, p0, Laqk;->b:Laqf;

    invoke-virtual {v0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Laqk;->b:Laqf;

    invoke-static {v0, p3}, Laqf;->e(Laqf;I)I

    iget-object v0, p0, Laqk;->b:Laqf;

    invoke-static {v0}, Laqf;->A(Laqf;)V

    goto/16 :goto_0
.end method
