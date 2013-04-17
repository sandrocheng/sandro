.class final Laql;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

.field private synthetic c:Laqf;


# direct methods
.method constructor <init>(Laqf;[Ljava/lang/String;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V
    .locals 0

    iput-object p1, p0, Laql;->c:Laqf;

    iput-object p2, p0, Laql;->a:[Ljava/lang/String;

    iput-object p3, p0, Laql;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Laql;->c:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v1

    new-instance v2, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;-><init>()V

    iget-object v0, p0, Laql;->c:Laqf;

    invoke-static {v0}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Laql;->c:Laqf;

    invoke-static {v3}, Laqf;->x(Laqf;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Laql;->c:Laqf;

    invoke-static {v4}, Laqf;->B(Laqf;)I

    move-result v4

    aget-object v3, v3, v4

    aput-object v3, v0, v6

    iget-object v0, p0, Laql;->c:Laqf;

    invoke-static {v0, p3}, Laqf;->f(Laqf;I)I

    iget-object v0, p0, Laql;->c:Laqf;

    iget-object v3, p0, Laql;->c:Laqf;

    invoke-static {v3}, Laqf;->B(Laqf;)I

    move-result v3

    invoke-static {v0, v3}, Laqf;->d(Laqf;I)I

    iget-object v0, p0, Laql;->c:Laqf;

    invoke-static {v0}, Laqf;->C(Laqf;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laql;->c:Laqf;

    invoke-static {v0}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    aput-object v3, v0, v5

    :goto_0
    iget-object v0, p0, Laql;->c:Laqf;

    invoke-static {v0}, Laqf;->D(Laqf;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Laql;->c:Laqf;

    invoke-static {v4}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laql;->c:Laqf;

    invoke-static {v4}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    iget-object v3, p0, Laql;->c:Laqf;

    invoke-static {v3}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    iget-object v4, p0, Laql;->c:Laqf;

    invoke-static {v4}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-direct {v0, v3, v4}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->add(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)V

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->setExcludedAreaList(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;)V

    iget-object v0, p0, Laql;->c:Laqf;

    invoke-static {v0}, Laqf;->b(Laqf;)Lii;

    move-result-object v0

    iget-object v2, p0, Laql;->c:Laqf;

    invoke-static {v2}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    iget-object v3, p0, Laql;->c:Laqf;

    invoke-static {v3}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v0, v2, v3}, Lii;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Laql;->c:Laqf;

    invoke-static {v0}, Laqf;->g(Laqf;)Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    iget-object v0, p0, Laql;->c:Laqf;

    invoke-virtual {v0}, Laqf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const v0, 0x7f08009c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Laql;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Laql;->c:Laqf;

    invoke-static {v0}, Laqf;->w(Laqf;)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Laql;->a:[Ljava/lang/String;

    iget-object v4, p0, Laql;->c:Laqf;

    invoke-static {v4}, Laqf;->C(Laqf;)I

    move-result v4

    aget-object v3, v3, v4

    aput-object v3, v0, v5

    goto/16 :goto_0
.end method
